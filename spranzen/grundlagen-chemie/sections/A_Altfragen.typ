#import "../common.typ": *
#let antwort = antwort.with(display: true)

= Altfragen
== Altfragen 12.01.2012

#show heading.where(level: 2): it => {
  pagebreak(weak: true)
  it
}

#frage[
  - Geben Sie die Elektronenkonfiguration von Phosphor (Z = 15) im Grundzustand an.
  - Welche formale Ladung (Oxidationszahl) hat Phosphor in Phosphonsäure (#ce("H3PO3"))?
]
#antwort[
  - *Phospohor* (Z=15) #ce("1s^2 2s^2 2p^6 3s^2 3p^3")
  - *Magnesium* (Z=12) #ce("1s^2 2s^2 2p^6 3s^2")

  Oxidationszahl:
  - Summe der Oxidationszahlen = Ladung des Gesamtmoleküls
  - #ce("H") = +I
  - #ce("O") = -II

  $
    #ce("H3PO3 -> H^+I + O^-II + P^x")\
    \
    3 dot "I" + (2 dot "-II") + x = 0\
    3 -4 + x = 0\
    x = +1\
    arrow #ce("P^+III")
  $

  // #figure(
  // skeletize(debug:false,{
  // fragment("O")//, lewis: (lewis-double(),))
  // double()
  // fragment("P")
  // branch({
  // single(angle:2)
  // fragment("OH")
  // })
  // branch({
  // single(angle:-2)
  // fragment("OH")
  // })
  // single()
  // fragment("H")
  // }), caption: "Phosphonsäure"
  // )

  #figure(
    image("../assets/elektronenkonfiguration.jpeg", width: 50%),
    caption: "Elektronenkonfiguration bestimmen mittels Periodensystem",
  )

  #figure(
    diagram(
      ..diagram-style,
      spacing: 1.5em,
      // debug:1,
      node((0, 0), "1s"),
      node((0, 1), "2s"),
      node((1, 1), "2p"),
      node((0, 2), "3s"),
      node((1, 2), "3p"),
      node((2, 2), "3d"),
      node((0, 3), "4s"),
      node((1, 3), "4p"),
      node((2, 3), "4d"),
      node((3, 3), "4f"),
      edge((0, 0), (0, 1), "-|>"),
      edge((0, 1), (1, 1), "-|>"),
      edge((1, 1), (0, 2), "-|>"),
      edge((0, 2), (1, 2), "-|>"),
      edge((1, 2), (0, 3), "-|>"),
      edge((0, 3), (2, 2), "-|>"),
      edge((2, 2), (1, 3), "-|>"),
      edge((2, 3), (3, 3), "-|>"),
    ),
    caption: "Elektronenkonfiguration mittels Merkschema",
  )
]
#frage[
  Was versteht man unter dem Begriff „Elektronegativität“? Geben Sie je zwei Beispiele für Elemente
  mit hoher und niedriger Elektronegativität.
]
#antwort[
  Elektronegativität ist ein Maß für die *Fähigkeit* eines Atoms, in einer chemischen Bindung die
  *Bindungselektronen an sich zu ziehen*.
  - Hohe Elektronegativität
    - Fluor (F) 3,98
    - Sauerstoff (O) 3,44
  - Niedrige Elektronegativität
    - Lithium (Li) 0,98
    - Natrium (Na) 0,93

]
#frage[
  Sie mischen 5 kg einer 40%igen Schwefelsäure mit 25 kg einer 8%igen Schwefelsäure (jeweils in
  Massenprozent). Welchen Gehalt in Massenprozent hat die so erhaltene Schwefelsäure?
]
#antwort[
  #let sol = calc.round((0.4 * 5 + 0.08 * 25) / (5 + 25), digits: 3)
  #let sol-perc = sol * 100
  $
    5 "kg" + 25 "kg" = 30 "kg"\
    0.4 dot 5 "kg" + 0.08 dot 25 "kg" = x dot 30 "kg"\
    x = (4 "kg") / (30 "kg")\
    x = #sol arrow.long #sol-perc %
  $
]
#frage[
  Wieviel g Wasserstoffgas (#ce("H2")) entstehen durch Einwirkung von Schwefelsäure (#ce("H2SO4"))
  auf 20 g Zn (Reinheit 85%)? Es entsteht als Nebenprodukt Zinksulfat (#ce("ZnSO4")).

  Molmassen:
  - Zn 65,4 g/mol
  - H 1,0 g/mol
  - O 16.0 g/mol
  - S 32,1 g/mol
]
#antwort[
  // Gegeben:
  #let m_zn_rein = 0.85 * 20 // g
  #let M_zn = 65.4 // g/mol
  #let n_zn = m_zn_rein / M_zn // mol
  #let n_h2 = n_zn // mol, da 1 mol Zn → 1 mol H2
  #let M_h2 = 2.0 // g/mol
  #let m_h2 = n_h2 * M_h2 // g

  $
    "Reaktionsgleichung:"& #ce("Zn + H2SO4 -> ZnSO4 + H2")\
    "Reines Zink:"& 0.85 dot 20 g = qty(#m_zn_rein, "g")\
    "Stoffmenge Zink:"& n = qty(#m_zn_rein, "g") / qty(#M_zn, "g/mol") = qty(#calc.round(n_zn, digits: 3), "mol")\
    "Stoffmenge Wasserstoff:"& n = qty(#calc.round(n_h2, digits: 3), "mol")\
    "Masse Wasserstoff:"& m = qty(#calc.round(n_h2, digits: 3), "mol") dot 2 dot qty("1", "g/mol") = qty(#calc.round(m_h2, digits: 3), "g")
  $

  *Ergebnis:*
  Es entstehen #calc.round(m_h2, digits: 3) g Wasserstoffgas.
]
#frage[
  Ein Druckbehälter wird bei 298 K mit einem Gemisch von 0,25 mol/L Distickstofftetroxid (#ce(
    "N2O4",
  )), und 0,15 mol/L Stickstoffdioxid (#ce("NO2")) befüllt. Bei dieser Temperatur ist die
  Gleichgewichtskonstante K#sub[c] = 0,15 mol/L (Dissoziation von #ce("N2O4") zu #ce("NO2")). Geben
  Sie die Reaktionsgleichung an und berechnen Sie in welche Richtung die Reaktion verlaufen wird.
]
#antwort[
  Reaktionsgleichung: #ce("N2O4 <=> 2 NO2")
  #let (c_no2, c_n2o4) = (0.15, 0.25)
  #let Q = calc.pow(c_no2, 2) / c_n2o4
  $
    Q = c_#ce("NO2")^2 / c_#ce("N2O4") & = #c_no2^2 / #c_n2o4 = #Q \
                                     Q & < K_c                     \
                                    #Q & < 0.15
  $
  Hinreaktion begünstigt, Reaktion verläuft nach rechts da Q < K.
]
#frage[
  Berechnen Sie den pH Wert einer 0,25 M Ammoniak Lösung (#ce("NH3")) Lösung (K#sub[B] 1,8·10 -5 ).
]
#antwort[
  #let M_nh3 = 0.25 // mol/L
  #let Kb = 1.8e-5 // mol/L

  // #figure(
  //   ctable(
  //     cols:"lccc",
  //     [],table.cell(colspan: 3)[#ce("AB -> A + B")],
  //     [Anfang], [$c_0 = n_0 /V$], [0], [0],
  //     [Änderung], [$-x$], [$+x$], [$+x$],
  //     [Gleichgewicht], [$c_0 - x = c_"AB"$], [$x = c_"A"$], [$x = c_"B"$],
  //   )//, caption: "Tabelle"
  // )

  // #align(center, ce("NH3 -> H+ + NH2^-"))
  #figure(ctable(
    cols: "lccc",
    [],
    table.cell(colspan: 3)[#ce("NH3 -> H+ + NH2^-")],
    [Anfang],
    [#M_nh3],
    [0],
    [0],
    [Änderung],
    [$-x$],
    [$+x$],
    [$+x$],
    [Gleichgewicht],
    [$#M_nh3 - x$],
    [$x$],
    [$x$],
  ))
  *Vereinfachung* im Nenner wenn $x << c_0$:
  #let x = calc.sqrt(Kb * M_nh3)
  $
    K_a = x^2/c_0 arrow.long x = sqrt(K_a dot c_0)\
    x = #calc.round(x, digits: 4)
  $

  // $
  //   K_c = (c_"A" dot c_"B") / c_"AB" = x^2/(c_0 - x)\
  //   x^2 +
  // $

]
#frage[
  Zink (Zn) reagiert mit konzentrierter Salpetersäure (#ce("HNO3")) zu Zinknitrat (#ce("Zn(NO3)2")),
  Stickstoffmonoxid (NO) und Wasser. Stellen Sie die Redoxgleichung nachvollziehbar
  (Halbgleichungen, Bilanzierung, usw.) auf.
]
#antwort[
  #align(center, ce("a Zn + b HNO3 -> c Zn(NO3)2 + d NO + e H2O"))
  #set enum(numbering: "I")
  + Zn: $a = c$
  + H: $b = 2e$
  + N: $b = 2c + d$
  + O: $3b = 6c + d + e$

  $
    "H" -> "N": 3 dot 2e & = 6c + d + e     \
                      6e & = 6c + d+ e      \
                      5e & = 6c + cancel(d) \
                -"N": 2e & = 2c + cancel(d) \
                   -> 3e & = 4c
  $
  5 Variablen und 4 Gleichungen: 1 Freiheitsgrad. Man setze $c = 3$ und somit gilt:
  $
    a = c = 3\
    e = 4/3 c = 4\
    b = 2e = 8\
    d = b - 2c = 8 -6 = 2
  $
  Die fertige Redoxgleichung ist somit:
  #align(center, ce("3 Zn + 8 HNO3 -> 3 Zn(NO3)2 + 2 NO + 4 H2O"))

  *Halbgleichungen:*
  + #ce("Zn -> Zn^(2+) + 2e-")
  + #ce("NO3^- + 4H+ + 3e- -> NO + 2H2O")
  - $3 dot "I" + 2 dot "II" -> "Redoxgleichung"$
]
#frage[
  Geben Sie je ein Beispiel (Name und Struktur) für folgende Verbindungsklasse (je 2P):
  - Alken
  - Keton
  - Carbonsäure
  - Alkin
  - Halogenalkan
]
#antwort[
  #figure(ctable(
    table.header([Klasse], [Struktur], [Name]),
    [Alken],
    [],
    [Ethen],
    [Keton],
    [],
    [Aceton],
    [Carbonsäure],
    [],
    [Ethansäure],
    [Alkin],
    [],
    [Ethin],
    [Halogenalkan],
    [],
    [Trichloridmethan\ (Chloroform)],
  ))
]
#frage[
  Carbonsäuren und Alkohole können unter geeigneten Bedingungen eine Veresterungsreaktion eingehen.
  Beschreiben Sie diese Reaktion (inklusive der Bedingungen) an einem Beispiel.
]
#antwort[
  Essigsäure #ce("CH3COOH") + Ethanol #ce("CH3CH2OH") #sym.arrow Essigsäureethylester #ce(
    "CH3COOCH2CH3",
  )+ Wasser Saures Milieu, Erhöhte Temperatur, Wasserabtransport notwendig
]
#frage[
  Erklären Sie anhand eines schematischen Energiediagrams den Begriff der „Aktivierungsenergie“.
  Welchen Einfluss hat ein Katalysator auf den Energieverlauf, die Geschwindigkeit sowie die Lage
  des Gleichgewichts der Reaktion?
]
#antwort[
  #let xs = lq.linspace(0, 5, num: 6)
  #let ys = (0, 0, 3, 0, -4, -4)
  #figure(lq.diagram(
    xaxis: (ticks: none, mirror: false, tip: tiptoe.stealth),
    yaxis: (ticks: none, mirror: false, tip: tiptoe.stealth),
    lq.path(
      ((0, 0), (0, 0), (0, 0)),
      ((1, 0), (0, 0), (.5, -.3)),
      ((2, 3), (-.3, 0), (.2, 0)),
      ((4, -3), (-.3, .1), (.2, 0)),
      ((5, -3), (0, 0), (0, 0)),
    ),
  ))
  Energie die gebraucht um den Peak zu überschreiten
  - Ein Katalysator setzt Peak herab.
  - Katalysator beschleunigt die Reaktion.
  - Katalysator übt keinen einfluss auf die Lage des Gleichgewichts aus.
]

