#import "../common.typ":*

= Altfragen Studo
#frage[DTA (Differenz-Thermoanalyse) und DSC (Differential Scanning Calorimetry) erklären, vergleichen und Skizze]

*DTA:*

...misst die *Temperaturdifferenz* zwischen der Probe und einer inerten
Referenzverbindung (zB Aluminiumoxid, Siliziumcarbid, Glaskugeln) in
Abhängigkeit der Temperatur. Wird verwendet bei:

- Analyse von Polymeren, Tonmineralien, Silikaten, Katalysatoren,
- Unterscheidung von Harn- und Blasensteinen, Ermittlung von Phasendiagrammen
- Analyse von Calciumoxalat
- Unterscheidung von Mikroorganismen

#let xs = (0, 1, 2, 3, 4, 5, 6)
#let ys = (0, 0, 1, 0, 0, -1, 0)

#figure(
  lq.diagram(
    grid: none,
    xaxis: (ticks: none, mirror: false, tip: tiptoe.stealth),
    yaxis: (ticks: (-1.5,0,1.5), subticks: none, mirror: false, tip: tiptoe.stealth),
    xlabel: "Temperatur der Umgebung T",
    ylabel: [Temperaturdifferenz $Delta T$],
    lq.path(
      ((0,0), (-1,0)),
      ((1,0), (-.5,0)),
      ((1.5,2), (-.2,0)),
      ((2,0), (-.5,0)),
      ((3,0), (-.5,0)),
      ((3.5,-2), (-.2,0)),
      ((4,0), (-.5,0)),
      ((5,0), (-1,0)),
      label: "DTA",
      stroke: blue,
    ),
  ),
)

*DSC:*

...*Wärmefluss* in einer Probe und einer Referenzsubstanz wird während eines
kontrollierten Temperaturprogrammes gemessen. Energien werden direkt ausgewertet und
nicht die Temperaturdifferenzen. Leistungsfähigste Methode der Thermoanalyse.
Verwendung:
- wie DTA, jedoch exaktere Ergebnisse und direkte Ermittlung kalorischer Größen
- Einsatzgebiet sehr groß,
- Reinheitsprüfungen pharmazeutischer Wirkstoffe,
- Untersuchung von Kristallisationsvorgängen in Polymeren

#frage[HPLC & Bezug zu Stoffen mit absteigender Polarität]
#missing[]

#pagebreak(weak: true)
#frage[Thermische Gravimetrie, DSC, Prinzip, Skizze, Charaktereigenschaften, Verwendung,...]
*Thermogravimetrie:* beruht auf *Massenänderung* der Probe in Abhängigkeit von der
Temperatur; empfindliche Waage, Ofen zur Erzeugung des Temperaturprogrammes,
Vorrichtung zum Erzeugen einer inerten oder reaktiven Atmosphäre.
Siehe @fig-thermogravimetrie.

#frage[UV/VIS Spektroskopie: Signalerzeugung, Skizze, Verwendung, Charaktereigenschaften,
Chromophore und Auxochrome,...]
#missing[]

#frage[AAS (Atomabsorptionsspektroskopie): Skizzen, Erklärung, …]
*Probenvorbereitung:* feste Proben müssen gelöst bzw. aufgeschlossen werden

*Messprinzip:*
- Resonanzabsorption in Gasen: polychromatischer Lichtstrahl wird durch ein Gas im atomaren Zustand geschickt
- davon wird Strahlung in ganz bestimmter Wellenlänge absorbiert
- Hohlkathodenlampe mit dem zu bestimmenden Element als Kathode erzeugt aufgrund elektrischer Glimmentladung das Emissionsspektrum des Elements
- im Strahlengang befindet sich im Atomizer die zu analysierende Probe im Gaszustand
- Atome im Bereich der Resonanzlinie werden absorbiert
- mit dem Monochromator wird nur der Bereich der Resonanzlinie betrachtet
- die Intensität der Resonanzabsorption steht in unmittelbarem Zusammenhang der absorbierten Teilchen N (Lambert Beer’sche Gleichung)

#figure(
  table(
    columns: 2,
    table.hline(),
    table.header([*Vorteile*], [*Nachteile*]),
    table.hline(),
    [Anreicherung],
    [Verunreinigung durch Reagenzien],
    [Detailierte Vorschriften],
    [Absorptionsverluste],
    [Standards ähnlich der Probe],
    [Kontamination],
    table.hline(),
  ),
)

