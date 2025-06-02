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

// Your content from the other files goes here
#include "sections/intro.typ"
