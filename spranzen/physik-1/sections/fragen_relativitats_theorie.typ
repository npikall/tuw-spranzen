#import "@local/spranzen:0.1.0": *
#import "@preview/rubber-article:0.5.2": ctable

= Relativitätstheorie
#fragen-counter.update(0)
#frage[Wie lautet das Relativitätsprinzip?]
#quote[Alle Inertialsysteme sind bezüglich aller physikalischen Gesetze gleichberechtigt.]

Naturgesetze haben für alle Beobachter die selbe Form.
- es können nur Bewegungen der Körper relativ zu einem Bezugsystem festgestellt werden
- unmöglich einen bevorzugten oder absoluten Bewegungszustand eines Beobachters festzustellen
#frage[Was ist Zeitdilatation?]
Eine relativ zu einem Beobachter bewegte Uhr geht aus der Sicht des Beobachters langsamer als ein Satz synchronisierter Uhren im "Beobachter-System".
#frage[Was ist das Zwillingsparadoxon und wie wird es gelöst?]
Ein Raumfahrer mit reist mit nahezu Lichtgeschwindigkeit. Sein Zwilling ist auf der Erde geblieben.
Der Raumfahrer altert langsamer als sein Zwilling.

#frage[Beschreiben Sie das Michelson-Morley Experiment. Welche Konsequenzen sind daraus zu ziehen?]
Ziel war der Nachweis dass sich Licht durch den "äther" bewegt.
Es wurde ein interferometer aufgebaut, das licht in zwei orthogonale richtung spaltete.
Es wurde vermutet, dass sich licht nicht in alle richtungen gleich schnell bewegt.

Experiment war nicht erfolgreich. die äther theorie wurde beiseite gelegt.

#frage[Geben Sie die Lorentztransformation für ein relativ zu S mit der Geschwindigkeit v bewegtes System S' an. Erläutern Sie die Konsequenzen]
$
  t' & = gamma (t - (v/c)^2 x) \
  x' & = gamma (x - v t ) \
  y' & = y \
  z' & = z
$
Bewegungszustände anderer Inertialsysteme können besser beschrieben werden.

#frage[Wie ändern sich Längen, Zeiten und die Masse bei hohen Geschwindigkeiten?]
- Längen: ändern sich wie in Lorentzkontraktion beschrieben. verkürzung in Bewegungsrichtung
- Zeit: ändert sich wie in Zeitdilatation beschrieben. Zeit vergeht schneller für einen stillstehenden Beobachter
- Masse: bleiben grundsätzlich erhalten. unterscheidung zwischen ruhemasse und relativer masse
#frage[Welche Größen sind in der Relativitätstheorie invariant gegenüber der Lorentztransformation?]
- Lichtgeschwindigkeit
- Masse
/ Invariant: eigenschaften, die von allen Inertialsystemen als gleicher Wert beobachtet wird
#frage[Wie lautet der relativistische Energieerhaltungssatz?]
$
  E (v) = (m c^2)/(sqrt(1 - (v/c)^2))
$

#frage[Zeige das ein bewegte Uhr langsamer geht als eine ruhende]
Ruhende Lichtuhr vs Bewegte Lichtuhr
#missing-plot()
#frage[Geben Sie eine geometrische Deutung der Lorentzkontraktion und der Zeitdilatation]
#missing-plot()
#frage[Skizzieren Sie die Herleitung für das Additionstheorem der Geschwindigkeiten]
+ im bewegten system gilt für das objekt: $x' = v t'$
+ lorentz transformation $x' = gamma (x - v t)$ und $t' = gamma (t - v/c x)$
+ einsetzen $x' = v t'$ und nach $x/t$ umstellen
$
  x/t = w = (u + v)/(1 + (u v)/c^2)
$
#frage[Wie lautet das Additionstheorem der Geschwindigkeiten?]
#missing[]
#frage[Stelle die Galileitransformation der Lorentztransformation gegenüber?]
#figure(
  ctable(
    table.header([], [Galilei], [Lorentz]),
    [Ortskoord],
    [x,y,z],
    [x,y,z],
    [Zeitkoord],
    [t],
    [$v t$], // TODO: exact szmbols
    [Länge],
    [$x = x' + v t'$],
    [$x = (x' = v t')/(sqrt(1 - v^2/c^2))$],
    [Zeit],
    [$t = t'$],
    [],
    [Abstand],
    [],
    [], //TODO: missing
  ),
)
#frage[Was sind die Gründe für die Einführung der Lorentztransformation?]
- Grundlage der speziellen Relativitäts Theorie
- Berücksichtigt Zeitdilatation, Lorentzkontraktion (galilei'sche Physik nicht)

#frage[Welche Konseqünzen ergeben sich daraus?]
Von jedem physikalischen Prozess, der aus einer Menge von Ereignissen besteht und der in einem Inertialsystem beobachtet wird, vorraussagen, wie er in einem anderen Inertialsystem wahrgenommen wird.

#frage[Was besagt die Energie-Masse-Äquivalentbeziehung]
Masse und Energie sind nicht unabhängig, sondern äquivalent.
Jede Form von Energie besitzt eine ensprechende Masse.
Jede Masse entspricht einer Form von Energie.
Massenänderung $<==>$ Energieänderung (wechselseitig).
$
  E = m c^2
$

#frage[Wie lautet der relativistische Energiesatz? Zeigen Sie unter welchen Bedingungen der in der klassischen Mechanik gültige Ausdruck für die kinetische Energie folgt.]
$
  "missing"
$
Gesamtenergie einer geschlossenen Systems bleibt konstant.
Energie kann zwischen Energieformen umgewandelt werden.
Transport ist möglich, aber nicht Erzeugung/Vernichtung.

Bedingungen der klassischen Mechanik:
- für abgeschlossenes mechanisches System
- Physikalische Gesetze gelten in allen Inertialsystemen

#frage[Wie lautet die Formel für die kinetische Energie in der Relativitätstheorie?]
$
  E_"kin" = gamma m c^2 - m c^2 = (gamma - 1) m c^2\
  gamma = 1/sqrt(1 - (v/c)^2)
$

#frage[Wie lautet die Formel für die Gesamtenergie?]
$
  E(v) = m_"rel" dot c^2 = m_0 / sqrt(1 - (v/c)^2) dot c^2
$
