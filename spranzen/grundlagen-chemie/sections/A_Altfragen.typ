#import "../common.typ":*
= Altfragen
== Altfragen 12.01.2012
#frage[
  - Geben Sie die Elektronenkonfiguration von Phosphor (Z = 15) im Grundzustand an.
  - Welche formale Ladung (Oxidationszahl) hat Phosphor in Phosphonsäure (#ce("H3PO3"))?
]

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
// molecule("O")//, lewis: (lewis-double(),))
// double()
// molecule("P")
// branch({
// single(angle:2)
// molecule("OH")
// })
// branch({
// single(angle:-2)
// molecule("OH")
// }) 
// single()
// molecule("H")
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
    node((0,0), "1s"),
    node((0,1), "2s"),
    node((1,1), "2p"),
    node((0,2), "3s"),
    node((1,2), "3p"),
    node((2,2), "3d"),
    node((0,3), "4s"),
    node((1,3), "4p"),
    node((2,3), "4d"),
    node((3,3), "4f"),
    edge((0,0), (0,1), "-|>"),
    edge((0,1), (1,1), "-|>"),
    edge((1,1), (0,2), "-|>"),
    edge((0,2), (1,2), "-|>"),
    edge((1,2), (0,3), "-|>"),
    edge((0,3), (2,2), "-|>"),
    edge((2,2), (1,3), "-|>"),
    edge((2,3), (3,3), "-|>"),
  ),
  caption: "Elektronenkonfiguration mittels Merkschema",
)

#frage[
  Was versteht man unter dem Begriff „Elektronegativität“? Geben Sie je zwei Beispiele für Elemente mit hoher und niedriger Elektronegativität.
]
Elektronegativität ist ein Maß für die *Fähigkeit* eines Atoms, in einer chemischen Bindung die *Bindungselektronen an sich zu ziehen*.
- Hohe Elektronegativität
  - Fluor (F) 3,98
  - Sauerstoff (O) 3,44
- Niedrige Elektronegativität
  - Lithium (Li) 0,98
  - Natrium (Na) 0,93

#frage[
  Sie mischen 5 kg einer 40%igen Schwefelsäure mit 25 kg einer 8%igen Schwefelsäure (jeweils in Massenprozent). Welchen Gehalt in Massenprozent hat die so erhaltene Schwefelsäure?
]
#let sol = calc.round((0.4 * 5 + 0.08 * 25) / (5 + 25), digits: 3)
#let sol-perc = sol * 100
$
5 "kg" + 25 "kg" = 30 "kg"\
0.4 dot 5 "kg" + 0.08 dot 25 "kg" = x dot 30 "kg"\
x = (4 "kg") / (30 "kg")\
x = #sol arrow.long #sol-perc %
$

#frage[
  Wieviel g Wasserstoffgas (#ce("H2")) entstehen durch Einwirkung von Schwefelsäure (#ce("H2SO4")) auf 20 g Zn (Reinheit 85%)? Es entsteht als Nebenprodukt Zinksulfat (#ce("ZnSO4")).

  Molmassen:
  - Zn 65,4 g/mol
  - H 1,0 g/mol
  - O 16.0 g/mol
  - S 32,1 g/mol
]

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

#frage[
  Ein Druckbehälter wird bei 298 K mit einem Gemisch von 0,25 mol/L Distickstofftetroxid (#ce("N2O4")), und 0,15 mol/L Stickstoffdioxid (#ce("NO2")) befüllt. Bei dieser Temperatur ist die Gleichgewichtskonstante K#sub[c] = 0,15 mol/L (Dissoziation von #ce("N2O4") zu #ce("NO2")). Geben Sie die Reaktionsgleichung an und berechnen Sie in welche Richtung die Reaktion verlaufen wird.
]

