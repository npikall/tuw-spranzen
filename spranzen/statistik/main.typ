// Packages
#import "@preview/cetz:0.3.2"
#import "@preview/rubber-article:0.3.0": *

// Formatting the document
#show: article.with(
  eq-numbering:"(1.1)",
  eq-chapterwise:true,
  show-header:true,
  alternating-header:true,
  header-titel: [Statistik für UIW],
)


#maketitle(
  title:"Statistik für Umweltingenieurwesen",
  authors:("npikall",),
  date: datetime.today().display("[day].[month].[year]")
)

// settings for plotting with cetz
#show figure.where(kind: "plot"): set figure(supplement: "Grafik")

// Placeholder for content that still needs to be added
#show lorem(50): it => text(fill:red, strong(it))

#outline()
#pagebreak()

#include "sections/rand-var.typ"
#include "sections/estimate.typ"
#include "sections/hypothesis-test.typ"
#include "sections/multivar.typ"
#include "sections/non-param.typ"
#include "sections/exp-design.typ"