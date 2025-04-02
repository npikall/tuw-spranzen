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

== Temperaturabhängigkeit biologischer Prozesse
<temperaturabhängigkeit-biologischer-prozesse>
== CSB und Redfield Stöchiometrie
<csb-und-redfield-stöchiometrie>
== Zellertrag/Yield
<zellertragyield>
Yield bezeichnet die Biomasseausbeute bezogen auf das verbrauchte
Substrat.
#missing[]
