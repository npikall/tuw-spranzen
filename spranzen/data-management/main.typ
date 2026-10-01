/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *
#import "@preview/rubber-article:0.5.2": *

#let the-title = "Data Management for Science and Engineering"
#show: article.with(
  eq-numbering: "(1.1)",
  eq-chapterwise: true,
  header-display: true,
  header-title: "Data Management",
)

#show "->": math.arrow.long

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

// #include "sections/intro.typ"
#include "sections/unit01-relational-model.typ"
#include "sections/unit02-entity-relationship-model.typ"
#include "sections/unit03-normal-forms.typ"
#include "sections/unit04-basic-sql.typ"
