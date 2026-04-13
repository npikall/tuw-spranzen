#import "@local/spranzen:0.1.0": *
#import "@preview/rubber-article:0.5.2": ctable, vspace

= Mechanik starrer Körper
== Rotation/Mechanik starrer Körper
#frage[Wie lautet die allgemeine Formel für den Drehimpuls?]
$
  arrow(L) = arrow(r) times arrow(p)\
  arrow(L) = J times arrow(omega)
$
Dimension: $"kg" dot "m"^2/"s"$

/ $omega$: Winkelgescwindigkeit
/ $J$: Traegheitsmoment

#frage[Wie lautet der Betrag des Drehimpulses in Richtung der Drehachse?]
$
  L_(arrow(e_omega)) = omega Theta_(arrow(e_omega))
$
#frage[Wie lauten die Gleichgewichtsbedingungen (bei Angriff äußerer Kräfte $F_i$)?]
$
  sum_i arrow(F_i) (a) = 0\
  sum_i arrow(D)_(M_i)^(a) = sum_i (arrow(r_i) times arrow(F_i^a)) = 0
$

#frage[Wie lautet das Hebelgesetz?]
$
  F_1 dot r_1 = F_2 dot r_2
$
Es sind nur aeussere Kraefte massgebend. Die Kraft auf das Auflager leistet keine Arbeit.

#frage[Welche Methode verwendet man bei der Herleitung des Hebelgesetzes?]
- Prinzip der virtuellen Verschiebung
- Prinzip der virtuellen Arbeit

#frage[Wann befindet sich ein starrer Körper im Gleichgewicht?]
$
  sum_i arrow(F_i)^a = 0\
  sum_i arrow(D)_(M_i)^(a) = sum_i (arrow(r_i) times arrow(F_i^a)) = 0
$

#frage[Zeigen Sie für 3 in einer Ebene liegende Kräfte, die Gleichgewichtsbedingungen]
$
  sum_i^3 arrow(F_i) = 0\
  arrow(F_1) + arrow(F_2) + arrow(F_3) = 0
$

#frage[Wie findet man die Gleichgewichtsbedingungen, wenn 2 der 3 Kräfte parallel sind?]
Dann muss es eine dritte Kraft geben, die Verbindungslinie der Angriffspunkte $F_1$ und $F_2$ im umgekehrten Verhaeltnis teilen und entgegengesetzt gerichtet sein

=== Rotationsbewegung
#frage[Sie lassen einen Hohl- und einen Vollzylinder gleichen Außendurchmessers ($R_a$) und gleicher
  Masse eine unter dem Winkel α gegen die Horizontale geneigte Ebene herunterrollen. Der
  Innendurchmesser ($R_i$) des Hohlzylinders sein halb so groß wie der Außendurchmesser. Wie groß
  ist der Wegunterschied nach der Zeit t.]
#missing[]

#frage[Welche Größen der Rotation entsprechen den translatorischen Größen Impuls, Kraft und
  kinetischer Energie? Gib die Formeln in vektorieller Form an]

#show table.cell: it => { if it.y == 0 { strong(it) } else { it } }
#figure(
  ctable(
    cols: "ll",
    table.header([Translation], [Rotation]),
    [Impuls $arrow(p) = m arrow(v)$],
    [Drehimpuls $arrow(L) = arrow(omega) Theta$],
    [Kraft $arrow(F) = (dif arrow(p))/(dif t)$],
    [Drehmoment $arrow(D) = (dif arrow(L))/(dif t)$],
    [Kin. Energie $W_"kin" = 1/2 m v^2$],
    [Rotationsenergie $W_"kin"^"rot" = 1/2 omega L_(arrow(e_omega)) = 1/2 omega^2 Theta$],
    [Koerperkonstante Masse $arrow(F) = m dot arrow(a)$],
    [Koerperkonstantes Traegheitsmoment $arrow(D)_(M_arrow(e_omega)) = Theta_arrow(e_omega) (dif arrow(omega))/(dif t)$],
    [Leistung $P = arrow(F) arrow(v)$],
    [Leistung $P = omega arrow(D)_(M_arrow(e_omega))$],
  ),
)


#frage[Wie lautet der Energieerhaltungssatz der Mechanik bei Berücksichtigung der Rotation?]
In einem Reibungsfreien System bleibt die Gesamtenergie gleich, wenn es von aussen nicht beeinflusst wird. Mathematisch kann die Energieerhaltung wie folgt ausgedrueckt werden:
$
  E_"ges" = E_"kin(rot)" + E_"kin(trans)"+ E_"pot" = "const"
$

#frage[Wie lautet der Ausdruck für die kinetische Energie bei Rotation um eine starre Achse?]
Rotationsenergie:
$
  W_"kin"^"rot" = 1/2 omega L arrow(e_omega) = 1/2 omega Theta arrow(e_omega)
$

#frage[Geben Sie die Gesamtenergie an, wenn der Rotation eine Translationsbewegung überlagert ist.
  Welcher Energiebetrag ist eine Erhaltungsgröße?]
#missing[]
#frage[Skizzieren Sie die Berechnung des Trägheitsmomentes für einen Hohlzylinder beiRotation um die
  Zylinderachse]
#missing[]
#frage[Wie ist das Trägheitsmoment definiert?]
Mass fuer den Widerstand den ein Koerper der Veraenderung seiner Winkelgeschwindigkeit entgegensetzt.
#missing[]

#frage[Wie hängt das Trägheitsmoment mit dem Drehimpuls bei Rotation um eine ortsfeste Achse zusammen?]
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
*Ziel*: Bedingung bestimmen, unter der sich der Koerper nicht zu drehen beginnt. (Bestimmung der Arbeit, die von Kraeften verrichtet wird).
Wenn im Gleichgewicht, dann ist Arbeit aller Kraefte bei einer kleinen virtuellen Verschiebung = 0
#missing[formeln - rechnung]
