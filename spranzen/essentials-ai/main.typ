/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *
#import "@preview/rubber-article:0.5.2": *

#let the-title = "Essential of AI"
#show: article.with(
  eq-numbering: "(1.1)",
  eq-chapterwise: true,
  header-display: true,
  header-title: the-title,
)

#maketitle(
  title: the-title,
  authors: ("np",),
  date: datetime.today().display("[day].[month].[year]"),
)
#ai-disclaimer
#outline()

// new page for each level 1 heading
#show heading.where(level: 1): it => {
  colbreak()
  it
}


#include "sections/lecture-02.typ"
#include "sections/lecture-03.typ"