*Strahlungsquellen:*
- Hohlkathodenlampe: Erzeugung von Eigenstrahlung für jedes Element wird eine spezielle Hohlkathodenlampe verwendet; besteht aus einem Edelgas (Ne, Ar) unter Druck von wenigen mbar gefüllten Glaszylinder mit eingeschmolzener Kathode und Anode
- Elektrodenlose Entladungslampe: Element liegt gasförmig vor #sym.arrow Mikrowellen anregung #sym.arrow höherer Intensität und Stabilität
- Kontinuierliche Strahlungsquellen: sehr linienreich, quasi kontinuierlich; zur Bestimmung des unspezifischen Hintergrundes
#missing[]

#frage[Beschreiben Sie, welche Parameter in Zuge der Methodenvalidierung untersucht werden müssen und welche (praktische) Bedeutung diese haben!]

*Methodenvalidierung:*

...ist ein formeller und dokumentierter Nachweis, dass eine Analysemethode für ihren Einsatzzweck geeignet ist und die an sie gestellten Anforderungen erfüllt. Zunächst ist eine Kalibration notwendig.

/ Kalibration: Herstellen eines funktionalen Zusammnhangs zwischen der Konzentration eines Analyten und des gemssenen Signals.

Folgende Kenngrößen sind entscheidend:
- Empfindlichkeit (Steigung der Kalibrationslinie)
- Präzision (Maß für zufälligen Fehler)
- Richtigkeit (Systematische Abweichung)
- Nachweißgrenze (Konzentration, ab der ein Stoff als anwesend gilt)
- Bestimmungsgrenze (Konzentration, ab der ein Stoff mit einer gegebenen Ergebnisunsicherheit betsimmt werden kann)
- Selektivität (Maß für Eignung einer Methode einen Stoff von einem anderen zu unterscheiden)
- Robustheit (Maß für stabilität der Probennahme)

#frage[
  *Trennverfahren:* Beschreiben Sie die Van Deemter-Gleichung und die darin auftretenden Terme! Erklären Sie dabei, was diese Terme darstellen, und nennen Sie zumindest eine Möglichkeit, wie diese optimiert werden können!
]
Die Van Deemter-Gleichung beschreibt den Zusammanhang zwischen der Höhe einer theoretischen Trennstufe und den dynamischen Erscheinungen.
Sie Beschreibt die Trennleistung in der Gas- und Flüssig- Chromatographie. H ist abhängig von der strömungsgeschwindigkeit u. Je kleiner H ist, desto höher ist die Trennleistung des Systems.
$
H = A + B/v + C dot c
$<eq-deemter>

/ H: Trennstufenhöhe
/ u: Strömungsgeschwindigkeit (der mobilen Phase)
Für gepackte Säulen gilt:
/ A-Term: Streudiffusion (Eddy-diffusion) durch stationäre Phase $ A = 2 lambda "d"_p $wobei $lambda$ die stat. Unregelmäßigkeiten der Packung und $"d"_p$ der Korndurchmesser ist.

/ B-Term: Diffusion der Analyten in Richtung der Längsachse der Säule $ B = 2 gamma "D"_(i,m) $wobei $gamma$ der Labyrinthfaktor der Poren und $"D"_(i,m)$ der Diffusionskoeffizient der Komponente i in der mobilen Phase ist.

/ C-Term: Einfluss der Diffusion des Analyten i in der mobilen Phase $ C = (1 + 6k + 11k^2)/(24 (1 + k)^2) dot d_f^2/"D"_(i,m) $

/ D-Term: Einfluss der Diffusion des Analyten i in der stationären Phase $ D = 2/3 dot k/(1+k)^2 dot d_f^2/"D"_(i,s) $

#figure(
  rect(image("../assets/van-deemter.png", height: 23%)),
)

#frage[
  *Elektroanalytik:* Vergleichen Sie eine Methode zur Bestimmung von $O_2$ in der Gasphase
  mit einer Methode für die Bestimmung des $O_2$-Gehaltes in der Flüssigkeit! (mit
  detaillierter Darstellung des Funktionsprinzips und der gerätetechnischen Realisation)
  (Amperometrie & Potentiometrie)
]

*Bestimmung des Sauerstoffgehalts in der Gasphase:*

