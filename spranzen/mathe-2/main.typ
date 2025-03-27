#import "@preview/rubber-article:0.3.1": *
#import "common.typ": *

#show: article.with(
  show-header: true,
  header-titel: "Mathe 2",
)

#maketitle(
  title: "Mathe 2",
  authors: ("np",),
  date: datetime.today().display("[day].[month].[year]"),
)
#outline()
#pagebreak()
#include "sections/linalg.typ"
#include "sections/dif-rechnung.typ"
#include "sections/integral.typ"
#pagebreak(weak: true)
#include "sections/altfragen.typ"

#import "@preview/tiaoma:0.3.0"
#align(center, rect(width: 60%)[
  #show link: set text(font: "Ubuntu Mono")
  If you want to see the source code of this document or want to contribute or raise an issue, you can find it on GitHub:
  #tiaoma.qrcode("https://github.com/npikall/tuw-spranzen")
  #link("https://github.com/npikall/tuw-spranzen")
])
