#import "@preview/rubber-article:0.3.1":*
#import "common.typ":*

#show:article.with(
  show-header: true,
  header-titel: "Umweltmikrobiologie",
  eq-numbering: "(1.1)",
  eq-chapterwise: false,
)

#maketitle(
  title: "Umweltmikrobiologie",
  authors: ("np",),
  date: datetime.today().display("[day].[month].[year]"),
)
// #v(2.5cm)
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
