#import "@preview/rubber-article:0.4.0":*
#import "common.typ":*

#show:article.with(
  header-display: true,
  header-title: "Umweltmikrobiologie",
  eq-numbering: "(1.1)",
  eq-chapterwise: false,
)

#maketitle(
  title: "Umweltmikrobiologie",
  authors: ("np",),
  date: datetime.today().display("[day].[month].[year]"),
)

#show heading.where(level: 4): set heading(outlined: false, numbering: none)

#outline()

// Automatic pagebreaks for each chapter
#show heading.where(level: 1): it => {
  pagebreak()
  it
}
#set table.hline(stroke: 0.7pt)
#show table.cell.where(y: 0): strong
#show figure.where(kind: table): it => {
  block(width: 80%, it)
}

#include "sections/CH1.typ"
#include "sections/CH2_Gesundheit.typ"
#include "sections/CH3_Methoden.typ"
#include "sections/CH4_Diver.typ"
#include "sections/CH5_Nährstoffkreisl.typ"
#include "sections/CH6_Kometabolismus.typ"
#include "sections/CH7_Anwendungbeispiele.typ"
#include "sections/Altfragen.typ"
#pagebreak(weak: true)
#include "sections/FAQ.typ"
#github-link
