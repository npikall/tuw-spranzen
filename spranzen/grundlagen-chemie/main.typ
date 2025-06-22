#import "@preview/rubber-article:0.4.2": *
#import "common.typ": *

#show: article.with(
  header-display: true,
  header-title: "Grundlagen der Chemie",
  eq-numbering: "(1.1)",
  eq-chapterwise: true,
)

#maketitle(title: "Grundlagen der Chemie", authors: ("np",), date: datetime
  .today()
  .display("[day].[month].[year]"))

#outline()
#pagebreak()

#include "sections/01_atombau.typ"
#include "sections/02_zustandsformen.typ"
#include "sections/03_stochiometrie.typ"
#include "sections/04_triebkraft.typ"
#include "sections/05_gleichgewicht.typ"
#include "sections/06_sauren-basen.typ"
#include "sections/07_redoxreaktionen.typ"
#include "sections/08_anorg-chem.typ"
#include "sections/09_org-chem.typ"

#pagebreak()
#show: appendix
#include "sections/A_Altfragen.typ"
#include "sections/B_Altfragen.typ"
