package main

import (
	"bytes"
	"context"
	"fmt"
	"io/fs"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"sort"
	"sync"
	"time"
)

// Subject is one spranze that has a study.typ entry file.
type Subject struct {
	Slug  string // directory name under spranzen/
	Title string
	Path  string // absolute path to study.typ
}

var titleRe = regexp.MustCompile(`title:\s*"([^"]+)"`)

// Discover finds every spranzen/*/study.typ below root.
func Discover(root string) ([]Subject, error) {
	paths, err := filepath.Glob(filepath.Join(root, "spranzen", "*", "study.typ"))
	if err != nil {
		return nil, err
	}
	sort.Strings(paths)
	subjects := make([]Subject, 0, len(paths))
	for _, p := range paths {
		slug := filepath.Base(filepath.Dir(p))
		title := slug
		if src, err := os.ReadFile(p); err == nil {
			if m := titleRe.FindSubmatch(src); m != nil {
				title = string(m[1])
			}
		}
		subjects = append(subjects, Subject{Slug: slug, Title: title, Path: p})
	}
	return subjects, nil
}

// Compiler turns a study.typ into a Study by calling typst, caching the result
// until any .typ file in the subject directory or in packages/ changes.
type Compiler struct {
	root  string
	typst string
	run   func(ctx context.Context, args ...string) ([]byte, error)

	mu    sync.Mutex
	cache map[string]cached
}

type cached struct {
	stamp time.Time
	study Study
}

func NewCompiler(root, typst string) *Compiler {
	c := &Compiler{root: root, typst: typst, cache: map[string]cached{}}
	c.run = c.runTypst
	return c
}

// CompileError carries typst's diagnostics so they can be shown in the browser.
type CompileError struct{ Output string }

func (e *CompileError) Error() string { return "typst compile failed:\n" + e.Output }

func (c *Compiler) runTypst(ctx context.Context, args ...string) ([]byte, error) {
	cmd := exec.CommandContext(ctx, c.typst, args...)
	var stdout, stderr bytes.Buffer
	cmd.Stdout, cmd.Stderr = &stdout, &stderr
	if err := cmd.Run(); err != nil {
		return nil, &CompileError{Output: stderr.String() + "\n" + err.Error()}
	}
	return stdout.Bytes(), nil
}

func (c *Compiler) Study(ctx context.Context, s Subject) (Study, error) {
	c.mu.Lock()
	defer c.mu.Unlock()

	stamp, err := latestTypMtime(filepath.Dir(s.Path), filepath.Join(c.root, "packages"))
	if err != nil {
		return Study{}, err
	}
	if hit, ok := c.cache[s.Slug]; ok && stamp.Equal(hit.stamp) {
		return hit.study, nil
	}

	start := time.Now()
	out, err := c.run(ctx, "compile", "--features", "html", "--format", "html",
		"--root", c.root, s.Path, "-")
	if err != nil {
		return Study{}, err
	}
	study, warnings, err := ParseStudy(bytes.NewReader(out))
	if err != nil {
		return Study{}, fmt.Errorf("parse typst output: %w", err)
	}
	log.Printf("compiled %s: %d questions in %s", s.Slug, len(study.Questions), time.Since(start).Round(time.Millisecond))
	if len(warnings) > 0 {
		log.Printf("%s: %d non-Q/A elements ignored:", s.Slug, len(warnings))
		for _, w := range warnings {
			log.Printf("  %s", w)
		}
	}
	c.cache[s.Slug] = cached{stamp: stamp, study: study}
	return study, nil
}

func latestTypMtime(dirs ...string) (time.Time, error) {
	var latest time.Time
	for _, dir := range dirs {
		err := filepath.WalkDir(dir, func(path string, d fs.DirEntry, err error) error {
			if err != nil {
				if os.IsNotExist(err) {
					return nil
				}
				return err
			}
			if d.IsDir() || filepath.Ext(path) != ".typ" {
				return nil
			}
			info, err := d.Info()
			if err != nil {
				return err
			}
			if info.ModTime().After(latest) {
				latest = info.ModTime()
			}
			return nil
		})
		if err != nil {
			return latest, err
		}
	}
	return latest, nil
}
