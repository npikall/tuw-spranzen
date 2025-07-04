// Disclaimer:
// Viele Fragen dieser Online Prüfung sind hier nicht inkludiert.
// Es waren einige gottlose Fragen mit Zuordnungen usw. die hier nicht dabei sind.
// Einzig die Rechenbeispiele sind hier abgebildet.

#import "../common.typ": *
#let antwort = antwort.with(display: true)
#let blank = box(line(length: 1em, stroke: .7pt))

#pagebreak()
== Altfragen 27.06.2025

#fragen-counter.update(0)
#show heading.where(level: 2): it => {
  pagebreak(weak: true)
  it
}
#frage[
  Oktan #ce("C8H18") reagiert bei einer chemischen Reaktion mit Sauerstoff zu #ce("CO2") und #ce(
    "H2O",
  ). Sie haben #qty(24.9, "g") Oktan. Wie viel g #ce("CO2") entstehen bei einer Ausbeute von 82%?
]

#antwort[
  #let mass_oktan = 24.9 //gramm
  #let mol = mass_oktan / (8 * 12 + 18)
  #let molarmass_co2 = (12 + 2 * 16) * 8
  #let mass_co2 = molarmass_co2 * mol * 0.82
  #set math.equation(numbering: none)


  #align(center, ce("1 C8H18 + 8 O2 -> 8 CO2 + 18 H2"))

  $
    n_"Oktan" & = #mass_oktan / (8 dot 12 + 18) = #calc.round(mol, digits: 3)"mol"              \
      M_"CO2" & = (12 + 2 dot 6) dot 8 = #molarmass_co2 "g"                                     \
      m_"CO2" & = M_"CO2" dot n_"Oktan" dot 0.82 = #rect($#calc.round(mass_co2, digits: 2)"g"$)
  $
]

#frage[
  Sie wollen #qty(5, "L") einer Lösung herstellen mit #qty(158, "mmol/L") #ce("C6H12O6"). Wie viel g
  des Stoffes benötigen sie dafür?
]

#antwort[
  #let molar = 6 * 12 + 12 + 6 * 16 // g/mol
  #let n = 158 * 5 / 1000 // mol
  #let m = molar * n
  #set math.equation(numbering: none)

  $
    "M" & = 6 dot 12 + 12 + 6 dot 16 = qty(#calc.round(molar, digits: 2), "g/mol")                \
    "n" & = qty("158", "mmol/L") dot qty("5", "L") = qty(#n, "mol")                               \
    "m" & = qty(molar, "g/mol") dot qty(#n, "mol") = #rect($qty(#calc.round(m, digits: 2), "g")$) \
  $
]

#frage[
  Bestimmen Sie die Oxidationszahlen von:
  - #ce("Na+")
  - H in #ce("KH")
  - Cl in #ce("HClO4")
  - C1 und H1 in: #skeletize(config: (atom-sep: 2.5em, angle-increment: 30deg), {
      fragment("H_1")
      single(angle: 1)
      fragment("C_1")
      branch({
        double(angle: 3)
        fragment("O")
      })
      single(angle: -1)
      fragment("H")
    })
]
#antwort[#missing[]]
#frage[
  Zink reagiert mit Salpeter säure zu #ce("Zn(NO3)2"), #ce("NO") und Wasser. Stellen sie die Redox
  Gleichung auf. (Inklusive Halbgleichungen, usw.)
]

#antwort[
  - Oxidation: #ce("Zn -> Zn+2 + 2e-")
  - Reduktion: ...

  - Gesamt: ...
  #missing[]
]
#frage[
  In einem Gas befindet sich Iod, Wasserstoff und #ce("IH2"). Die Gleichgewichtskonstante ist
  $K_c = 60$ die Temperatur beträgt $T=393°C$ und Das Volumen des Gases ist $V=1"L"$. Verläuft die
  Rektion nach links oder rechts?
]
#antwort[#missing[]]
#frage[
  Sie erwärmen die Luft in einem Autreifen von $18 degree "C"$ auf $60 degree "C"$. Zu Beginn
  beträgt der Druck #qty(220, "kPa"). Wie hoch ist der Druck nach der Erwärmung?
]

#antwort[#missing[]]

#frage[
  Sie haben #qty(40, "kg") einer 61% Lösung. Sie wollen eine 4% Lösung daraus herstellen. Wie viel
  kg Wasser müssen sie hinzufügen?
]
#antwort[#missing[]]

#frage[
  Aluminium reagiert mit Wasser zu Aluminiumoxid und Wasserstoff. Sie haben #qty(135, "g") Aluminium
  und es herrschen Standardbedingungen. Die Ausbeute von Wasserstoff beträgt 85%. Berechnen Sie das
  Volumen des Wasserstoffes.
]
#antwort[#missing[]]
#frage[
  Berechnen Sie den pH Wert einer #qty(0.85, "M") #ce("NH3") Lösung. ($K_B = 1.8 dot 10^(-5)$)
]
#antwort[#missing[]]
#frage[
  Bestimmen Sie die Namen der folgenden Moleküle/Gruppen.
  #let config = (atom-sep: 2em, angle-increment: 30deg)
  #let mol_1 = skeletize(config: config, {
    single(angle: 1)
    branch({
      double(angle: 3)
      fragment("O")
    })
    single(angle: -1)
    fragment("Cl")
  })
  #let mol_2 = skeletize(config: (atom-sep: 2em, angle-increment: 45deg), {
    single(angle: 0)
    double(angle: 1)
    single(angle: 2)
  })
  #let mol_3 = skeletize(config: config, {
    single(angle: 1)
    branch({
      double(angle: 3)
      fragment("O")
    })
    single(angle: -1)
  })
  #let mol_4 = skeletize(config: config, {
    single(angle: 1)
    single(angle: -1)
    fragment("NH_2")
  })
  #let mol_5 = skeletize(config: config, {
    single(angle: 1)
    branch({
      double(angle: 3)
      fragment("O")
    })
    single(angle: -1)
    fragment("NH_2")
  })

  #box(mol_1)#h(2em) #box(mol_2)#h(2em) #box(mol_3)#h(2em) #box(mol_4)#h(2em)
  #box(mol_5)

  (Ein paar Vorschläge: _Säurehalogenid, E-Alken, Keton, Amid, Phenol, ..._)
]
#antwort[#missing[]]

