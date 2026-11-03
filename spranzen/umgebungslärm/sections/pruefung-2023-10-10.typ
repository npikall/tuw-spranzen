#import "@local/spranzen:0.1.0": *

= Prüfung vom 10. Oktober 2023

Prüfung VO Umgebungslärm, LVA 230.054. Notenskala: $<20$ P: 5, $>=20$ P: 4, $>=26$ P: 3,
$>=32$ P: 2, $>=37$ P: 1.

== Aufgabe 1: Messtechnik (12 Punkte)
#qcounter.update(0)

#question[a) Erläutern Sie den Basis- und den mittleren Spitzenpegel (inkl. Definition,
  Index, Bewertungen). (7 P)]
#answer[]

#question[b) Warum ist es in der Akustik häufig erforderlich, nicht nur Einzahlwerte von
  Schalldruckpegeln, sondern Frequenzspektren zu betrachten (inkl. 2 Beispiele)? (3 P)]
#answer[]

#question[c) Welche zwei Arten von Spektren werden üblicherweise für Umgebungslärm und die
  Prognoserechnung verwendet? (2 P)]
#answer[]

== Aufgabe 2: Schallausbreitung (8 Punkte)
#qcounter.update(0)

#question[a) Nennen Sie die prinzipiellen Möglichkeiten bei der Planung, um die
  Abschirmwirkung von Lärmschutzwänden zu steigern. (2 P)]
#answer[]

#question[b) Erläutern Sie zwei dieser Möglichkeiten im Detail (inkl. etwaiger Vor- und
  Nachteile, etwaiger Limitierungen und Skizze). (6 P)]
#answer[]

== Aufgabe 3: Schallimmissionen (12 Punkte)
#qcounter.update(0)

Eine wesentliche Säule der Umgebungslärmrichtlinie sind Lärmkarten. Erläutern Sie den
Begriff anhand folgender Fragen.

#question[a) Zu welchem Zweck ist in der Richtlinie die Erstellung dieser Karten
  vorgesehen? (2,5 P)]
#answer[]

#question[b) Wie häufig sind Lärmkarten zu erstellen? (1 P)]
#answer[]

#question[c) Welche Größen werden in Lärmkarten dargestellt? (2 P)]
#answer[]

#question[d) Wie kann von diesen Größen ein Bezug zu der Wirkung auf Menschen hergestellt
  werden und welche Wirkungen werden in der aktuellen Fassung der Richtlinie betrachtet?
  (2,5 P)]
#answer[]

#question[e) Welche Bereiche und welche Verursacher sind bei der Kartierung zu
  berücksichtigen? (3 P)]
#answer[]

#question[f) Wem und in welcher Form stehen die erstellten Lärmkarten (in Österreich) zur
  Verfügung? (1 P)]
#answer[]

== Aufgabe 4: Schallberechnung (8 Punkte)
#qcounter.update(0)

#question[Eine Schallquelle emittiert im Wesentlichen zwei Töne, welche in einer
  Entfernung $x_1 = 10$ m im 100-Hz- und im 1000-Hz-Terzband die beiden
  Schalldruckbandpegel $L_(p,100,x_1) = L_(p,1000,x_1)$ von jeweils 100 dB hervorrufen.
  Berechnen Sie die Terzbandpegel $L_(p,100,x_2)$ und $L_(p,1000,x_2)$ sowie den
  Gesamtpegel $L_(p,x_2)$ in einer Entfernung $x_2 = 2$ km zur Schallquelle, wenn eine
  Lufttemperatur $theta$ von 20 °C und eine Luftfeuchtigkeit $phi$ von 70 % sowie
  Windstille vorherrscht.

  Gehen Sie von freier Schallausbreitung aus und modellieren Sie die Schallquelle als
  Punktquelle über ideal absorbierendem Gelände. Berücksichtigen Sie dabei zunächst die
  geometrische Ausbreitungsdämpfung und anschließend die Luftabsorption
  (Absorptionskoeffizienten $alpha$ finden Sie in @tab-2023-10-10-luftabsorption). Runden
  Sie die Ergebnisse auf 1 Nachkommastelle.]
#answer[]

