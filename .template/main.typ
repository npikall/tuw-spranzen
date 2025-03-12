// Import the styling and the common types
#import "@preview/rubber-article:0.3.1":*
#import "common.typ":*

// Define the document formating
#show: article.with(
  eq-numbering:"(1.1)",
  eq-chapterwise:true,
  show-header:true,
  header-titel:"{{title}}",
)

// Give your document a title, author and date
#maketitle(
  title:"{{title}}",
  authors:("The author",),
  date:datetime.today().display("[day].[month].[year]") 
)

// Your content from the other files goes here
#include "sections/intro.typ"