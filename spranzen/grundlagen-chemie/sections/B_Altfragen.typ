#import "../common.typ": *
#let antwort = antwort.with(display: true)
#let blank = box(line(length: 1em, stroke: .7pt))

#pagebreak()
= Tuwel Prüfungen
== Altfragen 25.04.2025

#fragen-counter.update(0)
#show heading.where(level: 2): it => {
  pagebreak(weak: true)
  it
}

#frage[
  Ein Stoff hat bei #qty(1013, "mbar") ein Volumen von #qty(1, "dm^3"). Nun ändert sich der Druck
  auf #qty(920, "mbar"). Um welchen Faktor ändert sich das Volumen des Stoffes?
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
  ) und (B) #qty(50, "ml") einer #qty(0.05, "g/mol") #ce("NH3") ($K_B = 1.8 dot 10^(-5)$) oder (C)
  #qty(100, "ml") einer #qty(0.05, "g/mol") dieser Mischung. Berechnen Sie den pH-Wert der der
  ursprünglichen Lösung (A) und der Mischungen mit (B) und (C).
]
#antwort[
  #missing[#v(3cm)]
  // $
  //   "pH"_A = ...\
  //   "pH"_B = ...\
  //   "pH"_C = ...\
  // $
]
#frage[
  #ce("KMnO4") reagiert mit #ce("MnCl2") zu #ce("MnO2"). Stellen Sie die Redox-Reaktion auf.
]
#antwort[
  #align(center, text(blue)[#ce("KMnO4 + MnCl2 ==> MnO2 + (KCl2)")])
  #set enum(numbering: "I")
  + Reduktion: #ce("K MnO4 ==> MnO2") #h(1cm) #ce("MnO4^- ==> MnO2")
  + Oxidation: #ce("MnCl2 ==> MnO2") #h(1cm) #ce("Mn^2+ ==> MnO2")
  \
  + #ce("MnO4^- + 4H^+ + 3e^- -> MnO2 + 2H2O")
  + #ce("Mn^2+ + 2H2O -> MnO2 + 4H^+ + 2e^-")
  \
  Gesamtgleichung: #ce("2MnO4^- + 3 Mn^2+ + 2H2O -> 5 MnO2 + 4H^+")
  // - Oxidation: ...
  // - Reduktion: ...
  // - Gesamtreaktion: #ce("1 KMnO4 + 1 MnCl2 + 2 H2 -> 1 MnO2 + KCl2 + 2 H2O") ???
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
#antwort[
  #figure(skeletize(config: (atom-sep: 2em, angle-increment: 30deg), {
    single(angle: 1)
    branch({
      single(angle: 3)
      fragment("CH_3")
    })
    double(angle: -1)
    single(angle: 1)
    branch({
      single(angle: 3)
      fragment("C_2H_5")
    })
    single(angle: -1)
    branch({
      single(angle: -3)
      fragment("C_2H_5")
    })
    double(angle: 1)
    single(angle: -1)
    single(angle: 1)
  }))
]

#frage[
  Es ist ein Ausgangsstoff mit #qty(15, "g") #ce("C6H12O6") gegeben. Es entstehen bei einer Reaktion
  die Stoffe #ce("CO2") und #ce("H2O"). Wie viel g Sauerstoff muss hinzugegeben werden, dass die
  Reaktion vollständig abläuft?
]
#antwort[
  #align(center, ce("C6H12O6 + 6 O2 ==> 6 CO2 + 6 H2O"))
  #let gram_c6h12o6 = 15
  #let molar_mass_c6h12o6 = (6 * 12.01) + (12 * 1.01) + (6 * 16)
  #let molar_mass_o2 = 2 * 16
  #let mol_c6h12o6 = gram_c6h12o6 / molar_mass_c6h12o6
  #let mass_o2 = calc.round(6 * mol_c6h12o6 * molar_mass_o2, digits: 3)

  $
    M_ce("C6H12O6") = #molar_mass_c6h12o6 g / "mol"\
    M_ce("O2") = #molar_mass_o2 g / "mol"\
    n_ce("C6H12O6") = #gram_c6h12o6 / #molar_mass_c6h12o6 = #calc.round(mol_c6h12o6, digits: 3) "mol"\
    m_ce("O2") = 6 dot n dot M_ce("O2") = 6 dot #calc.round(mol_c6h12o6, digits: 3) dot #molar_mass_o2 = #mass_o2 "g"\
  $
]

#frage[
  Bestimmen sie die Oxidationszahlen von:
  #show: rest => columns(2, rest)
  - #ce("Na+")
  - #ce("H2O2")
  - #ce("KMnO4")
  - von #ce("Ca") unc #ce("Cb")
  #colbreak()
  #skeletize(config: (atom-sep: 2em), {
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
#antwort[
  - #ce("Na^+") +1
  - #ce("H2O2")
  - #ce("KMnO4")
]

