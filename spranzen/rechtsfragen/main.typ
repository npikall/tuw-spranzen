// Import the styling and the common types
#import "@preview/rubber-article:0.4.1": *
#import "common.typ": *

// Define the document formating
#show: article.with(
  eq-numbering: "(1.1)",
  eq-chapterwise: true,
  header-display: true,
  header-title: "Rechtsfragen des Umweltschutzes",
)

// Give your document a title, author and date
#maketitle(
  title: "Rechtsfragen des Umweltschutzes",
  authors: ("np",),
  date: datetime.today().display("[day].[month].[year]"),
)

#outline()
// Your content from the other files goes here
#pagebreak()
#include "sections/intro.typ"
// #include "sections/02_verfassungsrecht.typ"
#include "sections/00_altfragen.typ"

