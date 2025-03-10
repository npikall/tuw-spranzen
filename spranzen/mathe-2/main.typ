#import "@preview/rubber-article:0.3.1": *
#import "common.typ": *

#show: article.with(
  show-header: true,
  header-titel: "Mathe 2",
)

#maketitle(
        title: "Mathe 2",
        authors: ("npikall",),
        date: datetime.today().display("[day].[month].[year]")
)
#outline()
#pagebreak()
#include "sections/linalg.typ"
#include "sections/dif-rechnung.typ"
#include "sections/integral.typ"
#pagebreak(weak: true)
#include "sections/altfragen.typ"