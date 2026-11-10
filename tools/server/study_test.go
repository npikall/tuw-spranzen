package main

import (
	"strings"
	"testing"
)

const sampleHTML = `<!DOCTYPE html><html><head><title>Test</title><style>mfrac { margin: 0 }</style></head><body>` +
	`<section class="q">Lonely before heading</section>` +
	`<h2>Exam A</h2>` +
	`<section class="q">What is <math><mi>x</mi></math>?</section><div class="a"><strong>2x</strong></div>` +
	`<section class="q" data-n=">5">Freq</section><div class="a">yes</div>` +
	`<p>stray paragraph</p>` +
	`<h2>Exam B</h2>` +
	`<section class="q">No answer</section>` +
	`<div class="a">orphan?</div><div class="a">double answer</div>` +
	`</body></html>`

func TestParseStudy(t *testing.T) {
	s, warnings, err := ParseStudy(strings.NewReader(sampleHTML))
	if err != nil {
		t.Fatal(err)
	}
	if s.Title != "Test" {
		t.Errorf("title = %q", s.Title)
	}
	if !strings.Contains(string(s.Style), "mfrac") {
		t.Errorf("style not kept: %q", s.Style)
	}
	if got, want := strings.Join(s.Groups, "|"), "|Exam A|Exam B"; got != want {
		t.Errorf("groups = %q, want %q", got, want)
	}
	if len(s.Questions) != 4 {
		t.Fatalf("got %d questions, want 4", len(s.Questions))
	}

	q := s.Questions[1]
	if q.Group != "Exam A" || q.Num != 2 || q.ID != "Exam A#1" {
		t.Errorf("question meta = %+v", q)
	}
	if !strings.Contains(string(q.Q), "<math>") || !strings.Contains(string(q.A), "<strong>2x</strong>") {
		t.Errorf("question html = %q / %q", q.Q, q.A)
	}
	if !q.HasAnswer {
		t.Error("expected answer")
	}
	if s.Questions[2].N != ">5" {
		t.Errorf("n = %q", s.Questions[2].N)
	}
	if s.Questions[0].Group != "" {
		t.Errorf("question before first heading should have empty group, got %q", s.Questions[0].Group)
	}
	last := s.Questions[3]
	if last.ID != "Exam B#1" || !last.HasAnswer || !strings.Contains(string(last.A), "orphan?") {
		t.Errorf("last = %+v", last)
	}

	// stray <p> and the second answer are ignored and reported
	if len(warnings) != 2 {
		t.Errorf("warnings = %q", warnings)
	}
}

func TestParseStudyEmptyAnswerless(t *testing.T) {
	s, _, err := ParseStudy(strings.NewReader(`<html><body><section class="q">Q</section></body></html>`))
	if err != nil {
		t.Fatal(err)
	}
	if len(s.Questions) != 1 || s.Questions[0].HasAnswer {
		t.Errorf("got %+v", s.Questions)
	}
}

func TestParseStudyRepeatedHeadingKeepsIDsUnique(t *testing.T) {
	s, _, _ := ParseStudy(strings.NewReader(`<html><body><h2>A</h2><section class="q">1</section>` +
		`<h2>B</h2><section class="q">2</section><h2>A</h2><section class="q">3</section></body></html>`))
	if s.Questions[2].ID != "A#2" || len(s.Groups) != 2 {
		t.Errorf("ids/groups = %q / %q", s.Questions[2].ID, s.Groups)
	}
}

func TestParseStudyGroupsByHeadingPath(t *testing.T) {
	s, _, _ := ParseStudy(strings.NewReader(`<html><body>` +
		`<h2>Exam 1</h2><h3>Task 1</h3><section class="q">a</section>` +
		`<h2>Exam 2</h2><h3>Task 1</h3><section class="q">b</section>` +
		`<h2>Katalog</h2><section class="q">c</section></body></html>`))
	got := strings.Join(s.Groups, "|")
	if want := "Exam 1 › Task 1|Exam 2 › Task 1|Katalog"; got != want {
		t.Errorf("groups = %q, want %q", got, want)
	}
}
