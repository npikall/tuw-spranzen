#import "@local/spranzen:0.1.0": *

= Prüfung vom 10. Oktober 2023

Prüfung VO Umgebungslärm, LVA 230.054. Notenskala: $<20$ P: 5, $>=20$ P: 4, $>=26$ P: 3,
$>=32$ P: 2, $>=37$ P: 1.

== Aufgabe 1: Messtechnik (12 Punkte)
#qcounter.update(0)

#question[a) Erläutern Sie den Basis- und den mittleren Spitzenpegel (inkl. Definition,
  Index, Bewertungen). (7 P)]
#answer[Beide Pegel sind Kenngrößen der Pegelstatistik auf Basis der Summenhäufigkeit
  (kumulativen Häufigkeit) des zeitbewerteten Schalldruckpegels über die Messzeit; sie geben
  an, welcher Pegel in einem bestimmten Anteil der Messzeit überschritten wird.
  - *Basispegel* (Index „95“, z.B. $L_(A F,95)$): Pegelwert, der in 95 % der Messzeit
    überschritten wird. Er beschreibt das nahezu ständig vorhandene Hintergrundgeräusch
    (die „Grundgeräuschkulisse“) ohne einzelne Schallereignisse.
  - *Mittlerer Spitzenpegel* (Index „1“ bzw. „01“, z.B. $L_(A F,1)$): Pegelwert, der in
    1 % der Messzeit überschritten wird. Er beschreibt die regelmäßig auftretenden
    Pegelspitzen eines Geräusches.
  - *Bewertungen*: Eine Zeitbewertung ist erforderlich (im Allgemeinen Fast), meist in
    Verbindung mit der Frequenzbewertung A.
]

#question[b) Warum ist es in der Akustik häufig erforderlich, nicht nur Einzahlwerte von
  Schalldruckpegeln, sondern Frequenzspektren zu betrachten (inkl. 2 Beispiele)? (3 P)]
#answer[Viele physikalische Effekte in der Akustik sind frequenzabhängig und können durch einen
  Einzahlwert nicht abgebildet werden. Beispiele sind die Luftdämpfung bei der
  Schallausbreitung (hohe Frequenzen werden stärker gedämpft), die Schallabschirmung durch
  Beugung (Abschirmmaß steigt mit der Frequenz) und das frequenzabhängige
  Absorptionsvermögen von Materialien. Zudem lassen sich spektrale Modifikationen im
  Frequenzbereich nachvollziehbar und mit geringem Rechenaufwand berücksichtigen.]

#question[c) Welche zwei Arten von Spektren werden üblicherweise für Umgebungslärm und die
  Prognoserechnung verwendet? (2 P)]
#answer[Üblicherweise werden Terzbandspektren und Oktavbandspektren (gefilterte Spektren mit
  konstanter relativer Bandbreite) verwendet.]

== Aufgabe 2: Schallausbreitung (8 Punkte)
#qcounter.update(0)

#question[a) Nennen Sie die prinzipiellen Möglichkeiten bei der Planung, um die
  Abschirmwirkung von Lärmschutzwänden zu steigern. (2 P)]
#answer[Die Abschirmwirkung kann durch eine Verschiebung der Beugekante gesteigert werden
  (Vergrößerung des Beugungswinkels): Annäherung der Wand an die Quelle, Abwinkelung bzw.
  Krümmung des Wandkopfes, Aufsatzelemente auf der Wandkrone und eine höhere Wand
  (zusätzlich: ausreichende Länge und hochabsorbierende quellseitige Oberfläche).]

#question[b) Erläutern Sie zwei dieser Möglichkeiten im Detail (inkl. etwaiger Vor- und
  Nachteile, etwaiger Limitierungen und Skizze). (6 P)]
#answer[*Annäherung an die Quelle*: Eine näher an der Quelle stehende Wand erzeugt bei gleicher
  Höhe einen größeren Beugungswinkel bzw. Umweg $delta$ und damit ein höheres Abschirmmaß
  (sofern der Immissionspunkt höher liegt als die Wand). Vorteil: hohe Wirkung ohne
  zusätzliche Wandhöhe. Limitierungen: an der Straße Pannenstreifen, Leitschiene,
  Sichtweiten; an der Schiene das Lichtraumprofil und die dynamische Beanspruchung durch
  Druck-Sog-Belastungen bei hohen Geschwindigkeiten. In der Praxis wird meist bereits die
  nächstmögliche Position realisiert.

  *Höhere Wand*: Mit der Wandhöhe steigt der Beugungswinkel und damit die Schirmwirkung.
  Vorteile: einfaches, wirksames Prinzip, auch gegen höher liegende Quellen. Nachteile und
  Limitierungen: übliche maximale Höhen von ca. 4–6 m, deutliche Zunahme der Lasten (Wind,
  Druck-Sog-Belastung durch Vorbeifahrten), dadurch aufwändigere Fundamente und Statik
  (bei nachträglicher Erhöhung muss die bestehende Konstruktion dafür ausgelegt sein),
  Landschaftsbild, Verschattung und höhere Kosten.

  (Weitere: Wandabwinkelung – wirkt wie eine gerade, gleich hohe Wand an der Position der
  Beugekante, wegen Lichtraumprofil und Oberleitung nur bei der Straße üblich;
  Aufsatzelemente – nachträglicher Einbau möglich, Wirkung aber begrenzter, wenig
  verbreitet.)

  Skizze: Querschnitt mit Quelle S, Wand und Immissionspunkt R; Variante mit näher an S
  gerückter bzw. erhöhter Wand zeigt den steileren Weg über die Beugekante und den
  größeren Beugungswinkel.]

