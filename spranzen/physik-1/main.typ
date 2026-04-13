/*
 * Copyright (C) 2025 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

// Import the styling and the common types
#import "@preview/rubber-article:0.5.2": *
#import "@local/spranzen:0.1.0": *

// Define the document formating
#let the-title = "Physik 1"
#show: article.with(
  eq-numbering: "(1.1)",
  eq-chapterwise: true,
  header-display: true,
  header-title: the-title,
)

#show "->": sym.arrow

// Set the title, authors, and date
#maketitle(
  title: the-title,
  authors: ("np",),
  date: datetime.today().display("[day].[month].[year]"),
)

#outline()
#show heading.where(level: 1): it => {
  colbreak()
  it
}
// Insert modules/content
#include "sections/intro.typ"
#include "sections/fragen_gravitation.typ"
#include "sections/fragen_mechanik_starrer_koerper.typ"
#include "sections/fragen_relativitats_theorie.typ"
#include "sections/fragen_schwingungen.typ"
#include "sections/fragen_elektrodynamik.typ"
