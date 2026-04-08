/*
 * Copyright (C) 2025 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "../common.typ": *

// Content goes here
= Ausarbeitung

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

#frage()[Rechnen Sie die kartesischen Koordinaten (x,y) des Punktes P in Polarkoordinaten (r, $phi$) um.]
$
  r = sqrt(x^2 + y^2)\
  phi = arctan(y / x)
$

#frage()[Rechnen Sie die kartesischen Koordinaten (x,y, z) des Punktes P in Zylinderkoordinaten (r, $phi$, z) um. Machen Sie Skizzen in denen der Punkt P in den jeweiligen Koordinaten eingezeichnet ist.]
$
  r = sqrt(x^2 + y^2)\
  phi = arctan(y / x)\
  z = z
$


#frage()[Was sind die Basis-(Einheits-)vektoren im kartesischen, polaren, zylindrischen und Kugelkoordinatensystem? Welche sind ortsfest?]
#missing[]
Einheitsvektoren des kartesischen Koordinatensystems (ex, ey, ez) sind alle ortsunabhaengig.

#frage()[Stellen sie die Volumenelemente der kartesischen, polaren und Kugelkoordinatensysteme dar. (Formel und Skizze)]
- Kartesisch: $dif V = dif x dot dif y dot dif z$
- Polar: $dif A = r delta phi delta r dif z$
- Kugel: $dif V = r^2 sin Theta dif r dif phi dif Theta$
#missing[formeln ueberpruefen]

#frage[Erklaeren sie das modell des Massenpunktes. Inwieweit ist das Modell relevant?]
/ Massenpunkt: Punktfoermiges Objekt mit raeumlicher Ausdehnung = 0 mit Masse
/ Translationsbewegung: wird mit Bewegung des Schwerpunktes beschrieben (Rotationsbewegung wird vernachlaessigt)

Reduziert einen realen Koerper auf ein Modell, dass sich auf einen Punkt beschraenkt, sofern die Abmessung des realen Koerper vernachlaessigbar sind.

Fuer solche Punkte gilt: $"Bewegung" = "Translation" + "Rotation"$

Modelldarstellung ermoeglicht oftmals erst die Formulierung physikalischer Groessen.

#frage[Fuer einen Massenpunkt ist die Beschleunigung $arrow(g) = "const"$ gegeben. Berechnen sie seine Bahnkurve. Welche Infromation ist noch noetig, um die Bewegung des Massenpunktes explizit zu beschreiben?]
#missing[]


#frage[Geben sie die Bahnkurve fuer den schiefen Wurf an. Wie wird sie hergeleitet?]
$ arrow(r)(t) = 1/2 arrow(g) t^2 + arrow(v_0)t $
*Herleitung*: $arrow(r_0)$ entspricht dem Koordinatenursprung $arrow(r_0)=0$

#frage[Ein Koerper wird unter einem Winkel $alpha$ schraeg nach oben geworfen. Der Betrag der Geschwindigkeit am Anfang sei $v_0$. Zeigen sie, dass die Bahnkurve die Form einer Parabel hat (Berechnung z(x))]

#let freier-fall = {
  let xs = lq.linspace(0, 10, num: 30)
  lq.diagram(
    lq.plot(
      xs,
      xs.map(x => -5 * x * x + 50 * x),
    ),
  )
}

#figure(
  freier-fall,
  caption: [Freier Fall],
)
#missing[Berechnung und herleitung]

#frage[Definition und Definition der Zentripetalbeschleunigung. Wo tritt sie auf?]
#missing[]

#frage[Geben sie die Formel fuer die Orts-, Geschwindigkeits- und Beschleunigungsvektoren einer ebenen gleichfoermigen Kreisbewegung mit der Winkelgeschwindigkeit $omega$ an. Fertigen Sie ein Diagramm fuer die Richtungsverhaeltnisse aller 3 Vektoren an.]
- Ortsvektor $r$ #missing[]
- Geschwindigkeitsvektor $arrow(v) = omega dot arrow(r) arrow(e_phi) = arrow(omega) times arrow(r)$
- Beschleunigungsvektor $arrow(a) = - omega^2 dot r arrow(e_r) = arrow(omega) times arrow(v) equiv arrow(omega) times ( arrow(omega) times arrow(r))$

#frage[Was versteht man unter Winkelgeschwindigkeitsvektor?]
#missing[]

#frage[Welche Kraefte muessen herrschen, damit sich ein Koerper entlang einer Kreisbahn bewegt?]
- Zentripetalkraft
#missing[formeln und kurze erklaerung]

#frage[zeigen sie, dass bei gleichfoermiger rotation die zentripetalbeschleunigung zum zentrum und senkrecht zum Geschwindigkeitsvektor gerichtet ist.]