mittels *Amperometrie*; basiert auf der
Messung des elektrischen Stroms der durch die elektrochemische Reaktion von Sauerstoff an
der Elektrode fließt; Sauerstoff wird an der Elektrode reduziert:
$
"O"_2 + 4e^- + 2"H"_2"O" #sym.arrow 4"OH"^-
$
Der Strom, der durch die Reduktion des Sauerstoffs an der Elektrode fließt, ist proportional
zur Sauerstoffkonzentration in der Gasprobe.

*Lambda-Sonde, Nernst-Gleichung*
Voraussetzung für das Funktionieren
des Sensors: $"O"_2^(2-)$-Ionen müssen mobil sein
Die Nernst-Spannung wird gemessen

- Vorteil: schnelle Reaktionszeit, hohe Empfindlichkeit
- Nachteil: Störungen durch Temperatur/Feuchtigkeit können das Ergebnis beeinflussen

*Bestimmung des Sauerstoffgehalts in der Flüssigkeit:*

mittels *Potentiometrie*; Ermittlung von
Stoffmengenkonzentrationen mittels Messung von Spannungsdifferenzen zwischen
Mess-/Indikatorelektrode und Referenzelektrode, in elektrochemischer Zelle stromlos
misst die Änderung des elektrischen Potentials, das durch die Anwesenheit von Sauerstoff an
der Elektrode verursacht wird; dieses Potential ist in direkter Beziehung zur
Sauerstoffkonzentration in der Flüssigkeit
Die gemessene Spannung zwischen der *Referenz- und der Arbeitselektrode* wird mit einer
Kalibrierungslinie verglichen, um die $"O"_2$-Konzentration zu bestimmen.

- Vorteil: kein Stromfluss -> keine Wärmeentwicklung
- Nachteil: Messung kann durch andere gelöste Gase oder Substanzen beeinflusst werden, langsam in bewegten Flüssigkeiten

#frage[
  *FTIR Spektrometrie:* Beschreiben und erläutern Sie den grundlegenden Aufbau eines
  FTIR-Spektrometers (mit Skizze) mit allen zum Bereich wichtigen Gerätekomponenten.
  Erklären Sie, auf welchen physikalisch-chemischen Prinzipien die Signalerzeugung im
  mittleren IR-Bereich beruht. Welcher Informationsgehalt kann aus einem IR-Spektrum
  abgeleitet werden?
]
#missing[]

#frage[
  *Fehlerarten* in der analytischen Chemie welche tolerierbar, welche nicht, Skizze
]

Siehe @fig-fehler.

+ gewünschtes Ergebnis, statistische und systematische Fehler sind *klein* oder nicht vorhanden
+ Statistischer Fehler *groß*, systematischer *klein*; bei vielen Messungen ist dies tolerierbar, da es ausgeglichen ist, da allerdings oft nur etwa 3 Messungen vorgenommen werden, könnte dies zu groben Ungenauigkeiten führen
+ Ist der statistische Fehler *klein* der systematische allerdings *groß*, so kann dies, wenn bekannt, ausgebessert werden. Ist etwa bekannt, dass eine Messung immer zB 30% unter dem eigentlichen Wert liegt, so kann das ausgebessert werden.
+ Die Fehler sind *groß* #sym.arrow *schlecht*

#frage[
  Verbundverfahren vs. Direktverfahren
]
*Verbundverfahren:* Kombination von Methoden und Techniken zur Probenvorbereitung, zum
Lösen der Probe, zur Abtrennung störender Bestandteile für den Analysevorgang

*Direktverfahren:* zerstörungsfreie Methode wobei die Probe ohne Zwischenschritte analysiert
werden kann

#frage[
  *Trennverfahren:* Auflösung und Trennstufenzahl
  Definition, Skizze, Gleichung (2 für Auflösung, 1 für TSZ), Optimierung
]
#missing[]

#frage[
  Analytische und nicht analytische Kriterien nennen und erklären.
]

*Analytische Kenngrößen:*
- Robustheit
- Präzision
- ...

*Nicht-Analytische Kenngrößen:*
- Kosten
- Aufwand
- Zeit

#frage[Lambert Beer'sches Gesetz]
$
E_lambda = log_10 (I_0/I_1) = epsilon_lambda c d
$
Das Lambert-Beer’sches Gesetz beschreibt die *Abschwächung der Intensität einer Strahlung*
in Bezug zu deren Anfangsintensität bei dem Durchgang durch ein Medium mit einer
absorbierenden Substanz in Abhängigkeit von der Konzentration der absorbierenden Substanz
und der Schichtdicke. Es ist demnach gültig bei allen Prozessen, wo Strahlung absorbiert
wird. Um eine quantitativ Bestimmung nach dem Lambert-Beer’schen Gesetz durchzuführen,
muss man wissen mit welcher Intensität die Strahlung eintrifft und mit welcher Intensität sie
austritt. Detektoren (CCD-Sensoren, CMOS)

