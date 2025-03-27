#import "../common.typ":*

= Thermoanalytische Analyseverfahren
Oberbegriff für Methoden, bei denen physikalische und chemische Eigenschaften eines Stoffes, eines Subsatzgemisches oder von Reaktionsgemischen als Funktion der Temperatur gemessen werden, wobei die Probe einem kontrollierten Temperaturprogramm unterzogen wird.

Arten der thermoanalytischen Verfahren:
- Thermogravimetrie
- Thermische Analyse
- Kalorimetrische Verfahren

== Thermogravimetrie

/ Messprinzip: beruht auf Massenänderung der Probe in Abhängigkeit von der Temperatur.
/ Messanordnung: Empfindliche Waage, Ofen für Temperaturprogramm, Vorrichtung für inerte oder reaktiven Atmosphäre.
#figure(
  lq.diagram(
    width: 10cm,
    xlim: (0,15),
    ylim: (0,7),
    xaxis: (ticks: none),
    yaxis: (ticks: none),
    legend: (position: (horizon + right), fill: none),
    lq.plot((0,7), (6,6), label: "thermostabile Substanz"),
    lq.plot((0, 0.4, 1, 7), (5.7, 5.2, 5, 5), label: "Trocknung"),
    lq.plot((0, 2, 2.8, 7), (4.7, 4.7, 4, 4), label: "zwei stabile Formen"),
    lq.plot((0, 1, 1.5, 3, 3.5, 7), (4, 4, 3.5, 3.5, 3, 3), label: "drei stabile Formen"),
  ),
)<fig-thermogravimetrie>

== Differenz-Thermoanalyse (DTA)

/ Messprinzip: beruht auf Messung der Temperaturdifferenz zwischen Probe und einer inerten Referenzverbindung in Abhängigkeit von der Temperatur.

#missing[]

== Differential Scanning Calorimetry (DSC)

#missing[]
