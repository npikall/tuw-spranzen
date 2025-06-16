#import "../common.typ": *
#let antwort = antwort.with(display: true)

#pagebreak()
= Tuwel Prüfungen
== Altfragen 25.04.2025

#fragen-counter.update(0)
#show heading.where(level: 2): it => {
  pagebreak(weak: true)
  it
}

#frage[
  Ein Stoff hat bei #qty(1013, "mbar") ein Volumen von #qty(1, "dm^3"). Nun
  ändert sich der Druck auf #qty(920, "mbar"). Um welchen Faktor ändert sich das
  Volumen des Stoffes?
]
#antwort[
  Siehe @eq-gas-isotherm
  #let (p1, p2) = (1013, 920)
  #let v1 = 1
  #let factor = calc.round(p1 / p2, digits: 3)
  $
    V_1 dot p_1 = V_2 dot p_2 quad arrow.long quad (V_1 dot p_1 )/p_2 = V_2\
  $

  $
    V_2 / V_1 & = p_1 / p_2 = #p1 / #p2 = #factor \
          V_2 & = qty(#factor, "dm^3")
  $
]
#frage[
  Sie haben ein Gemisch mit (A) #qty(50, "ml") einer #qty(0.05, "g/mol") #ce(
    "HCl",
  ) und (B) #qty(50, "ml") einer #qty(0.05, "g/mol") #ce("NH3")
  ($K_B = 1.8 dot 10^(-5)$) oder (C) #qty(100, "ml") einer #qty(0.05, "g/mol")
  dieser Mischung. Berechnen Sie den pH-Wert der der ursprünglichen Lösung (A)
  und der Mischungen mit (B) und (C).
]
#antwort[
  $
    "pH"_A = ...\
    "pH"_B = ...\
    "pH"_C = ...\
  $
]
#frage[
  #ce("KMnO4") reagiert mit #ce("MnCl2") zu #ce("MnO2"). Stellen Sie die
  Redox-Reaktion auf.
]
#antwort[
  - Oxidation: ...
  - Reduktion: ...
  - Gesamtreaktion: #ce("1 KMnO4 + 1 MnCl2 + 2 H2 -> 1 MnO2 + KCl2 + 2 H2O") ???
]
#frage[
  Wie viel g #ce("C6H12O6") werden benötigt um eine #qty(24, "l") Lösung mit
  $c = qty("156", "mmol/l")$ zu erhalten?
]
#antwort[
  #let (c, V) = (156, 24)
  #let c_mol = c * 1e-3
  #let n_target = calc.round(c_mol * V, digits: 3)
  #let m = calc.round(n_target / 180, digits: 3)
  $
    M_ce("C6H12O6") = 6 dot qty("12", "g/mol") + 12 dot qty("1", "g/mol") + 6 dot qty("16", "g/mol") = qty("180", "g/mol")\
    n_"target" = c dot V = qty("156", "mmol/l") dot qty("24", "l") = qty(#n_target, "mol")\
    m = (V dot c) / M_ce("C6H12O6") = qty(#m, "g")\
  $
]

#frage[
  Bestimmen sie von `4,5-Diethyl-2-Methyl-octa-2,5-dien`
  - die Anzahl der C-Atome
  - die längste Kette
  - ...
]
#antwort[]

#frage[
  Es ist ein Ausgangstoff mit #ce("C6H12O6") gegeben. Es entstehen bei einer
  Reaktion die Stoffe #ce("CO2") und #ce("H2O"). Wie viel g Sauerstoff muss
  hinzugegeben werden, dass...???
]
#antwort[]

#frage[
  Bestimmen sie die Oxidationszahlen von:
  #show: rest => columns(2, rest)
  - #ce("Na+")
  - #ce("H2O2")
  - #ce("KMnO4")
  - von #ce("Ca") unc #ce("Cb")
  #colbreak()
  #skeletize({
    fragment("H")
    single()
    fragment("Ca")
    branch({
      single(angle: 2)
      fragment("H")
    })
    branch({
      single(angle: -2)
      fragment("H")
    })
    single()
    fragment("Cb")
    branch({
      single(angle: 2)
      fragment("H")
    })
    branch({
      single(angle: -2)
      fragment("H")
    })
    single()
    fragment("OH")
  })
]
#antwort[]

#frage[
  In einem Behälter befinden sich #qty(8.9, "g") #ce("O2"). Die Temperatur
  beträgt #qty(25, "C") und der Luftdruck #qty(1.1013, "bar"). Welches Volumen
  hat dieses Gas?
]
#antwort[]

#frage[]
#antwort[]

#frage[]
#antwort[]

#frage[]
#antwort[]

#frage[]
#antwort[]