Reaktionsgleichung: #ce("N2O4 <=> 2 NO2")
#let (c_no2, c_n2o4) = (0.15, 0.25)
#let Q = calc.pow(c_no2, 2) / c_n2o4
$
Q = c_#ce("NO2")^2 / c_#ce("N2O4") &= #c_no2^2 / #c_n2o4 = #Q\
Q &< K_c\
#Q &< 0.15
$
Hinreaktion begünstigt, Reaktion verläuft nach rechts da Q < K.

#frage[
  Berechnen Sie den pH Wert einer 0,25 M Ammoniak Lösung (#ce("NH3")) Lösung (K#sub[B] 1,8·10 -5 ).
]

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
#figure(
  ctable(
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
  ),
)
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

#frage[
  Zink (Zn) reagiert mit konzentrierter Salpetersäure (#ce("HNO3")) zu Zinknitrat (#ce("Zn(NO3)2")), Stickstoffmonoxid (NO) und Wasser.
  Stellen Sie die Redoxgleichung nachvollziehbar (Halbgleichungen, Bilanzierung, usw.) auf.
]

#frage[
  Geben Sie je ein Beispiel (Name und Struktur) für folgende Verbindungsklasse (je 2P):
  - Alken
  - Keton
  - Carbonsäure
  - Alkin
  - Halogenalkan
]
#frage[
  Carbonsäuren und Alkohole können unter geeigneten Bedingungen eine Veresterungsreaktion eingehen. Beschreiben Sie diese Reaktion (inklusive der Bedingungen) an einem Beispiel.
]
#frage[
  Erklären Sie anhand eines schematischen Energiediagrams den Begriff der „Aktivierungsenergie“. Welchen Einfluss hat ein Katalysator auf den Energieverlauf, die Geschwindigkeit sowie die Lage des Gleichgewichts der Reaktion?
]

== Altfragen 05.03.2020
#fragen-counter.update(0)
#frage[
  - Geben Sie die Elektronenkonfiguration von Phosphor (Z = 15) im Grundzustand an.
  - Welche formale Ladung (Oxidationszahl) hat Phosphor in Phosphorsäure (#ce("H3PO4"))?
]
- *Phosphor*: #ce("1s^2 2s^2 2p^6 3s^2 3p^3")
- Oxidationszahl: (H=+I, O=-II)
$
3 dot "I" &+& 1 dot x &+& 4 dot "-II" &= 0\
3 &+& x &-& 8 &= 0\
&&&&x&= 5\
$
#frage[
  Was versteht man unter dem Begriff „Elektronegativität“?
  Geben Sie je zwei Beispiele für Elemente mit hoher und niedriger Elektronegativität.
]
Elektronegativität ist ein Maß für die *Fähigkeit* eines Atoms, in einer chemischen Bindung die *Bindungselektronen an sich zu ziehen*.
- Hohe Elektronegativität
  - Fluor (F) 3,98
  - Sauerstoff (O) 3,44
- Niedrige Elektronegativität
  - Lithium (Li) 0,98
  - Natrium (Na) 0,93
#frage[
  Wieviel kg 35%ige Schwefelsäure (#ce("H2SO4")) und wie viel kg 15%ige Schwefelsäure sind notwendig, um 600 kg einer 30%igen Schwefelsäure herzustellen?
]
$
"(I)" quad& 0.15x + 0.35y = 0.3 dot 600\
"(II)" quad& x + y = 600 arrow.long y = 600 - x\
$
$
0.15x + 0.35(600 - x) &= 0.3 dot 600\
0.15x + 210 - 0.35x &= 180\
-0.2x &= -30\
x &= 150\
$
#frage[
  Wie viel g #ce("NH3") entstehen durch Einwirken von #ce("NaOH") auf #qty(350, "g") #ce("(NH4)2SO4")? Es entsteht als Nebenprodukt Natriumsulfat #ce("Na2SO4") und Wasser.
  Molmassen:
  - N #qty(14.9, "g/mol")
- H #qty(1.0, "g/mol")
- O #qty(16.0, "g/mol")
- S #qty(32.1, "g/mol")
]
#align(center, ce("(NH4)2SO4 + 2NaOH -> Na2SO4 + 2NH3 + H2O"))
