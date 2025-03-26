#import "@preview/rubber-article:0.3.0": *
#import "common.typ":*
// Formatting the document
#show: article.with(
  eq-numbering: "(1.1)",
  eq-chapterwise: true,
  show-header: true,
  alternating-header: true,
  header-titel: [Statistik für UIW],
)

#show: codly-init.with()
#codly(languages: codly-languages)

#maketitle(
  title: "Statistik für Umweltingenieurwesen",
  authors: ("np",),
  date: datetime.today().display("[day].[month].[year]"),
)

// settings for plotting with cetz
#show figure.where(kind: "plot"): set figure(supplement: "Grafik")

// Placeholder for content that still needs to be added
#show lorem(50): it => text(fill: red, strong(it))

#outline()
#pagebreak()

#include "sections/rand-var.typ"
#include "sections/estimate.typ"
#include "sections/hypothesis-test.typ"
#include "sections/multivar.typ"
#include "sections/non-param.typ"
#include "sections/exp-design.typ"

#import "@preview/tiaoma:0.3.0"
#align(center, rect(width: 60%)[
  #show link: set text(font: "Ubuntu Mono")
  If you want to see the source code of this document or want to contribute or raise an issue, you can find it on GitHub:
  #tiaoma.qrcode("https://github.com/npikall/tuw-spranzen")
  #link("https://github.com/npikall/tuw-spranzen")
])
