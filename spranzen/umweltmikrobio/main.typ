#import "@preview/rubber-article:0.3.1":*
#import "common.typ":*

#show:article.with()

#maketitle(
  title: "Umweltmikrobiologie",
  authors: ("npikall",),
  date: datetime.today().display("[day].[month].[year]")
)

#outline()

// #include "sections/CH1.typ"
// #include "sections/CH2_Gesundheit.typ"
// #include "sections/CH3_Methoden.typ"
// #include "sections/CH4_Diversität.typ"
// #include "sections/CH5_Nährstoffkreisl.typ"
#include "sections/CH6_Kometabolismus.typ"
// #include "sections/CH7_Anwendungbeispiele.typ"
#include "sections/Altfragen.typ"