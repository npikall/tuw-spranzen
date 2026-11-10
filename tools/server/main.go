// Command server is a local-only study app for the spranzen.
//
// It discovers every spranzen/<fach>/study.typ, compiles it with typst's HTML
// export on request and serves the extracted question/answer pairs as an
// interactive flashcard / list app.
package main

import (
	"embed"
	"errors"
	"flag"
	"fmt"
	"html/template"
	"io/fs"
	"log"
	"net"
	"net/http"
	"net/url"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
)

//go:embed web
var webFS embed.FS

var templates = template.Must(template.ParseFS(webFS, "web/*.html"))

func main() {
	root := flag.String("root", "", "repository root (default: search upwards from the working directory)")
	addr := flag.String("addr", "127.0.0.1:8080", "listen address")
	typst := flag.String("typst", "typst", "typst binary")
	noOpen := flag.Bool("no-open", false, "do not open the browser")
	flag.Usage = func() {
		fmt.Fprintf(flag.CommandLine.Output(), "usage: server [flags] [fach]\n\n")
		flag.PrintDefaults()
	}
	flag.Parse()

	if *root == "" {
		r, err := findRoot()
		if err != nil {
			log.Fatal(err)
		}
		*root = r
	}
	abs, err := filepath.Abs(*root)
	if err != nil {
		log.Fatal(err)
	}

	srv := &server{root: abs, compiler: NewCompiler(abs, *typst)}
	target := "http://" + *addr + "/"
	if fach := flag.Arg(0); fach != "" {
		target += "s/" + url.PathEscape(fach)
	}

	ln, err := net.Listen("tcp", *addr)
	if err != nil {
		log.Fatal(err)
	}
	log.Printf("serving %s on %s", abs, target)
	if !*noOpen {
		openBrowser(target)
	}
	log.Fatal(http.Serve(ln, localOnly(srv.routes())))
}

type server struct {
	root     string
	compiler *Compiler
}

func (s *server) routes() http.Handler {
	mux := http.NewServeMux()
	static, _ := fs.Sub(webFS, "web")
	mux.Handle("GET /static/", http.StripPrefix("/static/", http.FileServerFS(static)))
	mux.HandleFunc("GET /{$}", s.handleIndex)
	mux.HandleFunc("GET /s/{fach}", s.handleStudy)
	return mux
}

func (s *server) handleIndex(w http.ResponseWriter, r *http.Request) {
	subjects, err := Discover(s.root)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	render(w, http.StatusOK, "index.html", map[string]any{"Subjects": subjects})
}

func (s *server) handleStudy(w http.ResponseWriter, r *http.Request) {
	slug := r.PathValue("fach")
	subjects, err := Discover(s.root)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	var subject *Subject
	for i := range subjects {
		if subjects[i].Slug == slug {
			subject = &subjects[i]
		}
	}
	if subject == nil {
		http.Error(w, fmt.Sprintf("no spranzen/%s/study.typ", slug), http.StatusNotFound)
		return
	}

	study, err := s.compiler.Study(r.Context(), *subject)
	if err != nil {
		var ce *CompileError
		output := err.Error()
		if errors.As(err, &ce) {
			output = ce.Output
		}
		log.Printf("%s: %v", slug, err)
		render(w, http.StatusInternalServerError, "error.html", map[string]any{"Subject": subject, "Output": output})
		return
	}
	render(w, http.StatusOK, "app.html", map[string]any{"Subject": subject, "Study": study})
}

func render(w http.ResponseWriter, status int, name string, data any) {
	w.Header().Set("Content-Type", "text/html; charset=utf-8")
	w.WriteHeader(status)
	if err := templates.ExecuteTemplate(w, name, data); err != nil {
		log.Printf("render %s: %v", name, err)
	}
}

// localOnly rejects requests whose Host is not a loopback name, so a malicious
// website cannot read the notes through DNS rebinding.
func localOnly(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		host, _, err := net.SplitHostPort(r.Host)
		if err != nil {
			host = r.Host
		}
		if ip := net.ParseIP(host); host != "localhost" && (ip == nil || !ip.IsLoopback()) {
			http.Error(w, "forbidden host", http.StatusForbidden)
			return
		}
		next.ServeHTTP(w, r)
	})
}

// findRoot walks up from the working directory to the directory holding spranzen/.
func findRoot() (string, error) {
	dir, err := os.Getwd()
	if err != nil {
		return "", err
	}
	for {
		if info, err := os.Stat(filepath.Join(dir, "spranzen")); err == nil && info.IsDir() {
			return dir, nil
		}
		parent := filepath.Dir(dir)
		if parent == dir {
			return "", errors.New("could not find repository root (directory containing spranzen/); use -root")
		}
		dir = parent
	}
}

func openBrowser(target string) {
	var cmd string
	switch runtime.GOOS {
	case "darwin":
		cmd = "open"
	case "windows":
		cmd = "explorer"
	default:
		cmd = "xdg-open"
	}
	if err := exec.Command(cmd, target).Start(); err != nil {
		log.Printf("could not open browser: %v", err)
	}
}
