/*
 * Copyright (C) {{ year }} npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

// Import the styling and the common types
#import "@preview/rubber-article:0.5.0": *
#import "common.typ": *

#let the-title = "{{title}}"
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

#include "sections/intro.typ"
