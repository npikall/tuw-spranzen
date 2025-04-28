// Import the styling and the common types
#import "@preview/rubber-article:0.4.0":*
#import "common.typ":*

// Define the document formating
#show: article.with(
  eq-numbering: "(1.1)",
  eq-chapterwise: true,
  header-display: true,
  header-title: "{{title}}",
)

// Give your document a title, author and date
#maketitle(
  title: "{{title}}",
  authors: ("The author",),
  date: datetime.today().display("[day].[month].[year]"),
)

// Your content from the other files goes here
#include "sections/intro.typ"