== Aufgabe 3: Schallimmissionen (12 Punkte)
#qcounter.update(0)

Eine wesentliche Säule der Umgebungslärmrichtlinie sind Lärmkarten. Erläutern Sie den
Begriff anhand folgender Fragen.

#question[a) Zu welchem Zweck ist in der Richtlinie die Erstellung dieser Karten
  vorgesehen? (2,5 P)]
#answer[Lärmkarten dienen der Ermittlung der Belastung durch Umgebungslärm nach für alle
  Mitgliedstaaten gemeinsamen Bewertungsmethoden. Sie bilden die Grundlage für die
  Information der Öffentlichkeit über Umgebungslärm und seine Auswirkungen sowie für die
  Ausarbeitung von Aktionsplänen, mit denen Umgebungslärm verhindert bzw. gemindert und
  ruhige Gebiete erhalten werden sollen (dreistufiger Ansatz der Richtlinie 2002/49/EG).
  Zudem ermöglichen sie die Ermittlung der Anzahl betroffener Personen.]

#question[b) Wie häufig sind Lärmkarten zu erstellen? (1 P)]
#answer[Lärmkarten sind mindestens alle 5 Jahre auszuarbeiten bzw. zu überarbeiten.]

#question[c) Welche Größen werden in Lärmkarten dargestellt? (2 P)]
#answer[Dargestellt werden die Lärmindizes $L_"den"$ (Tag-Abend-Nacht-Lärmindex) und
  $L_"night"$ (Nacht-Lärmindex), also A-bewertete, äquivalente Dauerschallpegel über ein
  durchschnittliches Jahr, getrennt nach Quellenart in einer Höhe von 4 m (Straße
  zusätzlich 1,5 m).]

#question[d) Wie kann von diesen Größen ein Bezug zu der Wirkung auf Menschen hergestellt
  werden und welche Wirkungen werden in der aktuellen Fassung der Richtlinie betrachtet?
  (2,5 P)]
#answer[Der Bezug erfolgt über Dosis-Wirkungs-Relationen (Anhang III der Richtlinie, seit
  Richtlinie 2020/367), die aus Feldstudien abgeleitet wurden und den Lärmindizes einen
  Anteil betroffener Personen zuordnen. Betrachtet werden starke Belästigung (HA, aus
  $L_"den"$), starke Schlafstörung (HSD, aus $L_"night"$) sowie (nur für Straßenverkehr)
  ischämische Herzkrankheiten (IHD).]

#question[e) Welche Bereiche und welche Verursacher sind bei der Kartierung zu
  berücksichtigen? (3 P)]
#answer[Zu kartieren sind Hauptverkehrsstraßen mit mehr als 3 Mio. Kfz pro Jahr,
  Haupteisenbahnstrecken mit mehr als 30 000 Zügen pro Jahr, Großflughäfen mit mehr als
  50 000 Bewegungen pro Jahr sowie Ballungsräume mit mehr als 100 000 Einwohnern. In
  Ballungsräumen sind alle Verursacher zu berücksichtigen: Straßenverkehr,
  Schienenverkehr (inkl. Straßenbahn), Flugverkehr und Industrie bzw. Gewerbe (industrielle
  Tätigkeiten).]

#question[f) Wem und in welcher Form stehen die erstellten Lärmkarten (in Österreich) zur
  Verfügung? (1 P)]
#answer[Die Lärmkarten stehen in Österreich der Öffentlichkeit frei zur Verfügung, und zwar
  online als interaktive Karten auf www.laerminfo.at (inkl. Betroffenenzahlen und
  Aktionsplänen); zudem werden sie an die Europäische Kommission gemeldet.]

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
#answer[*Geometrische Ausbreitungsdämpfung* (Punktquelle, Kugelwelle):
  $
    Delta L_"div" = 20 dot lg(x_2 / x_1) = 20 dot lg("2000" / "10") = "46,0 dB"
  $
  Ohne Luftabsorption ergeben sich somit in beiden Terzen $100 - "46,0" = "54,0 dB"$.

  *Luftabsorption* bei 20 °C und 70 % (Tabelle): $alpha_100 = "0,22 dB/km"$,
  $alpha_1000 = "4,98 dB/km"$, zusätzlicher Weg $x_2 - x_1 = "1,99 km"$:
  $ L_(p,100,x_2) = "54,0" - "0,22" dot "1,99" = "54,0" - "0,4" = "53,5 dB" $
  $ L_(p,1000,x_2) = "54,0" - "4,98" dot "1,99" = "54,0" - "9,9" = "44,1 dB" $

  *Gesamtpegel* (energetische Addition):
  $ L_(p,x_2) = 10 dot lg(10^("5,35") + 10^("4,41")) = "54,0 dB" $]

#let absorption-block(frequency, rows) = {
  let temperatures = ("0", "10", "20", "30", "40")
  (
    table.cell(rowspan: 5, align: horizon)[#frequency],
    ..rows
      .zip(temperatures)
      .map(((row, temperature)) => (temperature, ..row.split(" ")).map(
        cell => [#cell],
      ))
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
      [$f$ in kHz],
      [$theta$ in °C],
      [10],
      [15],
      [20],
      [30],
      [40],
      [50],
      [60],
      [70],
      [80],
      [90],
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
