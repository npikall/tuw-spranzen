#import "../common.typ":*

= Einleitung
/ Analytische Chemie: Wissenschaft der Gewinnung von Informationen über die Zusammensetzung, den Energiezustand, die Struktur und Anordnung stofflicher Systeme und deren Veränderung in Raum und Zeit.

== Teilbereiche der AC
- Verteilungsanalyse (Bestandteile, Menge, Raumkoordinaten)
- Prozessanalyse (Bestandteile, Menge, Zeit)
- Gehaltsanalyse (Art des Stoffes, Konzentration)
- Strukturanalyse (Konstitution, Konfiguration, Konformation von Molekülen)

== Ablauf des analytischen Problems
#figure(
  diagram(
    node-corner-radius: 5pt,
    node-fill: colors.at(0),
    spacing: 5pt,
    debug: 0,
    node((0,-1), name: <user-error>, "Problem auf Nutzerebene", fill: colors.at(2)),
    edge(<user-error>, <error>, "-|>", shift: 15pt),
    edge(<user-error>, <error>, "<|-", shift: -15pt),
    node((0,1), name: <error>, "Analytisches Problem", fill: colors.at(1)),
    edge(<error>, <obj>, "-|>"),
    node((0,3), name: <obj>, "Untersuchungsobjekt"),
    edge("-|>"),
    node((1,3), "Probennahme"),
    edge("-|>"),
    node((2,3), "Probenvorbereitung"),
    edge("-|>"),
    node((3,3), "Messung"),
    edge("-|>"),
    node((3,1), "Auswertung"),
    edge("-|>"),
    node((3,0), name: <info>, "Analytische Information", fill: colors.at(1)),
    edge("l,d,l", <error>, "-|>"),
    // edge(<info.west>, (2,1), <error>, "-|>"),
  ),
  caption: [Idealerweise wird ein analytisches Problem mit einer Rückkoppelungschleife gelöst.],
)

== Systematik der analytischen Chemie
#figure(
  diagram(
    node-corner-radius: 5pt,
    node-fill: colors.at(0),
    spacing: 5pt,
    debug: 0,
    node(enclose: ((0,0), (1,0)), name: <nass>, "Nasschemische Methoden", fill: colors.at(2)),
    node((0,1), name: <gravi>, "Gravimetrie", fill: colors.at(1)),
    node((0,2), name: <gravi-bsp>, [Wägen,\ Fällen]),
    node((1,1), name: <vol>, "Volumetrie", fill: colors.at(1)),
    node((1,2), name: <vol-bsp>, [Titrieren]),
    edge(<nass>, <gravi>),
    edge(<nass>, <vol>),
    edge(<gravi>, <gravi-bsp>),
    edge(<vol>, <vol-bsp>),
    node(enclose: ((2,0), (4,0)), name: <instru>, "Instrumentelle Methoden", fill: colors.at(2)),
    node((2.2,1), name: <opt>, "Optische\nMethoden", fill: colors.at(1)),
    node((2.2,2), name: <opt-bsp>, [Emission,\ Absorption]),
    node((3,1), name: <trenn>, "Trenn-\nmethoden", fill: colors.at(1)),
    node((3,2), name: <trenn-bsp>, [Chromato-\ graphie]),
    node((3.9,1), name: <elek>, "Elektroanalytische\nMethoden", fill: colors.at(1)),
    node((3.9,2), name: <elek-bsp>, [Elektroanalyse]),
    edge(<instru>, <opt>),
    edge(<instru>, <trenn>),
    edge(<instru>, <elek>),
    edge(<opt>, <opt-bsp>),
    edge(<trenn>, <trenn-bsp>),
    edge(<elek>, <elek-bsp>),
  ),
)

== Arbeitsbereich der Analysemethoden
#show table.header: it => strong(it)
#figure(
  table(
    columns: 4,
    table.hline(),
    table.header([Methode], [Größenordnung], [Methode], [Größenordnung]),
    table.hline(),
    [Gravimetrie],
    $10^(-1) - 10^(-2) "g/L"$,
    [Photometrie],
    $10^(-3) - 10^(-6) "g/L"$,
    [Titrimetrie],
    $10^(-1) - 10^(-4) "g/L"$,
    [Fluorimetrie],
    $10^(-6) - 10^(-9) "g/L"$,
    [Potentometrie],
    $10^(-1) - 10^(-6) "g/L"$,
    [Atomspektrometrie],
    $10^(-3) - 10^(-9) "g/L"$,
    [Elektrogravimetrie],
    $10^(-1) - 10^(-4) "g/L"$,
    [Chromatograpie],
    $10^(-3) - 10^(-9) "g/L"$,
    [Volumetrie],
    $10^(-3) - 10^(-10) "g/L"$,
    [],
    [],
    table.hline(),
  ),
)

== Bestimmungsverfahren allgemein
/ Verbundverfahren: Kombination von Methoden und Techniken zur Probenvorbereitung, zum Lösen der Probe, zur Abtrennungstörender Bestandteile für den Analysevorgang.

