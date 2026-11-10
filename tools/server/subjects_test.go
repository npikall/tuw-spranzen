package main

import (
	"context"
	"os"
	"path/filepath"
	"testing"
	"time"
)

func writeFile(t *testing.T, path, content string) {
	t.Helper()
	if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(path, []byte(content), 0o644); err != nil {
		t.Fatal(err)
	}
}

func TestDiscover(t *testing.T) {
	root := t.TempDir()
	writeFile(t, filepath.Join(root, "spranzen/physik-1/study.typ"), `#set document(title: "Physik 1")`)
	writeFile(t, filepath.Join(root, "spranzen/umgebungslärm/study.typ"), `// no title`)
	writeFile(t, filepath.Join(root, "spranzen/mathe-2/main.typ"), ``)

	subjects, err := Discover(root)
	if err != nil {
		t.Fatal(err)
	}
	if len(subjects) != 2 {
		t.Fatalf("got %+v", subjects)
	}
	if subjects[0].Slug != "physik-1" || subjects[0].Title != "Physik 1" {
		t.Errorf("first = %+v", subjects[0])
	}
	if subjects[1].Slug != "umgebungslärm" || subjects[1].Title != "umgebungslärm" {
		t.Errorf("second = %+v", subjects[1])
	}
}

func TestCompilerCachesUntilSourceChanges(t *testing.T) {
	root := t.TempDir()
	study := filepath.Join(root, "spranzen/x/study.typ")
	section := filepath.Join(root, "spranzen/x/sections/a.typ")
	writeFile(t, study, `#include "sections/a.typ"`)
	writeFile(t, section, `#question[Q]`)
	old := time.Now().Add(-time.Hour)
	os.Chtimes(study, old, old)
	os.Chtimes(section, old, old)

	calls := 0
	c := NewCompiler(root, "typst")
	c.run = func(ctx context.Context, args ...string) ([]byte, error) {
		calls++
		return []byte(`<html><body><section class="q">Q</section></body></html>`), nil
	}
	subj := Subject{Slug: "x", Path: study}

	for range 2 {
		s, err := c.Study(context.Background(), subj)
		if err != nil {
			t.Fatal(err)
		}
		if len(s.Questions) != 1 {
			t.Fatalf("got %+v", s)
		}
	}
	if calls != 1 {
		t.Errorf("compiled %d times, want 1 (cached)", calls)
	}

	os.Chtimes(section, time.Now(), time.Now())
	if _, err := c.Study(context.Background(), subj); err != nil {
		t.Fatal(err)
	}
	if calls != 2 {
		t.Errorf("compiled %d times after edit, want 2", calls)
	}
}
