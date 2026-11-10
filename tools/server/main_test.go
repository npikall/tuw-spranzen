package main

import (
	"context"
	"net/http"
	"net/http/httptest"
	"path/filepath"
	"strings"
	"testing"
)

func newTestServer(t *testing.T, run func(context.Context, ...string) ([]byte, error)) http.Handler {
	t.Helper()
	root := t.TempDir()
	writeFile(t, filepath.Join(root, "spranzen/demo/study.typ"), `#set document(title: "Demo")`)
	c := NewCompiler(root, "typst")
	c.run = run
	return (&server{root: root, compiler: c}).routes()
}

func get(h http.Handler, path string) *httptest.ResponseRecorder {
	rec := httptest.NewRecorder()
	h.ServeHTTP(rec, httptest.NewRequest("GET", path, nil))
	return rec
}

func TestRoutes(t *testing.T) {
	h := newTestServer(t, func(context.Context, ...string) ([]byte, error) {
		return []byte(`<html><head><title>Demo</title></head><body><h2>A</h2>` +
			`<section class="q" data-n="3">Frage eins</section><div class="a">Antwort eins</div></body></html>`), nil
	})

	if rec := get(h, "/"); rec.Code != 200 || !strings.Contains(rec.Body.String(), `href="/s/demo"`) {
		t.Errorf("index: %d %s", rec.Code, rec.Body)
	}
	rec := get(h, "/s/demo")
	for _, want := range []string{"Frage eins", "Antwort eins", `data-n="3"`, `data-id="A#1"`, "/static/app.js"} {
		if !strings.Contains(rec.Body.String(), want) {
			t.Errorf("study page missing %q", want)
		}
	}
	if rec := get(h, "/s/nope"); rec.Code != 404 {
		t.Errorf("unknown subject: %d", rec.Code)
	}
	if rec := get(h, "/static/app.js"); rec.Code != 200 {
		t.Errorf("static: %d", rec.Code)
	}
}

func TestCompileErrorShown(t *testing.T) {
	h := newTestServer(t, func(context.Context, ...string) ([]byte, error) {
		return nil, &CompileError{Output: "error: unknown variable: foo"}
	})
	rec := get(h, "/s/demo")
	if rec.Code != 500 || !strings.Contains(rec.Body.String(), "unknown variable: foo") {
		t.Errorf("got %d %s", rec.Code, rec.Body)
	}
}

func TestLocalOnly(t *testing.T) {
	h := localOnly(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {}))
	for host, want := range map[string]int{
		"127.0.0.1:8080": 200, "localhost:8080": 200, "[::1]:8080": 200,
		"evil.example:8080": 403, "192.168.1.5:8080": 403,
	} {
		req := httptest.NewRequest("GET", "/", nil)
		req.Host = host
		rec := httptest.NewRecorder()
		h.ServeHTTP(rec, req)
		if rec.Code != want {
			t.Errorf("host %s: got %d, want %d", host, rec.Code, want)
		}
	}
}