#frage[
  *Röntgenfluoreszenzsnalyse* inkl. Gerätetechnik und Detektoren erklären und skizzieren
]

Anregung von Atomen in der Probe; primärer Röntgenstrahl der idR in einer Röntgenröhre
erzeugt wird; trifft auf kernnahes Elektron des Atoms und entfernt es; offene Position wird
von Elektron aus weiter entfernter Außenhülle gefüllt; dabei wird Fluoreszenzstrahlung
abgegeben; die Energie dieser Strahlung ist charakteristisch für das spezielle Atom

*Prinzip der Röntgenröhre:* mittels Hochspannung werden freigesetzten Elektronen
beschleunigt; fallen auf Anode oder Antikathode und werden abgebremst; es entsteht Wärme
und Röntgenstrahlung mit Wellenlänge $10^(-8) "bis" 10^(-11)$m

*Aufbau von Röntgenspektrometern:*
- *energiedispersive RFA* Detektorspektrum besteht aus fest montiertem HalbleiterDetektor, in dem die Röntgenfluoreszenzstrahlen durch Energieverlust nachgewiesen und
  nach Verstärkung der Signale nach ihrer Energie geordnet als Spektrum dargestellt
  werden
- *wellenlängedispersive RFA* apparativ aufwendiger; durch Kollinator trifft emittierte
  Röntgenstrahlung auf Analysatorkristall durch welchen nur Strahlung bestimmter Wellenlänge erfasst wird, durch verstellen des Winkels werden verschiedene Wellenlängen emittiert

- *energiedispersive Detektoren*:
  - Vorteil: simultane Aufnahme (schnell)
  - Nachteil: geringe Energieauflösung, geringe Nachweisstärke, schlechtes Signal/Untergrund-Verhältnis

#frage[
  *Elektronenstrahl-Mikroanalytik (ESMA):* Beschreiben und erklären Sie, welche Signale
  Sie in der ESMA erhalten können, aus welcher räumlichen Tiefe diese Signale stammen
  und welchen Informationsgehalt sie tragen (mit Skizze).
  ESMA welche Strahlen entstehen und welche Informationen liefern diese UV/VIS
  Spektroskopie
  beide Arten inkl. Unterarten, Vorteile, Nachteile, Anwendungen, Charakteristika,
  Aufbau, Funktion, Skizze, …)
]

#frage[
  *Abbildende (Mikro-) Analytik:* Erläutern Sie den Aufbau und die Funktion eines
  Rasterelektronenmikroskops. Gehen Sie dabei auch besonders auf die verschiedenen
  Prozesse der Signalerzeugung ein und erläutern Sie, welche Signale generiert werden
  und welche Information sie bieten. Diskutieren sie dabei auch die laterale Auflösung
  und die Informationstiefe, die das Signal aufweist.
]

#frage[
  *Massenspektrometrie:* Erläutern Sie Prinzip, gerätetechnische Realisierung (detailliert,
  greifen Sie dabei zumindest eine Bauform heraus, die Sie genauer – mit Skizzebeschreiben) und Informationsgehalt der Massenspektrometrie!
]

- Ionisierung der Probe
- Auftrennung der Ionen in der Gasphase nach ihren Masse-/Ladungsverhältnis und quantitative Bestimmung

*Information:* Masse-/Ladungsverhältnis der Ionen (erlaubt idR Rückschluss auf Molekülmasse)

*Anwendung:* Strukturaufklärung, optische Spurenanalytik

*Gerätetechnik:*
#figure(
  rect(image("../assets/massenspektrometer.jpg", width: 50%)),
)

#frage[
  Geben Sie eine systematische Gliederung der Ihnen bekannten *elektroanalytischen
  Verfahren* (Unterteilung mit/ohne Stromfluss). Beschreiben Sie bei jeder Technik,
  welches Signal gemessen wird, welches Messprinzip (oft physikalisch-chemisches)
  zugrunde liegt und welche Information man aus der jeweiligen elektroanalytischen
  Technik ziehen kann.
]

Siehe @fig-elektroanlytische-methoden

#frage[
  *Verfahren zur Probennahme* #sym.arrow Siehe @sssec-verfahren-probenahme
]
