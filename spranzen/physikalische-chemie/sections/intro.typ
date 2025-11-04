/*
 * Copyright (C) 2025 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "../common.typ": *

#let arrow = box(
  tiptoe.line(tip: tiptoe.stealth, length: 1.68em),
  baseline: -.2em,
)

#show "sys": "System"


// Content goes here
= Grundbegriffe

== Systeme
- *offenes Systeme*: $m != "const"$; $E != "const"$
- *geschlossenes Systeme*: $m = "const"$; $E != "const"$
- *abgeschlossenes Systeme*: $m = "const"$; $E = "const"$
\
- *homogene Systeme*: nur eine Phase
- *heterogene Systeme*: mehrphasig
- *kontinuierliche Systeme*: Makroskopische Größen ändern sich kontinuierlich

== Thermodynamische Zustandsgrößen
#columns(2)[
  - Druck $p$
  - Volumen $V$
  - Temperatur $T$
  - Masse $m$
  - Stoffmenge $n$
  #colbreak()
  - Entropie $S$
  - innere Energie $U$
  - Enthalpie $H$
  - Freie Enthalpie $G$
  - Freie Energie $A$
]

== Prozesse
Ein thermodynamischer Prozess ist eine Änderung des thermodynamischen Zustands.
- *reversible* Prozesse (Quasistatische Prozesse; ohne Änderung in der Umgebung)
- *irreversible* Prozesse

== 0. Hauptsatz der Thermodynamik
- sys A im Gleichgewicht mit sys B
- sys B im Gleichgewicht mit sys C
- #arrow sys A im Gleichgewicht mit sys C

== Temperatur
- *Intensive* Größen: unabhängig von Systemgröße (Temp, Druck, Dichte, Konzentration, etc.)
- *Extensive* Größen: abhängig von Systemgröße/Stoffmenge (Stoffmenge, Volumen, innere Energie,
  Masse, elektrische Ladung, etc.)

== Arbeit, Wärme, Energie
Arbeit $W$ ist das Produkt von Kraft und Weg
$
  W= F dot s
$

=== Volumenarbeit
_Homogenes isotropes sys_: Kompression ist Arbeit am System, gegen den Druck $p$ des syss.
$
  delta W = - p dot dif V
$

= Hauptsätze der Thermodynamik
== Erster Hauptsatz - Energieerhaltung
Die Änderung der inneren Energie ist gleich der zu- bzw. abgeführten Energie/Wärme
$
  Delta U = Q + W
$
/ U: Innere Energie
/ Q: Wärme
/ W: Arbeit

Es ist unmöglich Energie zu erzeugen oder zu vernichten. Nur die Umwandlung ist möglich.

== Zustandsgleichung eines syss
Zustandsgleichung idealer Gase:
$
  p V = n R T = N k_B T
$
/ R: ideale/molare Gaskonstante $R = 8.314 J K^(-1)"mol"^(-1)$
/ $k_B$: Boltzmann-Konstante
/ n: Molzahl
/ N: Molekül-/Teilchenzahl

== Mischungen idealer Gase
$
  V = V_1 + V_2 + ... + V_k = sum_(i=1)^k V_i
$
