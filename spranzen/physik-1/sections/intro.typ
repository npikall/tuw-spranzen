/*
 * Copyright (C) 2025 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *

= Mechanik
== Kinematik
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

== Dynamik
=== Reale und Scheinkräfte
#frage[Erläutern sie den Begriff Scheinkraft.]
- Realkräfte werden durch *Wechselwirkungen* zwischen Körpern hervorgerufen.
- Scheinkräfte treten nur in beschleunigten Bezugsystemen auf
#text(red)[Beispiel mit Tisch...]

#frage[Warum werden Scheinkräfte eingeführt?]
In beschleunigten (linear oder rotierenden) Bezugsystem gelten Axiom 1 und 2 nicht.

- Einführung trotzdem, um Newtons Aktionsprinzip nutzen zu können.
- Scheinkräfte haben keine Gegenkräft -> kein Reaktionsprinzip

#frage[Geben sie Beispiele für Scheinkräfte an.]
- Zentrifugalkraft
- Corioliskraft

#frage[Begründen Sie das Auftreten von Scheinkräften in beschleunigten Bezugsystemen (an Beispielen
  Kugel auf bewegtem Tisch, Zentrifugalkraft)]
- Äußerer Beobachter: Kugel bewegt sich nicht (da Kugel aufgrund der Trägheit an ihrem Platz bleibt)
- Innerer Beobachter: Kugel bewegt sich, es wirkt als würde eine Kraft wirken
#missing[erklärung zentripetalkraft]

#frage[Galileische Transformation]

#quote[Die Grundlegenden Gesetze der Physik sind in allen Bezugssystemen, die sich zueinander mit
  gleichförmiger Geschwindigkeit bewegen, ident.]

#frage[Inertialsysteme]
Bezugssysteme, die selbst keinen Beschleunigungen unterliegen, werden Inertialsysteme genannt.

Körper beweggen sich gemäß der Newtonschen Axiome (keine Scheinkräfte), es gilt das
Trägheitsprinzip.

#frage[Zeigen Sie dass die Kraft bei einer Galileitransformation nicht verändert wird.]
$S$ (System) bewegt sich relativ zu $S'$.

Galilei Transformation:
$
  t & = t' \
  x & = x' + v t \
  y & = y' \
  z & = z'
$

#missing[Zeigen dass Kraft gleich bleibt]


#frage[Welche der Größen sind in inertialen Bezugsystemen invariant? (r,v,*a,F*)]
- r (Ort): nicht invariant
- v (Geschwindigkeit): nicht invariant
- a (Beschleunigung): invariant
- F (Kraft): invariant $F = m a <--> m' a' = F'$

=== Arbeit, kinetische und potentielle Energien
#frage[Wie ist Arbeit allgemein definiert?]
$
  "Arbeit" & = "Kraft" dot "Weg" \
         W & = arrow(F) dot arrow(s) = abs(arrow(F)) dot abs(arrow(s))cos alpha
$

Einheit: $"kg" dot ("m"^2)/"s"^2 = J$
#frage[Welche Eigenschaften hat diese Größe (skalare oder vektorielle, Wegabhängigkeit, Vorzeichen)]
- $W > 0$: wenn $arrow(F)$ in Richtung von s ($cos alpha > 0$)
- $W < 0$: wenn $arrow(F)$ in Gegenrichtung von s ($cos alpha < 0$)
Skalargröße (Skalarprodukt) nur für geradlinige Wege und konstante Kräfte

#frage[Definition der potentiellen Energie (allgemein) und der kinetische Energie.]
- Potentielle Energie = Lageenergie
$
  E_"pot"(P) = - integral_(P_0)^P arrow(F) dot dif arrow(s)
$
- Kinetische Energie = Bewegungsenergie

$
  E_"kin" = 1/2 m v^2
$

#frage[Wie lauten die Maßeinheiten der Arbeit, der kinetischen, der potentiellen Energien?]
- Arbeit: Joule
- Pot. Energie: Joule
- Kin. Energie: Joule

#frage[Konservative Kräfte]
Kräfte die für die verrrichtete Arbeit $W_("A"->"B")$ unabhägig von dem gewählten weg von A nach B
ist. (Bei geschlossenem Umlauf $W=0$)

#frage[Erklären sie warum die definition der potentiellen energie nur dann sinn hat, wenn das
  kraftfeld konservativ ist?]
$E_"pot"$ hängt nur vom Ort von P ab, nicht vom Weg.

#frage[Beweisen Sie den energieerhaltungssatz der mechanik.]
$
  W_"ges" = W_"kin" + W_"pot" = "const"
$
weil:
$
                 W_(1->2) & = E_"pot"(1) - E_"pot"(2) \
                 W_(1->2) & = E_"kin"(2) - E_"kin"(1) \
  E_"pot"(1) - E_"pot"(2) & = E_"kin"(2) - E_"kin"(1) \
  E_"kin"(1) + E_"pot"(1) & = E_"kin"(2) + E_"pot"(2)
$

#frage[berechnen sie die arbeit die aufzubringen ist um einen block der masse m um die höhe h zu
  heben.]
$
  E_"pot" (h=0) & = 0 \
  E_"pot" (h) & = - integral_0^h (m dot arrow(g)) dif arrow(z) = - integral_0^h m dot (-g) dif z = m dot g dot h
$
#frage[in welchen zusammenhang stehen die kraft und die potentielle energie?]
- 1D: $(dif E_"pot")/(dif x) = -F_x$
- 3D: $F = - gradient E_"pot"$

#frage[wie lautet der energieerhaltungssatz der mechanik?]
$
  W_"ges" = W_"kin" + W_"pot" = "const"
$


#frage[unter welchen bedingungen gilt der energieerhaltungssatz der mechanik?]
Newtonsches Axiom für konservative Kräfte

#frage[welche reibungskräft kennen sie?]
- haftreibung
- gleitreibung
- rollreibung
- stoke'sche reibung

#frage[was ist die ursache der reibung zwischen 2 festen kontaktflächen?]
Reibungskraft ist abhängig von Oberflächenbeschaffenheit.
- Oberflächen verzahnen sich und erzeugen Reibung (ist die Haftreibung überwunden beschleunigt der
  Körper, da die Gleitreibung geringer ist)
- Reibung kann auf elektrostatische Kräfte zwischen Elektronen zurückgeführt werden.

#frage[was unterscheidet haft- von gleitreibung, und welche ist größer?]
Verzahnung bei Haftreibung ist größer, Gleitreibung trägt nur Spitzen ab.

$
  "Haftreibung" > "Gleitreibung"
$
#frage[Berechnen sie die kraft, die notwendig ist um einen körper der masse m in horizontaler
  richtung zu verschieben (Gleitreibungkoeffizient $mu R$)]
$
  F = F_R = mu dot F_N = mu dot m dot g
$

=== Systeme von mehreren massenpunkten, impulserhaltungssatz, stöße

#frage[Wie lautet die formel für den schwerpunkt eines systems aus mehreren massenpunkten?]
$
  arrow(r_s) = (sum_i^n m_i arrow(r_i))/(sum_i^n m_i)
$
#frage[wie definiert man impuls? in welchem zusammenhang stehene die auf den körper wirkende kraft
  und sein impuls?]
/ Impuls: $arrow(p) = m dot arrow(v)$

Zeitliche Ablietung des Impulses ist gleich der Wirkenden Kraft.

#frage[Wie lautet der Schwerpunktsatz?]
Die Geschwindigkeit des Schwerpunktes eines abgeschlossenen Massepunktes ist konstant.

$
  arrow(v) = (dif arrow(r))/(dif t) = 1/M sum_i (m_i dif arrow(r_i))/(dif t) = 1/M sum_i arrow(p_1) = "const"
$

#frage[Wie leitet sich der Schwerpunktsatz her?]
- Impulserhaltung: ...
- Def. Schwerpunkt: ...
- Zeitableitung: ...
Der Schwerpunkt bewegt sich so als ob die gesamte Masse im Schwerpunkt vereinigt wäre, und nur die
äußeren Kräfte wirken

#frage[Wie lautet der Impulserhaltungsatz?]
Gesamtimpuls eines geschlossenen Systems bleibt konstant. Gesamtimpuls ist eine Erhaltungsgröße.
$
  arrow(p_"ges") = "const"\
  sum_i p_i = "const"\
$

#frage[Wie leitet sich der Impulserhaltungsatz her?]
Annahme: Zwei Massenpunkte durch gespannte Feder verbunden.
- 3. Axiom $F_1 = F_2$
Ohne Einwirkung von äußeren Kräften ist die Summe der Impulse abhängig von der Zeit = 0
#missing[formeln]
#frage[Wende den Impulserhaltungssatz auf einen elastischen Stoss einer Kugel gegen eine Wand an.]
#missing[]
#frage[Was passiert bei einem inelastischen Stoss?]
#missing[]
#frage[Unter welchem Winkel muesste der Koerper auftreffen, damit der Impulsuebertrag maximal ist?
  Begruende die Antwort.]
In einem winkel von 0° frontal
#missing[formeln]

#frage[Zwei reibungsfrei auf einer horizontalen Ebene entlang einer gemeinsamen Geraden rollenden
  Kugeln ($m_1$, $m_2$) treffen zentral mit den Geschwindigkeiten $abs(v_1)$ und $abs(v_2)$
  aufeinander. Welche Geschwindigkeit haben beide Kugeln nach der Kollision, wenn der Stoss rein
  elastisch ist?]
#missing[]
#frage[Beschreiben sie die Funktionsweise des Raketenantriebs.]
Rückstoßprinzip beim Auströmen des Treibstoffes aus der Rakete. Rakete ist ein abgeschlossenes
System mit Gesamtimpuls = 0.
$
  arrow(p_"ges") = arrow(p_"rakete") + arrow(p_"gas") = 0
$
#missing[mehr details...]
#frage[Erklären sie den Rückstoss einer Schusswaffe.]
Waffe = abgeschlossenes System mit ges. Impuls = 0

analog zu Rakete:
$
  arrow(p_"ges") = arrow(p_"waffe") + arrow(p_"projektil") = 0
$
#frage[Eine Kugel trifft unter einem Winkel auf eine Wand. Der Stoss ist elastisch. Welchen Impuls
  und welche Richtung besitzt die Kugel nach dem Stoss? Formeln und Skizze.]
#missing[]
#frage[Welche Erhaltungssaetze muessen bei welchen Stoessen gelten?]
- Elastischer Stoss:
  - Impulserhaltung
  - Erhaltung der kin. Energie
- Inelastischer Stoss:
  - Impulserhaltung
