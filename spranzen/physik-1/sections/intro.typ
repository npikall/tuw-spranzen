/*
 * Copyright (C) 2025 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *

// Content goes here
= Einführung
#frage()[Nennen Sie die 7 Grundgroessen der Physik.]
- Laenge
- Zeit
- Masse
- Stromstaerke
- Temperatur
- Stoffmenge
- Lichtstaerke

#frage()[Nennen sie die Grundgroessen der Mechanik]
- Laenge
- Zeit
- Masse

#frage()[Geben sie 3 Beispiele skalarer und 3 Beispiele vektorieller physikalischer Groessen an.]
- *skalar*: Masse, Zeit, // TODO: 3 Option?
- *vektoriell*: Geschwindigkeit, Kraft, Impuls

#frage()[Rechnen Sie die kartesischen Koordinaten (x,y) des Punktes P in Polarkoordinaten (r, $phi$)
  um.]
$
  r = sqrt(x^2 + y^2)\
  phi = arctan(y / x)
$

#frage()[Rechnen Sie die kartesischen Koordinaten (x,y, z) des Punktes P in Zylinderkoordinaten (r,
  $phi$, z) um. Machen Sie Skizzen in denen der Punkt P in den jeweiligen Koordinaten eingezeichnet
  ist.]
$
  r = sqrt(x^2 + y^2)\
  phi = arctan(y / x)\
  z = z
$


#frage()[Was sind die Basis-(Einheits-)vektoren im kartesischen, polaren, zylindrischen und
  Kugelkoordinatensystem? Welche sind ortsfest?]
#missing[]
Einheitsvektoren des kartesischen Koordinatensystems (ex, ey, ez) sind alle ortsunabhaengig.

#frage()[Stellen sie die Volumenelemente der kartesischen, polaren und Kugelkoordinatensysteme dar.
  (Formel und Skizze)]
- Kartesisch: $dif V = dif x dot dif y dot dif z$
- Polar: $dif A = r delta phi delta r dif z$
- Kugel: $dif V = r^2 sin Theta dif r dif phi dif Theta$
#missing[formeln ueberpruefen]

#frage[Erklaeren sie das modell des Massenpunktes. Inwieweit ist das Modell relevant?]
/ Massenpunkt: Punktfoermiges Objekt mit raeumlicher Ausdehnung = 0 mit Masse
/ Translationsbewegung: wird mit Bewegung des Schwerpunktes beschrieben (Rotationsbewegung wird
  vernachlaessigt)

Reduziert einen realen Koerper auf ein Modell, dass sich auf einen Punkt beschraenkt, sofern die
Abmessung des realen Koerper vernachlaessigbar sind.

Fuer solche Punkte gilt: $"Bewegung" = "Translation" + "Rotation"$

Modelldarstellung ermoeglicht oftmals erst die Formulierung physikalischer Groessen.

#frage[Fuer einen Massenpunkt ist die Beschleunigung $arrow(g) = "const"$ gegeben. Berechnen sie
  seine Bahnkurve. Welche Infromation ist noch noetig, um die Bewegung des Massenpunktes explizit zu
  beschreiben?]
#missing[]


#frage[Geben sie die Bahnkurve fuer den schiefen Wurf an. Wie wird sie hergeleitet?]
$ arrow(r)(t) = 1/2 arrow(g) t^2 + arrow(v_0)t $
*Herleitung*: $arrow(r_0)$ entspricht dem Koordinatenursprung $arrow(r_0)=0$

#frage[Ein Koerper wird unter einem Winkel $alpha$ schraeg nach oben geworfen. Der Betrag der
  Geschwindigkeit am Anfang sei $v_0$. Zeigen sie, dass die Bahnkurve die Form einer Parabel hat
  (Berechnung z(x))]

#let freier-fall = {
  let xs = lq.linspace(0, 10, num: 30)
  lq.diagram(lq.plot(xs, xs.map(x => -5 * x * x + 50 * x)))
}

#figure(freier-fall, caption: [Freier Fall])
#missing[Berechnung und herleitung]

#frage[Definition und Definition der Zentripetalbeschleunigung. Wo tritt sie auf?]
#missing[]

#frage[Geben sie die Formel fuer die Orts-, Geschwindigkeits- und Beschleunigungsvektoren einer
  ebenen gleichfoermigen Kreisbewegung mit der Winkelgeschwindigkeit $omega$ an. Fertigen Sie ein
  Diagramm fuer die Richtungsverhaeltnisse aller 3 Vektoren an.]
- Ortsvektor $r$ #missing[]
- Geschwindigkeitsvektor $arrow(v) = omega dot arrow(r) arrow(e_phi) = arrow(omega) times arrow(r)$
- Beschleunigungsvektor
  $arrow(a) = - omega^2 dot r arrow(e_r) = arrow(omega) times arrow(v) equiv arrow(omega) times ( arrow(omega) times arrow(r))$

#frage[Was versteht man unter Winkelgeschwindigkeitsvektor?]
#missing[]

#frage[Welche Kraefte muessen herrschen, damit sich ein Koerper entlang einer Kreisbahn bewegt?]
- Zentripetalkraft
#missing[formeln und kurze erklaerung]

#frage[zeigen sie, dass bei gleichfoermiger rotation die zentripetalbeschleunigung zum zentrum und
  senkrecht zum Geschwindigkeitsvektor gerichtet ist.]

#frage[Wie lauten die Newtonschen Axiome? Geben Sie Formeln an und erklären Sie die Bedeutung.]

+ Trägheitsprinzip $F=0 -> a=0 -> v="const"$
+ Grundsatz der Dynamik $F=m dot arrow(a)$
+ Actio-Reactio $F_a + F_r = 0$ // TODO: ???


#frage[Wie sind schwere und träge Masse definiert?]
#missing[]
#frage[Wie begründet Einstein seine Annahme, dass es keinen Unterschied gibt?]
#missing[]
#frage[Wie kann man das Verhältnis schwerer zu träger Masse eyperimentell bestimmen?]
#missing[]
#frage[Was ist ein Kraftfeld?]
#missing[]
#frage[Was ist ein konservatives Kraftfeld?]
#missing[]
#frage[Beispiel für konservative und nicht-konservative Kräfte.]
#missing[]
#frage[Beweisen Sie dass das schwerefeld konservativ ist.]
#missing[]

= Reale und Scheinkräfte
#fragen-counter.update(0)
#frage[Erläutern sie den Begriff Scheinkraft.]
#missing[]
#frage[Warum werden Scheinkräfte eingeführt?]
#missing[]
#frage[Geben sie Beispiele für Scheinkräfte an.]
#missing[]
#frage[Begründen Sie das Auftreten von Scheinkräften in beschleunigten Bezugsystemen (an Beispielen
  Kugel auf bewegtem Tisch, Zentrifugalkraft)]
#missing[]
#frage[Galileische Transformation]
#missing[]
#frage[Inertialsysteme]
#missing[]
#frage[Zeigen Sie dass die Kraft bei einer Galileitransformation nicht verändert wird.]
#missing[]
#frage[Welche der Größen sind in inertialen Bezugsystemen invariant? (r,v,*a,F*)]
#missing[]

= Arbeit, kinetische und potentielle Energien
#fragen-counter.update(0)
#frage[Wie ist Arbeit allgemein definiert?]
#missing[]
#frage[Welche Eigenschaften hat diese Größe (skalare oder vektorielle, Wegabhängigkeit, Vorzeichen)]
#missing[]
#frage[Definition der potentiellen Energie (allgemein) und der kinetische Energie.]
#missing[]
#frage[Wie lauten die Maßeinheiten der Arbeit, der kinetischen, der potentiellen Energien?]
#missing[]
#frage[Konservative Kräfte]
#missing[]
#frage[Erklären sie warum die definition der potentiellen energie nur dann sinn hat, wenn das
  kraftfeld konservativ ist?]
#missing[]
#frage[Beweisen Sie den energieerhaltungssatz der mechanik.]
#missing[]
#frage[berechnen sie die arbeit die aufzubringen ist um einen block der masse m um die höhe h zu
  heben.]
#missing[]
#frage[in welchen zusammenhang stehen die kraft und die potentielle energie?]
#missing[]
#frage[wie lautet der energieerhaltungssatz der mechanik?]
#missing[]
#frage[unter welchen bedingungen gilt der energieerhaltungssatz der mechanik?]
#missing[]
#frage[welche reibungskräft kennen sie?]
- haftreibung
- gleitreibung
- rollreibung
- stoke'sche reibung

#frage[was ist die ursache der reibung zwischen 2 festen kontaktflächen?]
#missing[]
#frage[was unterscheidet haft- von gleitreibung, und welche ist größer?]
#missing[]
#frage[Berechnen sie die kraft, die notwendig ist um einen körper der masse m in horizontaler
  richtung zu verschieben (Gleitreibungkoeffizient $mu R$)]
#missing[]
= Systeme von mehreren massenpunkten, impulserhaltungssatz, stöße
#fragen-counter.update(0)

#frage[Wie lautet die formel für den schwerpunkt eines systems aus mehreren massenpunkten?]
#missing[]
#frage[wie definiert man impuls? in welchem zusammenhang stehene die auf den körper wirkende kraft
  und sein impuls?]
#missing[]
#frage[Wie lautet der Schwerpunktsatz?]
#missing[]
#frage[Wie leitet sich der Schwerpunktsatz her?]
#missing[]
#frage[Wie lautet der Impulserhaltungsatz?]
#missing[]
#frage[Wie leitet sich der Impulserhaltungsatz her?]
#missing[]
#frage[Wende den Impulserhaltungssatz auf einen elastischen Stoss einer Kugel gegen eine Wand an.]
#missing[]
#frage[Was passiert bei einem inelastischen Stoss?]
#missing[]
#frage[Unter welchem Winkel muesste der Koerper auftreffen, damit der Impulsuebertrag mazimal ist?
  Begruende die Antwort.]
#missing[]
#frage[Zwei reibungsfrei auf einer horizontalen Ebene entlang einer gemeinsamen Geraden rollenden
  Kugeln ($m_1$, $m_2$) treffen zentral mit den Geschwindigkeiten $abs(v_1)$ und $abs(v_2)$
  aufeinander. Welche Geschwindigkeit haben beide Kugeln nach der Kollision, wenn der Stoss rein
  elastisch ist?]
#missing[]
#frage[Beschreiben sie die Funktionsweise des Raketenantriebs.]
#missing[]
#frage[Erklaeren sie den Rueckstoss einer Schusswaffe.]
#missing[]
#frage[Eine Kugel trifft unter einem Winkel auf eine Wand. Der Stoss ist elastisch. Welchen Impuls
  und welche Richtung besitzt die Kugel nach dem Stoss? Formeln und Skizze.]
#missing[]
#frage[Welche Erhaltungssaetze muessen bei welchen Stoessen gelten?]
- Elastischer Stoss:
  - Impulserhaltung
  - Erhaltung der kin. Energie
- Inelastischer Stoss:
  - Impulserhaltung

= Gravitation
#fragen-counter.update(0)
#frage[Erlaeutere die Begriffe Gravitationskraft, Gravitationsfeldstaerke und Gravitationspotential
  und zeige wie diese Begriffe zusammenhaengen.]
#missing[]
#frage[Skizziere den Verlauf des Gravitationsfelds einer Hohl- und einer Vollkugel.]
#missing[]
#frage[Wie lautet das Gravitationsgesetz?]
$
  arrow(F_G) (arrow(r)) = - G (m_1 m_2)/(r^2) arrow(e_r)
$
#frage[Wie lautet die Gleichung fuer das Gravitationsfeld?]
$
  arrow(G) (arrow(r)) = (F_G (r))/m_1 = - "grad" V_"pot" = - G m_2/r^2 arrow(e_r) // TODO: Check if correct
$
#frage[Wie leitet sich die Graviationsfeldstaerke aus der Gravitationskraft ab?]
#missing[]
#frage[Gravitationsfeld für das System Erde – Mond]
#missing[]
#frage[Was versteht man unter Gravitation und wie lautet das Gravitationsgesetz?]
#missing[]
#frage[Wie hängen Gravitationskraft, Gravitationsfeld und Gravitationspotential zusammen?]
#missing[]
#frage[Gibt es Orte an denen keine Gravitationswirkung auftritt?]
#missing[]
#frage[Gibt es zwischen Erde und Mond einen Ort an dem Schwerelosigkeit herrscht?]
#missing[]
#frage[Beschreiben Sie die Keplerschen Gesetze.]
#missing[]
#frage[Welche Größen sind bei der Planetenbewegung konstant?]
#missing[]

= Rotation/Mechanik starrer Koerper
#fragen-counter.update(0)
#frage[Wie lautet die allgemeine Formel für den Drehimpuls?]
#missing[]
#frage[Wie lautet der Betrag des Drehimpulses in Richtung der Drehachse?]
#missing[]
#frage[Wie lauten die Gleichgewichtsbedingungen (bei Angriff äußerer Kräfte $F_i$)?]
#missing[]
#frage[Wie lautet das Hebelgesetz?]
#missing[]
#frage[Welche Methode verwendet man bei der Herleitung des Hebelgesetzes?]
#missing[]
#frage[Wann befindet sich ein starrer Körper im Gleichgewicht?]
#missing[]
#frage[Zeigen Sie für 3 in einer Ebene liegende Kräfte, die Gleichgewichtsbedingungen]
#missing[]
#frage[Wie findet man die Gleichgewichtsbedingungen, wenn 2 der 3 Kräfte parallel sind?]
#missing[]
#frage[Sie lassen einen Hohl- und einen Vollzylinder gleichen Außendurchmessers ($R_a$) und gleicher
  Masse eine unter dem Winkel α gegen die Horizontale geneigte Ebene herunterrollen. Der
  Innendurchmesser ($R_i$) des Hohlzylinders sein halb so groß wie der Außendurchmesser. Wie groß
  ist der Wegunterschied nach der Zeit t.]
#missing[]
= Rotationsbewegung
#fragen-counter.update(0)
#frage[Welche Größen der Rotation entsprechen den translatorischen Größen Impuls, Kraft und
  kinetischer Energie? Gib die Formeln in vektorieller Form an]
#missing[]
#frage[Wie lautet der Energieerhaltungssatz der Mechanik bei Berücksichtigung der Rotation?]
#missing[]
#frage[Wie lautet der Ausdruck für die kinetische Energie bei Rotation um eine starre Achse?]
#missing[]
#frage[Geben Sie die Gesamtenergie an, wenn der Rotation eine Translationsbewegung überlagert ist.
  Welcher Energiebetrag ist eine Erhaltungsgröße?]
#missing[]
#frage[Skizzieren Sie die Berechnung des Trägheitsmomentes für einen Hohlzylinder beiRotation um die
  Zylinderachse]
#missing[]
#frage[Wie ist das Trägheitsmoment definiert?]
#missing[]
#frage[Wie hängt das Trägheitsmoment mit dem Drehimpuls bei Rotation um eine ortsfeste Achse
  zusammen?]
#missing[]
#frage[Zwei Kugeln (Radius R) sind durch eine masselose Stange (Länge l) miteinanderverbunden. a)
  Wie groß ist das Trägheitsmoment, wenn die Rotationsachse mit der Verbindungsstange zusammenfällt?
  Fall ew1 b) wie groß ist das Trägheitsmoment, wenn die Rotationsachse durch den Schwerpunkt geht
  und senkrecht auf die Verbindungsstange steht? Fall ew2 Hinweis: Trägheitsmoment einer Kugel: ⅖
  R^2]
#missing[]
#frage[Wie ist ein Massenelement, der Schwerpunkt und die Winkelgeschwindigkeit bei Rotation um eine
  ortsfeste Achse definiert (Skizze)?]
#missing[]
#frage[Zeigen Sie wie man mit Hilfe des Prinzips virtueller Verschiebungen das Hebelgesetz ableiten
  kann]
#missing[]

= Relativitaetstheorie
#fragen-counter.update(0)
#frage[Wie lautet das Relativitätsprinzip?]
#missing[]
#frage[Was ist Zeitdilatation?]
#missing[]
#frage[Was ist das Zwillingsparadoxon und wie wird es gelöst?]
#missing[]
#frage[Beschreiben Sie das Michelson-Morley Experiment. Welche Konsequenzen sind daraus zu ziehen?]
#missing[]
#frage[Geben Sie die Lorentztransformation für ein relativ zu S mit der Geschwindigkeit v bewegtes
  System S' an. Erläutern Sie die Konsequenzen]
#missing[]
#frage[Wie ändern sich Längen, Zeiten und die Masse bei hohen Geschwindigkeiten?]
#missing[]
#frage[Welche Größen sind in der Relativitätstheorie invariant gegenüber der Lorentztransformation?]
#missing[]
#frage[Wie lautet der relativistische Energieerhaltungssatz?]
#missing[]
#frage[Zeige das ein bewegte Uhr langsamer geht als eine ruhende]
#missing[]
#frage[Geben Sie eine geometrische Deutung der Lorentzkontraktion und der Zeitdilatation]
#missing[]
#frage[Skizzieren Sie die Herleitung für das Additionstheorem der Geschwindigkeiten]
#missing[]
#frage[Wie lautet das Additionstheorem der Geschwindigkeiten?]
#missing[]
#frage[Stelle die Galileitransformation der Lorentztransformation gegenüber?]
#missing[]
#frage[Was sind die Gründe für die Einführung der Lorentztransformation?]
#missing[]
#frage[Welche Konsequenzen ergeben sich daraus?]
#missing[]
#frage[Was besagt die Energie-Masse-Äquivalentbeziehung]
#missing[]
#frage[Wie lautet der relativistische Energiesatz? Zeigen Sie unter welchen Bedingungen der in der
  klassischen Mechanik gültige Ausdruck für die kinetische Energie folgt.]
#missing[]
#frage[Wie lautet die Formel für die kinetische Energie in der Relativitätstheorie?]
#missing[]
#frage[Wie lautet die Formel für die Gesamtenergie?]
#missing[]

= Gedaempfte Schwingung
#fragen-counter.update(0)
#frage[Wie lautet die Schwingungsgleichung der gedämpften Schwingung? Wie wird sie aufgestellt und
  was bedeuten ihre einzelnen Terme?]
#missing[]
#frage[Geben Sie einen Lösungsansatz an und zeigen Sie, dass er die Schwingungsgleichung erfüllt]
#missing[]
#frage[Diskutieren Sie die verschiedenen Lösungen die sich ergeben und skizzieren Sie die
  Bewegungsabläufe]
#missing[]
#frage[Betrachten Sie den Fall einer horizontal schwingenden Masse an einer Feder die durch die Luft
  gedämpft wird. Wie lautet die Schwingungsgleichung (Erläutere die einzelnen Terme)?]
#missing[]
#frage[Diskutieren Sie die verschiedenen Lösungen und zeichnen Sie die Weg-Zeit Diagramme der
  Bewegungsabläufe]
#missing[]
#frage[Was ist das logarithmische Dekrement?]
#missing[]
= Ungedaempfte Schwingung
#fragen-counter.update(0)
#frage[Lösen Sie die Bewegungsgleichung eines eindimensionalen ungedämpften Masse/Feder Systems]
#missing[]
#frage[Welche Bedingungen muss die rückwirkende Kraft erfüllen?]
#missing[]
#frage[Wie groß ist die Eigenfrequenz?]
#missing[]
#frage[Skizzieren sie den zeitlichen Verlauf vom potentieller und kinetischer Energie]
#missing[]
#frage[Wie lautet die Schwinungsgleichung für Masse/Feder System und für mathematisches Pendel]
#missing[]
#frage[Welche der Eigenfrequenzen hängt von der Masse ab, welche nicht?]
#missing[]
#frage[Sie bringen beide Systeme auf den mind. Welche eigenfrequenz ändert sich gegenüber der auf
  der Erde, welche nicht?] // TODO: Was ist der richtige Wortlaut der Frage?
#missing[]
#frage[Gegeben sei ein Masse/Feder-System auf einer reibungsfreien Unterlage. Leiten Sie die
  Bewegungsgleichung der ungedämpften Schwingung her]
#missing[]
#frage[Skizzieren Sie den Bewegungsablauf der Masse in einem Weg-Zeit-Diagramm, und zeichnen Sie
  Amplitude und Periodendauer in die Skizze ein]
#missing[]
#frage[Wie groß ist die Eigenfrequenz und die Periodendauer der Schwingung?]
#missing[]
#frage[Wie verändert sich die Eigenfrequenz der harmonischen Schwingung, wenn die Masse verdoppelt,
  die Federkonstante jedoch konstant gehalten wird?]
#missing[]
#frage[Wie lauten die zeitabhängigen Geschwindigkeit v(t) und die Beschleunigung a(t) und wie groß
  sind ihre Maximalwerte?]
#missing[]
#frage[Gegeben ist ein mathematisches Pendel. Stellen Sie seine Bewegungsgleichung mit Hilfe des
  Energierhaltungssatzes auf]
#missing[]
#frage[Was ist die Rückübersetzung Kraft des Pendels?]
#missing[]
#frage[Wie groß ist die eigenfrequenz des Pendels ?]
#missing[]
#frage[Warum hängt die eigenfrequenz nicht von der Masse des Pendels ab?]
#missing[]
= Erzwungene Schwingung
#fragen-counter.update(0)
#frage[Wie lautet die Schwingungsgleichung?]
#missing[]
#frage[Wie wird sie aufgestellt und was bedeuten die einzelnen Terme?]
#missing[]
#frage[Mit welcher Frequenz schwingt das System im stationären Zustand?]
#missing[]
#frage[Wie hängen Amplitude und Phasenwinkel von der Frequenz ab?]
#missing[]
#frage[Was ist die Resonanzkatastrophe und wie kann sie vermieden werden?]
#missing[]
#frage[Skizzieren Sie Amplitude und Phasenwinkel im stationären in Abhängigkeit von der Dämpfung und
  von $Omega$?]
#missing[]
= Einschwingvorgang
#fragen-counter.update(0)
#frage[Ein gedämpftes Masse/Feder System wird von einem Erreger, der sich periodisch mit der
  Kreisfrequenz Ω bewegt, angetrieben. a) Welche Schwingungen überlagern sich beim
  Einschwingvorgang? b) In welcher Zeit ist in etwa der stationäre Zustand erreicht?]
#missing[]
#frage[Was sind Schwebungen und warum sind sie beim Einschwingvorgang wichtig, wenn das
  Masse/Federsystem eine geringe Dämpfung aufweist und nahe seiner Eigenfrequenz angeregt wird?]
#missing[]
= Punktladungen
#fragen-counter.update(0)
#frage[Welche Eigenschaften haben elektrische Ladungen?]
#missing[]
#frage[Was ist die Einheit der elektrischen Ladung?]
#missing[]
#frage[Wie lautet das Coulombgesetz?]
#missing[]
= Kraftgesetze
#fragen-counter.update(0)
#frage[Geben Sie das Coulomb-Gesetz der Elektrostatik und das Gravitationsgesetz nach Newton an.]
#missing[]
#frage[Erläutere die einzelnen vorkommenden Größen in Bedeutung und Dimension.]
#missing[]
#frage[Was haben beide Gesetze gemeinsam. Worin unterscheiden sie sich]
#missing[]
#frage[Diskutieren Sie die Bedeutung beider Gesetze und geben Sie Beispiele an wo welches Gesetz
  wesentlich ist]
#missing[]
#frage[Gegeben ist eine Punktladung Q
  + Beschreiben Sie, wie man vorgeht, um deren Feld E zu ermitteln
  + Skizzieren Sie die Feldvektoren einer positiven Punktladung Q und einer negativen Punktladung -Q
]
#missing[]
#frage[Was ist das Superpositionsprinzip?]
#missing[]
= Elektrisches Feld und Potential
#fragen-counter.update(0)
#frage[Gegeben ist eine Punktladung Q. Durch welchen Ausdruck ist das Elektrische Felde E der
  Punktldung Q gegeben?]
#missing[]
#frage[Zeigen Sie, dass das Integral entlang eines Geschlossenen Weges gleich null ist.]
#missing[]
#frage[Wie ist das potential $V_p$ von E definiert und mittels welchen Operators kann E aus $V_p$
  ermittelt werden?]
#missing[]
= Gauss'sche Gesetze der Elektrostatik
#frage[Gegeben ist eine Punktladung Q Wie ist der Fluss des E-Feldes durch eine geschlossene Fläche
  A definiert]
#missing[]
#frage[Wie groß ist der Fluss wenn Q außerhalb von A liegt]
#missing[]
#frage[Wie groß ist der Fluss wenn Q innerhalb von A liegt]
#missing[]
#frage[Wie lautet das Gaußsche Gesetz der Elektrostatik?]
#missing[]
#frage[Gegeben sind zwei Punktladungen, die um einen Abstand a voneinander entfernt sind. a) Welche
  Eigenschaften müssen diese haben, um einen elektrischen Dipol zu bilden.]
#missing[]
#frage[Wie ist das elektrische Dipolmoment definiert?]
#missing[]
#frage[Wie lautet das elektrostatische Potential des Dipols und wie können Sie daraus sein Feld
  ermitteln?]
#missing[]
#frage[Betrachten Sie ein Wassermolekül und ein Kohlendioxidmolekül. Welches der beiden weist ein
  permanentes Dipolmoment auf?]
#missing[]
#frage[Gegeben ist ein elektrischer Dipol mit dem Dipolmoment a) Welche Kräfte und Drehmomente
  wirken auf den Elektrischen Dipol in einem homogenen elektrischen Feld E]
#missing[]
#frage[Wie richtet sich das elektrische Dipolmoment x relativ zu y aus?]
#missing[]
#frage[In welche Richtung relativ zu �⃗ zeigt das Fernfeld des Dipols auf der y-Achse?]
#missing[]
#frage[Gegeben ist ein beliebig geformter elektrischer Leiter. a) Welche Eigenschaften haben
  Ladungen im Leiter?]
#missing[]
#frage[Wie groß ist das elektrische Feld im Inneren des Leiters?]
#missing[]
#frage[Wie groß ist das Feld im Außenraum des Leiters, wenn dieser dieGesamtladung Q trägt?]
#missing[]
#frage[Was ist der Spitzeneffekt und wie kommt er zustande?]
#missing[]
#frage[Was ist ein Faraday'scher Käfig und auf welchem Prinzip beruht er?]
#missing[]
#frage[Gegeben ist ein beliebig geformter elektrischer Leiter. Dieser wird in ein homogenes äußeres
  elektrisches Feld 𝐸𝐸 0 eingebracht. a) Wie groß ist das resultierende Feld 𝐸𝐸 im Inneren des
  Leiters?]
#missing[]
#frage[In welche Richtung zeigt das Feld 𝐸𝐸 im Außenraum relativ zur Leiteroberfläche]
#missing[]
#frage[Wie verteilen sich die Ladungen auf der Leiteroberfläche?]
#missing[]
#frage[Was passiert, wenn Sie den Leiter trennen und das äußere Feld abschalten?]
#missing[]
#frage[Gegeben seien zwei leitende Platten im Vakuum der Fläche A mit dem Abstand d. a) Was
  passiert, wenn eine der Platten mit der Gesamtladung Q und die andere mit der Gesamtladung -Q
  geladen wird?]
#missing[]
#frage[In welche Richtung zeigt das Feld x im inneren dieses Kondensators und wie groß ist sein
  Betrag?]
#missing[]
#frage[Wie lautet das Potential Vp im Innenraum des Kondensators?]
#missing[]
#frage[Wie groß ist die Potentialdifferenz U zwischen den beiden Platten?]
#missing[]
#frage[Wie ist die Kapazität des Kondensators definiert?]
#missing[]
== Dielektrikum im Feld
#frage[Ein Kondensator erzeugt das elektrische Feld �⃗ 0. a) Was passiert, wenn man ein isolierendes
  Medium in den Kondensator einbringt?]
#missing[]
#frage[Was ist die Polarisation $P_mu$]
#missing[]
#frage[Wie groß ist das resultierende Feld 𝐸𝐸 im Isolator?]
#missing[]
#frage[Was ist die Verschiebungsdichte 𝐷𝐷 und wie lässt sie sich durch 𝐸𝐸0 bzw. 𝐸𝐸 ausdrücken?]
#missing[]
== Dielektrische Konstanten
#frage[In einen Kondensator wird ein isolierendes Medium eingebracht: a) Was ist die
  Dielektrizitätskonstante ε?]
#missing[]
#frage[Was ist dielektrische Suszeptibilität χe?]
#missing[]
#frage[Wie hängen ε und χe miteinander zusammen?]
#missing[]
#frage[Warum ist die ist dielektrische Suszeptibilität χe sehr hoch]
#missing[]
== Stationaere Stroeme
#frage[Einzelne Ladungen q seien mit einer Dichte n im Raum verteilt. a) Wie groß ist die
  Gesamtladung Q in einem Volumen V]
#missing[]
#frage[Wie groß ist die Raumladungsdichte ρe?]
#missing[]
#frage[Wie ist der Strom I definiert und wann ist er stationär]
#missing[]
#frage[Wie ist die Stromdichte j ⃗ definiert?]
#missing[]
#frage[Wie lautet die Kontinuitätsgleichung und warum ist sie wichtig für stationäre Ströme?]
#missing[]
#frage[Gegeben ist ein Vektorfeld 𝐹𝐹𝑎 a) Wie ist die Divergenz von 𝐹𝐹𝑎 definiert?]
#missing[]
#frage[Wie lautet der Ausdruck für die Divergenz in kartesischen Koordinaten?]
#missing[]
#frage[Wie lautet der Gauß'sche Satz?]
#missing[]
#frage[Leiten Sie mit Hilfe des Gauß'schen Satzes das Gauß'sche Gesetz der Elektrostatik für das
  -Feld ab.]
#missing[]
== Rotation
#frage[Gegeben ist ein Vektorfeld a) Wie ist die Rotation von x definiert?]
#missing[]
#frage[Wie lautet der Ausdruck für die Divergenz in kartesischen Koordinaten?]
#missing[]
#frage[Wie lautet der Stokes'sche Satz?]
#missing[]
#frage[Leiten Sie mit Hilfe des Stokes'schen Satzes die Kirchoffsche Maschenregel ab]
#missing[]
== Kirchoffsche Gesetze und Leiternetzwerke
#frage[Gegeben ist ein Netzwerk aus elektrischen Leitern. a) Wie lautet die Kirchoffsche Knotenregel
  für Stationäre Ströme und wie kann diese auf den Gauß'schen Satz zurückgeführt werden?]
#missing[]
#frage[Wie lautet die Kirchoffsche Maschenregel für Stationäre Ströme und wie kann diese auf den
  Stokes'schen Satz zurückgeführt werden?]
#missing[]
#frage[Wie lautet das Ohm'sche Gesetz?]
#missing[]
#frage[Elektrische Netzwerke: Gegeben ist ein Netzwerk aus Leitern und Widerständen. a) Wie lauten
  die zwei Kirchoffschen Regeln und das Ohm'sche Gesetz?]
#missing[]
#frage[Bestimmen Sie den Gesamtwiderstand Rges zweier in Serie geschalteter Widerstände R1 und R2]
#missing[]
#frage[Bestimmen Sie den Gesamtwiderstand Rges zweier parallel geschalteter Widerstände R1 und R2.]
#missing[]
#frage[Wie ist die Kapazität eines Kondensators definiert?]
#missing[]
#frage[Bestimmen Sie den Gesamtwiderstand Cges zweier in Serie geschalteter Kondensatoren C1 und C2]
#missing[]
#frage[Bestimmen Sie den Gesamtwiderstand Cges zweier parallel geschalteter]
#missing[]
== Elektrische Leitfaehigkeit
#frage[An einem Leiter liegt eine Potentialdifferenz U an, die ein Feld im Leiter erzeugt. a) Wie
  hängen die Stromdichte ⃗ und miteinander zusammen?]
#missing[]
#frage[Wie ist die elektrische Leitfähigkeit σe definiert und wie kann sie im Rahmen des Drude
  Modells berechnet werden?]
#missing[]
#frage[Was ist die mittlere Stoßzeit τ und wie beeinflusst sie die elektrische Leitfähigkeit?]
#missing[]
#frage[Was ist der spezifische Widerstand ρe ?]
#missing[]
#frage[Vektorfelder: Gegeben sei ein beliebiges Vektorfeld⃗ . a) Wie berechnet man die Divergenz und
  die Rotation von⃗ in kartesischen Koordinaten?]
#missing[]
#frage[Was bedeuten Quellen oder Senken für die Divergenz von x?]
#missing[]
#frage[Was bedeutet eine nicht verschwindende Zirkulation für die Rotation von x?]
#missing[]
#frage[Gegeben sei ein beliebiges Vektorfeld⃗ Was sind die Quellen des elektrostatischen Feldes ? ]
#missing[]
