#import "../common.typ":*

= Kometabolismus, Abbau und Transformation
<kometabolismus-abbau-und-transformation>
== Abbau & Transformation
<abbau-transformation>
=== Abbaubarkeit
Abbau ist ein Prozess bei dem org. Chemikalien biologisch und deren
Enzyme zersetzt werden. Im Idealfall Abbau bis zur Mineralisierung
(anorg. Stoffe). Abbau kann auch in stabilen Transformationsprodukten
stehen bleiben. Es gibt drei Stufen:

- Umwandlung in ATP (Adenosintriphosphat)

- Citratzyklus zur Bildung zentraler Intermediate unter ATP Verbrauch

- Ausscheidung Stoffwechselprodukte

Weiters unterscheidet man zwischen folgenden Abbaubarkeiten:

- Bio. leicht abbaubar

- Bio. schwer abbaubar

- Persistente Stoffe / refraktäre Stoffe

Ein *Metabolit* ist zwischen Substrat (Ausgang) und Produkt (Ende), also
ein Intermediat. Diese müssen in Folgereaktionen eintreten können und
haben eine begrenzte Halbwertszeit.

Ein *Sekundärmetabolit* ist meistens
nicht essentiell für Organismen und wird oft als Stoffwechselprodukt
ausgeschieden.

*Transformationsprodukte*
#missing[Transformationsprodukte??]

=== Kometabolismus
Durch *Synergismus*, also dem Teilabbau von Stoffen durch viele MO, werden
gemeinschaftlich Kontaminenten mieralisiert.

Bei der *Kometabolisierung*
wird der Abbau von Kontaminenten durch zugabe von Nährstoffen oder
Substrate ermöglicht. Der Kontaminent reagiert dann sozusagen mit.

== Wachstum und Wachstumskinetik
<wachstum-und-wachstumskinetik>
/ Generationszeit: Zeitraum, in dem eine Population ihre Zellzahl verdoppelt
/ Verdopplungszeit: Zeitraum für die Verdopplung der Zellmasse
/ Teilungsrate: Anzahl der Zellteilungen pro Zeiteinheit
/ Wachstumsrate: Zunahme der Zellzahl pro Zeiteinheit
/ Spezifische Wachstumsrate: Wachstumsrateunter Limitierung durch ein Substrat
/ Maximale spez. Wachstumsrate: Wachstumsrate unter optimalen Bedingungen
#let xs = (0,2,6,8,10)
#let ys = (1,1,4,4, 3)

#figure(
  lq.diagram(
    xlim: (0, 10),
    ylim: (0, 5),
    width: 9cm,
    xaxis: (subticks: none, ticks: none, position: bottom, tip: tiptoe.stealth, stroke: 1pt),
    yaxis: (subticks: none, ticks: none, tip: tiptoe.stealth, position: left, stroke: 1pt),
    xlabel: "Zeit",
    ylabel: "log der Zellzahl",
    lq.plot(xs, ys, stroke: 1.5pt, mark: none),
    lq.vlines(2, 6, 8, line: .4pt),
    lq.place(1, 4)[Anlauf],
    lq.place(4, 4)[Exponentielles\ Wachstum],
    lq.place(7, 2)[Stationäre\ Phase],
    lq.place(9, 1)[Absterben],
  ),
  caption: "Phasen des Wachstums",
)
- Anlauf Phase (Zeit der Anpassung an Umweltbedingungen bis zu max. Vermehrungsrate)
- Exponentielle Phase (konstante minimale Generationszeit)
- Stationäre Phase (Absterberate und Wachstumsrate im Gleichgewicht)
- Absterbe Phase

#gc.example()[
  #let (c, a) = (100, 1.05)
  Wachstum einer MO-Population. Mit $c_0 = #c$ Bakterien. Diese wachsen pro Zeit um $5%$. Daher ist $a = #a$.

  $
  f(t) = c_0 dot a^t
  $
  Wie viele Bakterien sind nach 5 Stunden da?
  #let t = 5
  #let res1 = calc.round(c * calc.pow(a, t), digits: 1)
  $
  f(#t) = #c dot #a^#t = #res1
  $
  Wann hat sich die Bakterienzahl verdoppelt?
  #let t2 = calc.round(calc.log(2) / calc.log(a), digits: 1)
  $
  c_0 dot a^t = 2 dot c_0 arrow t = log(2)/log(a)\
  t = #t2 "h"
  $
]

==== Michaelis Menten Gelichung
$
v = (v_"max"dot [S])/(K_M + [S])
$

Die Michaelis Menten Konstante $K_M$ ist die Substratkonzentration, bei der die
Reaktionsgeschwindigkeit $v$ die Hälfte der maximalen Geschwindigkeit $v_"max"$ beträgt.
$
K_M arrow 1/2 dot v_"max"
$

$
mu = mu_"max" dot S/(S + K_"S max") ["mg/l"]
$
#missing[]

== Temperaturabhängigkeit biologischer Prozesse
<temperaturabhängigkeit-biologischer-prozesse>

=== Temperatur / RGT-Regel
Die Reaktion-Geschwindigkeit-Temperatur-Regel (RGT-Regel) besagt, dass eine Erhöhung der Temperatur um *10 °C* eine *Verdopplung* der Reaktionsgeschwindigkeit zur Folge hat.
$
theta_(1degree "C") = root(tau_2 - tau_1, tau_2/tau_1)
$
Sind die Raten $tau_i$ bekannt für zwei Temperaturen $T_i$, so kann der Faktor $theta$ für Veränderung errechnet werden.

== CSB und Redfield Stöchiometrie
<csb-und-redfield-stöchiometrie>
CSB als Basis von Massenbilanzen in
Systemen mit mikrobiellen Prozessen!
#figure(
  table(
    columns: 3,
    table.hline(),
    table.header([Element], [MG], [CSB]),
    table.hline(),
    [C],
    [12],
    [32g CSB/Mol C],
    [H],
    [1],
    [8g CSB/Mol H],
    [O],
    [16],
    [-16g CSB/Mol O],
    [N],
    [14],
    [-24g CSB/Mol N],
    [S],
    [32],
    [48g CSB/Mol S],
    [P],
    [31],
    [48g CSB/Mol P],
    table.hline(),
  ),
)
#gc.example()[
  *CSB Berechnung:* (#ce("CH2O"))
  - #ce("1 Mol C #math.dot 32g CSB/Mol C -> 32g #math.quad O2")
- #ce("2 Mol H #math.dot 8g CSB/Mol H -> 16g #math.quad O2")
- #ce("1 Mol O #math.dot -16g CSB/Mol O -> -16g #math.quad O2")
- #sym.arrow.long 32+ 16-16 = 32g CSB/Mol #ce("CH2O")
]

== Zellertrag/Yield
<zellertragyield>
Yield bezeichnet die Biomasseausbeute bezogen auf das verbrauchte
Substrat.
$
Y_("X/S") = (X - X_0)/(S_0 - S)
$
#missing[]
