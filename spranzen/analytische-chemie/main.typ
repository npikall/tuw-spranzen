#import "@preview/rubber-article:0.3.1":*
#import "common.typ": github-link

#show: article.with(
  eq-numbering: "(1.1)",
  eq-chapterwise: true,
  show-header: true,
  header-titel: "Analytische Chemie",
)
#maketitle(
  title: "Analytische Chemie",
  authors: ("np",),
  date: datetime.today().display("[day].[month].[year]"),
)

#outline()
#pagebreak()

#include "sections/einleitung.typ"
#include "sections/titrimetrie.typ"
#include "sections/thermo.typ"
#include "sections/elektro-chem.typ"
#include "sections/trennverfahren.typ"
// #include "sections/optische-methoden.typ"

#pagebreak()
#show: appendix.with(
  title: "Anhang",
  title-size: 20pt,
)
#include "sections/altfragen.typ"

#github-link