== Altfragen 05.03.2020
#fragen-counter.update(0)

#frage[
  - Geben Sie die Elektronenkonfiguration von Phosphor (Z = 15) im Grundzustand an.
  - Welche formale Ladung (Oxidationszahl) hat Phosphor in Phosphorsäure (#ce("H3PO4"))?
]
#antwort[
  - *Phosphor*: #ce("1s^2 2s^2 2p^6 3s^2 3p^3")
  - Oxidationszahl: (H=+I, O=-II)
  $
    3 dot "I" & + & 1 dot x & + & 4 dot "-II" & = 0 \
            3 & + &       x & - &           8 & = 0 \
              &   &         &   &           x & = 5 \
  $
]
#frage[
  Was versteht man unter dem Begriff „Elektronegativität“? Geben Sie je zwei Beispiele für Elemente
  mit hoher und niedriger Elektronegativität.
]
#antwort[
  Elektronegativität ist ein Maß für die *Fähigkeit* eines Atoms, in einer chemischen Bindung die
  *Bindungselektronen an sich zu ziehen*.
  - Hohe Elektronegativität
    - Fluor (F) 3,98
    - Sauerstoff (O) 3,44
  - Niedrige Elektronegativität
    - Lithium (Li) 0,98
    - Natrium (Na) 0,93
]
#frage[
  Wieviel kg 35%ige Schwefelsäure (#ce("H2SO4")) und wie viel kg 15%ige Schwefelsäure sind
  notwendig, um 600 kg einer 30%igen Schwefelsäure herzustellen?
]
#antwort[
  $
     "(I)" quad & 0.15x + 0.35y = 0.3 dot 600        \
    "(II)" quad & x + y = 600 arrow.long y = 600 - x \
  $
  $
    0.15x + 0.35(600 - x) & = 0.3 dot 600 \
      0.15x + 210 - 0.35x & = 180         \
                    -0.2x & = -30         \
                        x & = 150         \
  $
]
#frage[
  Wie viel g #ce("NH3") entstehen durch Einwirken von #ce("NaOH") auf #qty(350, "g") #ce(
    "(NH4)2SO4",
  )? Es entsteht als Nebenprodukt Natriumsulfat #ce("Na2SO4") und Wasser. Molmassen:
  - N #qty(14.9, "g/mol")
  - H #qty(1.0, "g/mol")
  - O #qty(16.0, "g/mol")
  - S #qty(32.1, "g/mol")
]
#antwort[
  #align(center, ce("(NH4)2SO4 + 2NaOH -> Na2SO4 + 2NH3 + H2O"))
  #let natsulf_M = 4 * 14.9 + 8 * 1 + 32.1 + 4 * 16
  #let nh3_M = 2 * (14.9 + 3 * 1)
  #let natsulf_mol = calc.round(350 / natsulf_M, digits: 3)
  #let sol = calc.round(natsulf_mol * nh3_M, digits: 3)
  $
    ce("(NH4)2SO4 ->") & 4 dot 14.9 + 8 dot 1 + 32.1 + 4 dot 16 && = qty(#natsulf_M, "g/mol") \
         ce("2NH3 ->") & 2 dot (14.9 + 3 dot 1)                 && = qty(#nh3_M, "g/mol")     \
  $
  $
    n_ce("(NH4)2SO4") = 350 / #natsulf_M = qty(#natsulf_mol, "mol")\
    m_ce("NH3") = n_ce("(NH4)2SO4") dot qty(#nh3_M, "g/mol") = qty(#sol, "g")
  $
]
#frage[
  Ein Gemisch von jeweils #qty(0.2, "mol/L") Schwefeltrioxid (#ce("SO3")) und Sauerstoff (#ce("O2"))
  werden in einem Druckbehälter auf #qty(1000, "K") erhitzt. Bei dieser Temperatur ist die
  Gleichgewichtskonstante K#sub[c] = #qty(3.7e-3, "mol/L"). Geben Sie die Reaktionsgleichung an und
  berechnen Sie in welche Richtung die Reaktion verlaufen wird.
]
#antwort[
  #align(center, ce("2SO3 <=> 2SO2 + O2"))
  $
    Q & = (c_#ce("SO2")^2 dot c_#ce("O2")) / c_#ce("SO3")^2 \
    Q & = (0.2^2 dot 0.2) / (0.2^2) = 0.2                   \
    Q & = 0.2 > K_c = 0.0037                                \
  $
  Reaktion läuft nach links ab, da Q > K. #h(1fr)Q.E.D
]
#frage[
  Bestimmen Sie den pH-Wert einer #qty(0.1, "M") Natriumacetat (#ce("CH3COONa")) Lösung (K#sub[a] =
  #qty("5.6e-10", "mol/L")).
]
#antwort[
  #let ks = 5.6e-10
  #let c = 0.1
  #let pks = -calc.log(ks, base: 10)
  #let pH = 0.5 * (pks - calc.log(c, base: 10))
  $
    "pK"_s = - lg(K_A) = #calc.round(pks, digits: 2)\
    "pH" = 1/2 dot ("pK"_s - lg(c("HA"))) = 1/2 dot ("pK"_s - lg(c(#c)))\
    "pH" = #calc.round(pH, digits: 2)
  $
]

#frage[
  Silber (#ce("Ag")) reagiert mit konzentrierter Salpetersäure (#ce("HNO3")) zu Silbernitrat (#ce(
    "AgNO3",
  )), Stickstoffmonoxid (#ce("NO")) und Wasser. Stellen Sie die Redoxgleichung auf!
]
#missing[Lösung mit lin Glg.sys. nicht wirklich machbar!!!]
#frage[
  Woraus bestehen Fette und welche großtechnischen Anwendungen gibt es?
]
#antwort[
  Fette sind Ester des dreiwertigen Alkohols Glycerin mit 3, meist verschiedenen, überwiegend
  geradzahligen und unverzweigten alphatischen Monocarbonsäuren (Fettsäuren).

  *Großtechnische Anwendungen:*
  - Nahrungsmittelindustrie:
    - Speiseöle, Backfette, Margarine
    - Kosmetikindustrie:
    - Cremes, Lotionen, Seifen (verseifte Fette)
  - Waschmittelindustrie:
    - Seifenherstellung durch alkalische Hydrolyse (Verseifung)
    - Fett + NaOH → Glycerin + Seife (Natriumsalz der Fettsäure)
  - Biotreibstoffe:
    - Biodiesel durch Umesterung mit Methanol (Transesterifizierung)
  - Pharmaindustrie:
    - Lipidbasierte Trägersysteme (z. B. Liposomen)
]
#frage[
  Zeichnen Sie die allgemeine Struktur einer Aminosäure. Was bauen Aminosäuren auf?
]
#antwort[
  #figure(
    skeletize({
      fragment("N")
      branch({
        single(angle: 3)
        fragment("H")
      })
      branch({
        single(angle: -3)
        fragment("H")
      })
      single()
      fragment("C")
      branch({
        single(angle: 2)
        fragment("H")
      })
      branch({
        single(angle: -2)
        fragment("R")
      })
      single()
      fragment("C")
      branch({
        single(angle: -1)
        fragment("O", lewis: (
          lewis-line(angle: 45deg),
          lewis-line(angle: -135deg),
        ))
        single()
        fragment("H")
      })
      double(angle: 1)
      fragment("O", lewis: (lewis-line(angle: 0deg), lewis-line(angle: 90deg)))
    }),
    kind: "struct",
    caption: "Aminosäure",
    supplement: "Strukturformel",
  )
  Sind enthalten in Brokoli, Eiern und grünem Blattgemüse. Aminosäuren bauen Proteine auf, die für
  den menschlichen Körper wichtig sind.

  - Bestandteile:
    - Aminogruppe #ce("NH2")
    - Carbonsäuregruppe –COOH
    - Wasserstoffatom –H
    - Rest (Seitenkette) –R → bestimmt die Eigenschaft der Aminosäure
  - Zentrales C-Atom = $alpha$-C-Atom (chirales Zentrum, außer bei Glycin)
  - Aminosäuren bauen auf:
    - Proteine (Eiweiße)
    - durch Peptidbindung zwischen –COOH der einen und #ce("NH2") der anderen Aminosäure
    - lineare Ketten = Peptide, lange Ketten = Proteine
]
#frage[
  Erklären Sie warum Naturstoffe in der chemischen Industrie von großem Interesse sind.
]
#antwort[
  - Naturstoffe = bioaktive Moleküle natürlichen Ursprungs
    - oft komplexe, funktionalisierte Moleküle mit spezifischer Wirkung
  - Hohe strukturelle Diversität
    - Vielzahl unterschiedlicher funktioneller Gruppen und Stereozentren
  - Biologische Aktivität
    - Viele Naturstoffe zeigen medizinisch/pharmazeutisch relevante Effekte (z. B. Antibiotika,
      Zytostatika)
  - Rohstoffquelle
    - Gewinnung aus nachwachsenden Ressourcen (z. B. Pflanzen, Mikroorganismen)
  - Vorbild für Wirkstoffentwicklung
    - Naturstoffe dienen als Leitstrukturen (Lead Structures) für neue Medikamente (→
      Derivatisierung)
  - Anwendung in verschiedenen Industrien
    - Pharma, Kosmetik, Lebensmittel, Pflanzenschutz
  - Biotechnologische Herstellung möglich
    - Fermentation, Enzymkatalyse, Metabolic Engineering
]
== Altfragen 04.02.2021
#fragen-counter.update(0)
#frage[
  - Geben Sie die Elektronenkonfiguration von #ce("Mg^2+") (Z = 12) an.
  - Welche formale Ladung (Oxidationszahl) hat Chlor in Chloriger Säure (#ce("HClO2"))?
]
#antwort[
  - #ce("1s^2 2s^2 2p^6")
  - Oxidationszahl: Cl = +III
]
#frage[
  Was versteht man unter dem Begriff _Ionisierungsenergie_ und _Elektronenaffinität_?
]
#antwort[
  - *Ionisierungsenergie*: Energie, die benötigt wird, um ein Elektron aus dem äußersten besetzten
    Orbital eines gasförmigen Atoms zu entfernen.
  - *Elektronenaffinität*: Energieänderung, die durch Besetzung des niedrigsten unbesetzten Orbitals
    in einem freien Atom durch ein Elektron resultiert.
]
#frage[
  Aus #qty(20, "kg") konzentrierter Salzsäure ($"w" = 32%$) soll verdünnte Salzsäure ($"w" = 5%$)
  hergestellt werden. Wieviel Wasser muss zugegeben werden und welche Menge an verdünnter Salzsäure
  wird dadurch erhalten?
]
#antwort[
  $
    "I": 20"kg" + x "kg" = y "kg"\
    "II": 0.32 dot 20 + 0x + 0.05y\
    y = (0.32 dot 20)/ 0.05 = 128\
    x = 128 - 20 = #rect[$108 "kg"$]
  $
]
#frage[
  Welches Volumen an gasförmigem Ammoniak (#ce("NH3")) entsteht durch Einwirkung von Natriumhydroxid
  (#ce("NaOH")) auf #qty(25, "g") Ammoniumchlorid (#ce("NH4Cl")) unter Standardbedingungen (#qty(
    1013,
    "mbar",
  ), $25 degree "C"$), wenn die Ausbeute 83% beträgt? Als Nebenprodukt entstehen Natriumchlorid
  (#ce("NaCl")) und Wasser. Molmassen:
  - H #qty(1.0, "g/mol")
  - O #qty(16.0, "g/mol")
  - Cl #qty(35.5, "g/mol")
  - Na #qty(23.0, "g/mol")
  - N #qty(14.0, "g/mol")
  - R #qty(8.314, "J/K/mol")
]
#antwort[
  Lin. Glg.system zum ist hier nicht notwendig, da alle Koeffizienten 1 sind.
  #align(center, ce("1 NH4Cl + 1 NaOH -> 1 NH3 + 1 NaCl + 1 H2O"))
  #let M_nh4cl = 1 * 14 + 4 * 1 + 1 * 35.5
  #let M_nh3 = 14 + 3
  #let mol = 25 / M_nh4cl
  $
    M_"NH4CL" & = 1 dot 14 + 4 dot 1 + 1 dot 35.5 = #M_nh4cl              \
      M_"NH3" & = 1 dot 14 + 3 dot 1 = #M_nh3                             \
    n_"NH4CL" & = qty("25", "g") / #M_nh4cl = #calc.round(mol, digits: 3) \
  $
  Allgemeine Gasformel:
  $
    p dot V = n dot R dot T
  $
  #set math.cancel(stroke: red + 1pt)
  $
    V = (n dot R dot T)/(p ["mbar"]) = ([cancel("mol")] dot [cancel("N")"m" cancel("K"^(-1) "mol"^(-1))] dot [cancel("K")])/[100 cancel("N") "m"^(-2)] = #rect[$display(1/100) "m"^3 = 10 "dm"^3$]
  $
  #align(center, block(width: 68%, [
    #set math.equation(numbering: none)
    #gc.memo[
      $
        1 "hPa" & = 1 "mbar"  \
            "J" & = "Nm"      \
           "Pa" & = "N"/"m"^2
      $
    ]
  ]))
]
#frage[
  Gasförmiges Brommonochlorid zerfällt zu Brom und Chlor. Bei 500 K ist K#sub[c] = 32. Zu Beginn der
  Reaktion ist BrCl mit einer Konzentration von 5 mM vorhanden. Welche Konzentrationen an #ce(
    "BrCI",
  ), #ce("Br2") und #ce("Cl2") liegen im Gleichgewicht vor?
]
#antwort[
  #align(center, ce("2 BrCl <==> Br2 + Cl2"))
  $ K_c = (["Br"_2] dot ["Cl"_2] )/(["BrCl"]^2) = 32 $
  $
      [ce("Br2")] & = x          \
      [ce("Cl2")] & = x          \
    [ce("2BrCl")] & = 0.005 - 2x
  $
  $
    32 = x^2/((0.005 -2x)^2)\
    #rect[$x approx 0.0022969...$]
  $
]
#frage[
  Ein Liter eines Acetat-Puffers wird aus 1 mol Essigsäure und 2 mol Natriumacetat hergestellt
  (Essigsäure: pK#sub[A] = 4.75). Welchen pH-Wert hat der Puffer vor sowie nach der Zugabe von 0.5
  mol #ce("HCl")?
]
#antwort[
  #missing[]
]
#frage[
  Dichromat (#ce("Cr2O7^2-")) reagiert mit Sulfit-Ionen (#ce("SO3^2-")) in schwefelsaurer Lösung zu
  #ce("Cr^3+") und Sulfat-Ionen (#ce("SO4^2-")). Stellen Sie die Redoxgleichung nachvollziehbar
  (Halbgleichungen, Bilanzierung, usw.) auf.
]
#antwort[#missing[]]
#frage[
  Beschreiben Sie die Standardwasserstoffelektrode und erklären Sie die Begriffe _edles Metall_ und
  _unedles Metall_.
]
#antwort[#missing[]]
#frage[
  Stellen Sie die Halbgleichung für die Reduktion von Hypochlorit (#ce("ClO^-")) zu Chlor (#ce(
    "Cl2",
  )) auf und berechnen Sie das Potential des Redoxpaares ($"E"_0 = +1.63 "V"$) bei pH 3 und
  $25 degree "C"$, wenn #ce("c(ClO^-)") = #qty(0.1, "mol/L") und #ce("c(Cl2)") = #qty(1, "mol/L").
]
#antwort[
  $
    E = E_0 + 0.059/n log(c_"ox"/c_"red")\
  $
  #missing[]
]
#frage[
  Erklären Sie die strukturellen Unterschiede zwischen Alkoholen, Aldehyden und Carbonsäuren und
  nennen Sie je ein relevantes Beispiel (_relevant_ in Bezug auf Anwendung, Bedeutung oder
  Vorkommen).
]
#antwort[
  #let alkohol = box(skeletize(config: (angle-increment: 30deg, atom-sep: 2em), {
    fragment("R")
    single(angle: 0)
    fragment("OH")
  }))
  #let aldehyd = box(baseline: 100% - 20pt, skeletize(
    config: (angle-increment: 30deg, atom-sep: 1.5em),
    {
      fragment("R")
      single(angle: 1)
      branch({
        double(angle: 3)
        fragment("O")
      })
      single(angle: -1)
      fragment("H")
    },
  ))
  #let carbonacid = box(baseline: 100% - 20pt, skeletize(
    config: (angle-increment: 30deg, atom-sep: 1.5em),
    {
      fragment("R")
      single(angle: 1)
      branch({
        double(angle: 3)
        fragment("O")
      })
      single(angle: -1)
      fragment("OH")
    },
  ))
  - Alkohol: #alkohol (Bsp: Ethanol)
  - Aldehyde: #aldehyd (Bsp: Formaldehyd)
  - Carbonsäure: #carbonacid (Bsp: Essigsäure)
]

