/*
 * Copyright (C) 2025 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

// Import the styling and the common types
#import "@preview/rubber-article:0.4.0": *
#import "common.typ": *

// Define the document formating
#let the-title = "Physik 1"
#show: article.with(
  eq-numbering: "(1.1)",
  eq-chapterwise: true,
  header-display: true,
  header-title: the-title,
)

// Set the title, authors, and date
#maketitle(
  title: the-title,
  authors: ("np",),
  date: datetime.today().display("[day].[month].[year]"),
)

#outline()
// Insert modules/content
#include "sections/intro.typ"