/ Direktverfahren: zerstörungsfreie Methode wobei die Probe ohne zwischenschritte analysiert werden kann.

== Fehlerquellen bei analytischen Verfahren
Mit ansteigender Zahle der Teilschritte eines Analysenverfahrens steigt die Anzahl der möglichen Fehlerquellen.
*Systematische Fehler* können sein:
- Probennahme (Inhomogenität, Blindwerte)
- Aufbewahrung (Probenveränderung, Blindwerte)
- Probenvorbereitung (Inhomogenität, Blindwerte, Elementverluste)
- Einwaage (Wiegefehler, Inhomogenität)
- Messung (Blindwerte von Gefäßen, Luft, Reagenzien,...)
- Bestimmungsmethode (Messfehler, Kalibrierfehler)

Der *Gesamtfehler* einer Probe ist die *Summe* von zufälliger und statistischer Abweichung. Durch Doppel- und Mehrfachbestimmung lässt sich der Fehler ermitteln.

#figure(
  cetz.canvas({
    import cetz.draw: *
    let target(c: (0,0)) = {
      circle(c, radius: 1)
      circle(c, radius: 0.6)
      circle(c, radius: 0.25)
    }
    let dist = 3.5
    target(c: (0,0))
    circle((0,0), fill: green.transparentize(50%), radius: 0.45, stroke: none)
    content((0,-1.5), "Stat. Fehler klein\nSyst. Fehler nein")
    target(c: (dist,0))
    circle((dist - 0.5,0.5), fill: green.transparentize(50%), radius: 0.45, stroke: none)
    content((dist,-1.5), "Stat. Fehler klein\nSyst. Fehler ja")
    target(c: (2 * dist,0))
    circle((2 * dist,0), fill: green.transparentize(50%), radius: 0.8, stroke: none)
    content((2 * dist,-1.5), "Stat. Fehler groß\nSyst. Fehler nein")
    target(c: (3 * dist, 0))
    circle((3 * dist + 0.5,0.5), fill: green.transparentize(50%), radius: 0.8, stroke: none)
    content((3 * dist,-1.5), "Stat. Fehler groß\nSyst. Fehler ja")
  }),
  caption: [Statistische Fehler und Systematische Fehler dargestellt.],
)<fig-fehler>

== Probennahme
Das Gelingen der Analyse hängt in entscheidendem Maße von der qualität der Probennahme ab. Zu beachten ist:
- Proben muss repräsentativ sein (homogen)
- Probennahmezeit
- Ort der Probennahme
- Keine Kontaminationen
- ausreichende Menge

=== Verfahren zur Probennahme aus Gasen
*Probennahme mittels Gasmaus:*
#figure(
  rect(image("../assets/gasmaus.png", width: 60%)),
)

*Absorption aus Gasen mittels Gaswaschflaschen:*

#text(fill: red)[Kleine Grafik fehlt hier noch. Aber eigentlich nur ein Rohr in einer Flasche.]
#missing

*Probennahme mittels Absorptionsröhrchen und Balgpumpe:*

Durch händisches Drücken der Pumpe und dem darauf folgenden Loslassen, wird die Probe in das Röhrchen gesaugt.

=== Verfahren zur Probennahme aus Wasser<sssec-verfahren-probenahme>

- *Zeitproportionale* Probennahme: *Fixes* Probevolumen / *fixer* Zeitabstand
- *Durchflussproportionale* Probennahme: *Variables* Probevolumen / *fixer* Zeitabstand
- *Volumenproportionale* Probennahme: *Fixes* Probevolumen / *variabler* Zeitabstand

=== Probennahme aus festen Stoffen
- Probenverjüngung
- mechanischer Probenteiler

== Teilschritte der Probenvorbereitung
+ Konservierung der Probe
+ Lagerung der Probe
+ Homogenisierung
+ Entnahme einer teilprobe
+ Aufschluss
+ Anreicherung
+ Abtrennung der Matrix
+ Bestimmung des Analyten

== Analytische Kenngrößen
Analyseverfahren können nach ihren analytischen Kenngrößen beurteilt werden.
Zunächst ist eine Kalibration notwendig.

/ Kalibration: Herstellen einer funktionalen Zusammenhangs zwischen der Konzentration eines Analyten und des gemessenen Signals.

*Kenngrößen:*
- Empfindlichkeit (Steigung der Kalibrationslinie)
- Präzision (Maß für zufälligen Fehler)
- Richtigkeit (Systematische Abweichung)
- Nachweißgrenze (Konzentration, ab der ein Stoff als anwesend gilt)
- Bestimmungsgrenze (Konzentration, ab der ein Stoff mit einer gegebenen Ergebnisunsicherheit betsimmt werden kann)
- Selektivität (Maß für Eignung einer Methode einen Stoff von einem anderen zu unterscheiden)
- Robustheit (Maß für stabilität der Probennahme)

*Nicht-analytische Kenngrößen:*
- Zeit
- Kosten
- Aufwand
