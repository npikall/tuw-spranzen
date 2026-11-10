# Study server

Local-only web app for studying the Altfragen of a spranze.

```sh
just study              # overview of all subjects
just study umgebungslärm
```

Listens on `127.0.0.1:8080`, opens the browser, compiles on request with
`typst compile --features html` and recompiles only when a `.typ` file in the
subject folder or in `packages/` changed. Typst errors are shown in the browser.

## `study.typ`

The server picks up every `spranzen/<fach>/study.typ`:

```typ
#set document(title: "Umgebungslärm")

#include "sections/pruefung-2023-05-10.typ"
#include "sections/fragenkatalog.typ"
```

- Included files contain headings and `#question[...]` / `#nquestion(n: ...)[...]`
  blocks, each optionally followed by an `#answer[...]`.
- Questions are grouped by their heading path, e.g.
  "Prüfung vom 10. Mai 2023 › Aufgabe 1: Messtechnik (12 Punkte)".
- Text meant only for the PDF (exam intro, grading scale) goes in
  `#pdf-only[...]`. Anything else outside Q/A blocks is dropped and listed as a
  warning in the server log.
- Context a question needs (lead-in text, figures, tables) belongs inside the
  `#question[...]`.
- References (`@label`) to sections not included in `study.typ` fail to compile.

Progress (ratings) is kept in the browser's localStorage per subject, keyed by
heading + position, so inserting a question shifts later ratings.
