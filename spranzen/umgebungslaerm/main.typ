// Import the styling and the common types
#import "@preview/rubber-article:0.4.0":*
#import "common.typ":*

// Define the document formating
#show: article.with(
  eq-numbering: "(1.1)",
  eq-chapterwise: true,
  header-display: true,
  header-title: "Umgebungslärm",
)

// Give your document a title, author and date
#maketitle(
  title: "Umgebungslärm",
  authors: ("np",),
  date: datetime.today().display("[day].[month].[year]"),
)

#outline()
#pagebreak()

#include "sections/intro.typ"
