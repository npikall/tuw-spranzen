#import "@preview/rubber-article:0.3.1":*

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

#let colors = (aqua.lighten(20%), green.lighten(20%), orange.lighten(20%))
#let missing = {
  set text(fill: red)
  lorem(50)
}

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

#import "@preview/tiaoma:0.3.0"
#align(center, rect(width: 60%)[
  #show link: set text(font: "Ubuntu Mono")
  If you want to see the source code of this document or want to contribute or raise an issue, you can find it on GitHub:
  #tiaoma.qrcode("https://github.com/npikall/tuw-spranzen")
  #link("https://github.com/npikall/tuw-spranzen")
])