#let absorption-block(frequency, rows) = {
  let temperatures = ("0", "10", "20", "30", "40")
  (
    table.cell(rowspan: 5, align: horizon)[#frequency],
    ..rows
      .zip(temperatures)
      .map(((row, temperature)) => (temperature, ..row.split(" ")).map(cell => [#cell]))
      .flatten(),
  )
}

#figure(
  text(size: 8pt, table(
    columns: 12,
    align: right,
    inset: (x: 3pt, y: 2pt),
    stroke: none,
    table.hline(),
    table.header(
      [$f$ in kHz], [$theta$ in °C], [10], [15], [20], [30], [40], [50], [60], [70], [80], [90],
    ),
    table.hline(),
    ..absorption-block("0,1", (
      "0,88 0,57 0,45 0,36 0,34 0,32 0,31 0,30 0,28 0,27",
      "0,59 0,49 0,46 0,43 0,39 0,35 0,31 0,28 0,25 0,23",
      "0,62 0,58 0,53 0,43 0,35 0,29 0,25 0,22 0,19 0,17",
      "0,72 0,60 0,49 0,36 0,28 0,22 0,19 0,16 0,14 0,13",
      "0,70 0,51 0,40 0,27 0,21 0,17 0,14 0,12 0,11 0,09",
    )),
    table.hline(stroke: 0.3pt),
    ..absorption-block("0,25", (
      "4,00 2,63 1,85 1,17 0,92 0,82 0,78 0,76 0,76 0,76",
      "2,29 1,48 1,20 1,05 1,04 1,05 1,05 1,04 1,02 1,00",
      "1,58 1,39 1,39 1,42 1,39 1,32 1,23 1,13 1,04 0,97",
      "1,82 1,88 1,87 1,68 1,45 1,25 1,00 0,96 0,86 0,78",
      "2,45 2,28 2,02 1,55 1,23 1,02 0,83 0,75 0,66 0,59",
    )),
    table.hline(stroke: 0.3pt),
    ..absorption-block("0,5", (
      "9,25 8,14 6,16 3,73 2,63 2,08 1,78 1,61 1,51 1,45",
      "7,52 4,59 3,27 2,28 1,98 1,90 1,90 1,93 1,97 2,00",
      "4,25 2,97 2,60 2,52 2,63 2,73 2,79 2,80 2,77 2,71",
      "3,40 3,26 3,41 3,67 3,70 3,57 3,36 3,14 2,91 2,71",
      "4,28 4,68 4,82 4,56 4,04 3,54 3,12 2,77 2,48 2,25",
    )),
    table.hline(stroke: 0.3pt),
    ..absorption-block("1,0", (
      "14,0 18,3 17,7 12,7 9,00 6,83 5,50 4,64 4,06 3,68",
      "21,6 15,4 11,0 6,77 5,07 4,26 3,86 3,66 3,57 3,54",
      "14,1 8,72 6,53 5,01 4,65 4,66 4,80 4,98 5,15 5,39",
      "8,67 6,52 6,00 6,15 6,63 7,03 7,29 7,41 7,41 7,32",
      "7,68 7,68 8,25 9,24 9,62 9,52 9,14 8,66 8,14 7,62",
    )),
    table.hline(stroke: 0.3pt),
    ..absorption-block("2,5", (
      "17,2 29,2 39,5 47,0 42,3 35,3 29,2 24,8 21,1 18,5",
      "48,3 57,2 41,4 35,4 25,7 20,0 16,5 14,3 12,7 11,6",
      "63,5 44,8 32,6 21,0 16,1 13,7 12,5 11,8 11,9 11,3",
      "43,1 27,6 21,0 16,0 14,6 14,3 14,6 15,1 15,7 16,3",
      "28,2 20,8 18,4 18,0 19,2 20,7 22,0 23,1 23,9 24,4",
    )),
    table.hline(stroke: 0.3pt),
    ..absorption-block("5,0", (
      "20,5 34,5 50,3 78,6 93,4 94,8 89,0 80,7 72,5 65,1",
      "61,0 95,6 113 108 87,5 70,8 58,8 50,2 43,9 39,2",
      "133 132 109 73,9 55,1 44,1 37,9 33,6 30,6 28,6",
      "139 96,2 71,6 48,7 39,0 34,1 31,6 30,3 29,7 29,6",
      "96,4 64,7 50,8 39,9 36,8 36,3 37,1 38,4 39,9 41,5",
    )),
    table.hline(stroke: 0.3pt),
    ..absorption-block("10,0", (
      "32,2 46,7 64,6 104 142 172 190 198 197 191",
      "75,9 125 172 230 237 220 197 175 157 141",
      "193 267 284 242 194 159 135 118 105 95,3",
      "332 301 246 172 133 111 96,5 87,1 80,7 76,1",
      "318 226 174 124 102 90,4 84,3 81,0 79,5 79,1",
    )),
    table.hline(),
  )),
  caption: [
    Luftabsorption in dB/km abhängig von Frequenz $f$, Lufttemperatur $theta$ und relativer
    Luftfeuchtigkeit $phi$ in % (Spaltenköpfe 10 bis 90) aus der Angabe.
  ],
) <tab-2023-10-10-luftabsorption>