#frage[
  In einem Behälter befinden sich #qty(8.9, "g") #ce("O2"). Die Temperatur beträgt #qty(25, "C") und
  der Luftdruck #qty(1.1013, "bar"). Welches Volumen hat dieses Gas?
]
#antwort[
  #let mass = 8.9 // gram O2
  #let molar_mass = 32 // gram per mol
  #let mol = mass / molar_mass
  #let temp = 273.15 + 25 // Kelvin
  #let R = 8.314
  #let pressure = 1.1013e5

  #let volume = (mol * R * temp) / (pressure)
  #let liter = calc.round(volume * 1000, digits: 2)
  $
    n = m / M = (#mass "g")/ (#molar_mass "g/mol")= #mol "mol"\
    V = (n dot R dot T) / p = (#calc.round(mol, digits: 2) "mol" dot #R dot temp "K") / ( pressure "Pa" ) = #calc.round(volume, digits: 4) "m"^3 approx liter "L"
  $
]

#frage[
  Sie haben #qty(26, "kg") einer Lösung mit 83% #ce("HNO3") und Sie wollen eine Lösung mit 4%
  herstellen. Wie viel Wasser müssen Sie hinzufügen?
]
#antwort[
  #let mass = 26
  #let water_mass = ((mass * 0.83) / 0.04) - 26
  $
    m_1 dot omega_1 + cancel(m_2 dot omega_2) = (m_1 + m_2) dot omega_3\
    m_2 = (m_1 dot omega_1)/omega_2 - m_1 = (mass dot 0.83)/0.004 - #mass = #rect($#water_mass "kg"$)
  $
]

#frage[
  In einem Gas befinden sich:
  - #qty(0.005, "mol/l") #ce("H2")
  - #qty(0.002, "mol/l") #ce("Iod")
  - #qty(0.007, "mol/l") #ce("IH2")
  Es gilt die Reaktion: #ce("H2 + Iod <=> IH2")

  Die Temperatur beträgt #qty(490, "C"), $K_c = 46$. Berechnen Sie die Gleichgewichtskonstante und
  bestimmen Sie ob die Reaktion nach links oder rechts verläuft.
]
#antwort[
  #missing[]
]

#frage[
  #ce("C8H18") + #blank #ce("O2 =>") #blank #ce("CO2") + #blank #ce("H2")
  - Stellen Sie die Reaktionsgleichung auf.
  - Sie haben #qty(39.2, "g") eines Stoffes mit 56% #ce("C8H18"). Wie viel g #ce("CO2") entstehen
    bei der Reaktion?
]
#antwort[
  #align(center, ce("C8H18 + 8O2 => 8 CO2 + 9 H2"))

  // Given:
  #let mass_total = 39.2
  #let mass_ch = 0.56 * mass_total
  #let molar_mass_ch = (8 * 12) + (18 * 1)
  #let mol_ch = mass_ch / molar_mass_ch
  #let molar_mass_co2 = 12 + 2 * 16
  #let gram_co2 = (8 * molar_mass_co2) * mol_ch

  #set math.equation(numbering: none)

  $
    M_"C8H18" = 8 dot 12 + 18 dot 1 = #molar_mass_ch\
    M_"CO2" = 1 dot 12 + 2 dot 16 = #molar_mass_co2\
    m_"C8H18" = 0.56 dot #mass_total = #calc.round(mass_ch, digits: 2)\
    n_"C8H18" = m/M = #calc.round(mass_ch, digits: 2) / #calc.round(molar_mass_ch, digits: 2) = #calc.round(mol_ch, digits: 4)\
    m_"CO2" = (8 dot #molar_mass_co2) dot #calc.round(mol_ch, digits: 4) = #calc.round(gram_co2, digits: 2)
  $
]

#frage[
  Sie haben eine Taucherflasche mit #qty(60, "L") #ce("O2") bei #qty(19.5, "C") und #qty(8.8, "MPa")
  Wie viel g #ce("O2") befinden sich in der Flasche?
]
#antwort[
  // Given:
  #let pressure_mpa = 8.8
  #let volume_l = 60
  #let temperature_c = 19.5
  #let R = 8.314e-2

  // Convert to base units
  #let pressure_bar = pressure_mpa * 1e6 / 1e5
  #let temperature_k = temperature_c + 273.15

  // Setup Formula
  $
    p dot V = n dot R dot T\
    n = (p dot V)/(R dot T)
  $

  // Compute mass
  #set math.cancel(stroke: red + .8pt)
  #let n_o2 = calc.round(
    (pressure_bar * volume_l) / (R * temperature_k),
    digits: 3,
  )
  #let molar_mass_o2 = 32
  #let gram_o2 = molar_mass_o2 * n_o2
  #let kg_o2 = calc.round(gram_o2 / 1000, digits: 1)
  $
    n = (#pressure_bar cancel("bar") dot #volume_l cancel("L"))/(8.314 dot 10^(-2) cancel("bar" "L" "K"^(-1)) "mol"^(-1) dot #temperature_k cancel("K"))\
    \
    n = #n_o2 "mol"\
    m = #molar_mass_o2 "mol/g" dot #n_o2 = #gram_o2 "g" approx #kg_o2 "kg"
  $
]