== Testprüfung
#fragen-counter.update(0)
#frage[
  - Geben Sie die Elektronenkonfiguration von Kalium (Z = 19) im Grundzustand an.
  - In welcher Ladung liegt Kalium üblicherweise vor?
]
#antwort[
  - *Kalium*: #ce("1s^2 2s^2 2p^6 3s^2 3p^6 4s^1")
  - Oxidationszahl: K=+I
]
#frage[
  Eine Verbrennungsanalyse von Vitamin C ergibt eine Zusammensetzung von 40.9% C, 4.57% H und 54.5%
  O. Bestimmen Sie die Summenformel von Vitamin C (M(O) = #qty(16.0, "g/mol"), M(C) = #qty(
    12.0,
    "g/mol",
  ), M(H) = #qty(1.0, "g/mol")).
]
#antwort[
  #let mol_c = calc.round(40.9 / 12, digits: 3)
  #let mol_h = calc.round(4.57 / 1, digits: 3)
  #let mol_o = calc.round(54.5 / 16, digits: 3)
  #let perc_h = calc.round(mol_h / mol_o, digits: 3)
  #let perc_c = calc.round(mol_c / mol_o, digits: 3)
  #figure(
    ctable(
      cols: "c|cccc",
      vertical-stroke: .6pt,
      table.header([Element], [m (g/100g)], [M (g/mol)], [n (mol)], [Anteil (%)]),
      [C],
      [40.9 %],
      [12],
      [$40.9/12 = #mol_c$],
      [$#mol_c/#mol_o = #perc_c$],
      [H],
      [4.57%],
      [1],
      [$4.57/1 = #mol_h$],
      [$#mol_h/#mol_o = #perc_h$],
      [O],
      [54.5%],
      [16],
      [$54.5/16 = #mol_o$],
      [$#mol_o/#mol_o = 1$],
    ),
    caption: "Verbrennungsanalyse von Vitamin C",
  )
  #align(center, ce("C6H8O6"))
]
#frage[
  Aus #qty(15, "kg") 65%iger Schwefelsäure (#ce("H2SO4")) soll eine 2%ige gemacht werden. Wieviel
  Wasser muss man zugeben?
]
#antwort[
  $
    0.65 dot 15 + 0y & = 0.02 dot (15+y)    \
                9.75 & = 0.02dot 15 + 0.02y \
              -0.02y & = 0.02dot 15 - 9.75  \
                   y & = -15 - 9.75/(-0.02) \
                   y & = -15 + 487.5        \
                   y & = 472.5              \
  $
]
#frage[
  Metallisches Eisen reagiert mit Salzsäure unter Wasserstoffentwicklung zu Eisen(II)-chlorid.
  Welche Masse an Eisen muss in Salzsäure gelöst werden, um unter Normalbedingungen #qty(10, "L")
  Wasserstoff zu entwickeln? M(Fe) = #qty(55.8, "g/mol")

  #align(center, ce("Fe + 2HCl -> FeCl2 + H2"))
]
#antwort[
  #missing[]
]
#frage[
  Ein Behälter wird mit Stickstoff und Wasserstoff in den Konzentrationen #qty(0.6, "g/mol") bzw.
  #qty(0.8, "g/mol") befüllt. Im Gleichgewicht findet man eine Ammoniak Konzentration vom #qty(
    0.2,
    "g/mol",
  ). Berechnen Sie die Gleichgewichtskonstante K#sub[c]!
]
#antwort[
  #align(center, ce("N + 3H <=> NH3"))
  #let Kc = calc.round(0.2 / (0.6 * 0.8), digits: 3)
  $
    K_c & = k_"Hin"/k_"Rück" = (c_C dot c_D) / (c_A dot c_B) = 0.2 / (0.6 dot 0.8) \
    K_c & = #Kc
  $
  #missing[]
]
#frage[
  Ein Liter eines Acetat-Puffers wird aus 1 mol Essigsäure und 1 mol Natriumacetat hergestellt
  (Essigsäure: pK#sub[A] = 4.75). Welchen pH-Wert hat der Puffer, wenn außerdem noch 0.1 mol HCl
  zugefügt werden?
]
#antwort[
  #missing[]
]
#frage[
  Kaliumpermanganat (#ce("KMnO4")) reagiert in salzsaurer Lösung mit Eisen-(II)-chlorid zu #ce(
    "MnCl2",
  ). Stellen Sie die Redoxgleichung auf.
]
#antwort[
  #missing[]
]
#frage[
  Wie lautet der korrekte Name (IUPAC) zu den folgenden Verbindungen? Um welche funktionelle Gruppen
  handelt es sich?

  #h(1fr)
  #box(skeletize(config: (atom-sep: 2.2em), {
    fragment("Br")
    single(absolute: -90deg)
    double(absolute: 210deg)
    single(absolute: -90deg)
    fragment("Cl")
  }))
  #h(25%)
  #box(skeletize(config: (atom-sep: 2.2em), {
    fragment("O")
    double(angle: -2)
    cycle(6, {
      single()
      single()
      single()
      single()
      branch({
        single()
        fragment("OH")
      })
      single()
      single()
    })
  }))
  #h(1fr)
]
#antwort[
  #missing[]
]
#frage[
  Wo kommt Lignocellulose vor und aus welchen Komponenten besteht sie? Beschreiben Sie den Aufbau
  von Cellulose auf molekularer Ebene.
]
#antwort[
  *Lignocellulose*:

  Bildet die Zellwand von Pflanzen (Stützgerüst). Beispiel Holz. Besteht aus _Cellulose_,
  _Hemizellulose_ und _Lignin_.
  #missing[]
]
#frage[
  Beschreiben Sie das Konzept eines Katalysators (Definition, Energieschema). Wie läuft der
  Haber-Bosch Prozesses zur Synthese von Ammoniak ab und warum wird ein Katalysator gebraucht?
]
#antwort[
  #missing[]
]
