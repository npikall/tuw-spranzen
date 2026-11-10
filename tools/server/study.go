package main

import (
	"bytes"
	"fmt"
	"html/template"
	"io"
	"strings"

	"golang.org/x/net/html"
	"golang.org/x/net/html/atom"
)

// Question is one question/answer pair extracted from typst's HTML export.
type Question struct {
	ID        string // stable key for saved progress: "<group>#<index in group>"
	Group     string // heading path, e.g. "Prüfung 2023 › Aufgabe 1", "" if none
	Num       int    // 1-based position in the whole study
	N         string // frequency from #nquestion(n: ...), "" if not set
	Q, A      template.HTML
	HasAnswer bool
}

// Study is the content of one compiled study.typ.
type Study struct {
	Title     string
	Style     template.CSS // typst's own <style> (MathML rules)
	Groups    []string     // headings in order of appearance ("" first if questions precede any heading)
	Questions []Question
}

// ParseStudy reads typst HTML output and keeps only headings, question
// sections (<section class="q">) and answer divs (<div class="a">).
// Everything else is dropped and reported as a warning.
func ParseStudy(r io.Reader) (Study, []string, error) {
	doc, err := html.Parse(r)
	if err != nil {
		return Study{}, nil, err
	}
	var s Study
	var body *html.Node
	var warnings []string

	for n := range doc.Descendants() {
		if n.Type != html.ElementNode {
			continue
		}
		switch n.DataAtom {
		case atom.Title:
			if s.Title == "" {
				s.Title = textContent(n)
			}
		case atom.Style:
			s.Style += template.CSS(textContent(n))
		case atom.Body:
			body = n
		}
	}
	if body == nil {
		return s, nil, fmt.Errorf("no <body> in typst output")
	}

	group := ""
	var headings []string // heading path by level: headings[0] is the outermost seen heading
	var levels []int
	perGroup := map[string]int{} // question count per heading text; repeated headings keep counting
	answerable := false          // last element was a question still waiting for its answer

	for n := range body.ChildNodes() {
		switch {
		case n.Type == html.TextNode && strings.TrimSpace(n.Data) == "":
			continue
		case isHeading(n):
			level := int(n.Data[1] - '0')
			for len(levels) > 0 && levels[len(levels)-1] >= level {
				levels, headings = levels[:len(levels)-1], headings[:len(headings)-1]
			}
			levels = append(levels, level)
			headings = append(headings, strings.TrimSpace(textContent(n)))
			group = strings.Join(headings, " › ")
			answerable = false
		case n.Type == html.ElementNode && n.DataAtom == atom.Section && hasClass(n, "q"):
			if _, seen := perGroup[group]; !seen {
				s.Groups = append(s.Groups, group)
			}
			perGroup[group]++
			s.Questions = append(s.Questions, Question{
				ID:    fmt.Sprintf("%s#%d", group, perGroup[group]),
				Group: group,
				Num:   len(s.Questions) + 1,
				N:     attr(n, "data-n"),
				Q:     innerHTML(n),
			})
			answerable = true
		case n.Type == html.ElementNode && n.DataAtom == atom.Div && hasClass(n, "a") && answerable:
			q := &s.Questions[len(s.Questions)-1]
			q.A, q.HasAnswer = innerHTML(n), true
			answerable = false
		default:
			warnings = append(warnings, fmt.Sprintf("ignored %s after question %d", describe(n), len(s.Questions)))
			answerable = false
		}
	}
	return s, warnings, nil
}

func isHeading(n *html.Node) bool {
	if n.Type != html.ElementNode {
		return false
	}
	switch n.DataAtom {
	case atom.H1, atom.H2, atom.H3, atom.H4, atom.H5, atom.H6:
		return true
	}
	return false
}

func hasClass(n *html.Node, class string) bool {
	for _, c := range strings.Fields(attr(n, "class")) {
		if c == class {
			return true
		}
	}
	return false
}

func attr(n *html.Node, key string) string {
	for _, a := range n.Attr {
		if a.Key == key {
			return a.Val
		}
	}
	return ""
}

func textContent(n *html.Node) string {
	var b strings.Builder
	for d := range n.Descendants() {
		if d.Type == html.TextNode {
			b.WriteString(d.Data)
		}
	}
	return b.String()
}

func innerHTML(n *html.Node) template.HTML {
	var b bytes.Buffer
	for c := range n.ChildNodes() {
		html.Render(&b, c)
	}
	// Trusted: produced by the local typst compiler from the user's own files.
	return template.HTML(b.String())
}

func describe(n *html.Node) string {
	switch n.Type {
	case html.ElementNode:
		return "<" + n.Data + ">"
	case html.TextNode:
		t := strings.TrimSpace(n.Data)
		if r := []rune(t); len(r) > 30 {
			t = string(r[:30]) + "…"
		}
		return fmt.Sprintf("text %q", t)
	}
	return "node"
}
