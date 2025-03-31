#import "@preview/rubber-article:0.3.1":*
#import "common.typ":*

#show:article.with(
  show-header: true,
  header-titel: "Umweltmikrobiologie",
)

#maketitle(
  title: "Umweltmikrobiologie",
  authors: ("np",),
  date: datetime.today().display("[day].[month].[year]"),
)

#outline()

// Automatic pagebreaks for each chapter
#show heading.where(level: 1): it => {
  pagebreak()
  it
}

#include "sections/CH1.typ"
#include "sections/CH2_Gesundheit.typ"
#include "sections/CH3_Methoden.typ"
#include "sections/CH4_Diver.typ"
#include "sections/CH5_Nährstoffkreisl.typ"
#include "sections/CH6_Kometabolismus.typ"
// #include "sections/CH7_Anwendungbeispiele.typ"
#include "sections/Altfragen.typ"
