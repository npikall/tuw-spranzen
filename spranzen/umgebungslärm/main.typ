/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *
#import "@preview/rubber-article:0.5.2": *

#let the-title = "umgebungslärm"
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

#outline()

#show heading.where(level: 1): it => {
  pagebreak()
  it
}

#include "sections/fragenkatalog.typ"
#include "sections/pruefung-2022-02-28.typ"
#include "sections/pruefung-2023-03-30.typ"
#include "sections/pruefung-2023-05-10.typ"
#include "sections/pruefung-2023-10-10.typ"
