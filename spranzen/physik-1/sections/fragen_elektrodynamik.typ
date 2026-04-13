#import "@local/spranzen:0.1.0": *
#import "@local/spranzen-chemie:0.1.0": qty

= Elektrodynamik
== Punktladungen
#fragen-counter.update(0)
#frage[Welche Eigenschaften haben elektrische Ladungen?]
- Ladungsarten: positiv/negativ
- Ladung immer mit Masse verknüpft
- Einheit Coulomb
- Quantenladung $Q = n dot e$ (Elektron e hat Ladung #qty("1.6022e-14", "C"))
- Erhaltung: Summe der elektrischen Ladungen in einem geschlossenem System ist konstant
- Trennung - Rekombinatio: geladene Teilchen können sich paarweise bilden und annilihieren
- Invarianz bei Bewegungen: im gegensatz zu bewegten Massen haben bewegte Ladungen immer gleiche
  Werte

#frage[Was ist die Einheit der elektrischen Ladung?]
Coulomb $C$

#frage[Wie lautet das Coulombgesetz?]
$
  F = 1 / (4 dot pi dot epsilon_0) dot (q_1 q_2)/ r^2
$

== Kraftgesetze
#frage[Geben Sie das Coulomb-Gesetz der Elektrostatik und das Gravitationsgesetz nach Newton an.]
$
  "Coulomb: " F & = 1 / (4 dot pi dot epsilon_0) dot (q_1 q_2)/ r^2 \
   "Newton: " F & = G (m_1 m_2)/r
$
#frage[Erläutere die einzelnen vorkommenden Größen in Bedeutung und Dimension.]
#missing[Erklärung]
#frage[Was haben beide Gesetze gemeinsam. Worin unterscheiden sie sich]
- mathematische struktur
- es gibt nur positive Massen, d.h. beim Gravitationsgesetz kann es nur Anziehungen geben
- im Gegensatz dazu gibt es Abstoßungen bei Coulomb (negative ladungen)

#frage[Diskutieren Sie die Bedeutung beider Gesetze und geben Sie Beispiele an wo welches Gesetz
  wesentlich ist]
- beide Gesetze sind extrem wichtig
- Coulombkräfte in kleinen Systemen relevant
- Gravitationskräfte in großen Systemen relevant
- Kraftwirkung: für 2 Elektronen mit Abstand von #qty(1, "cm") $"Coulomb" > "Gravutation"$

#frage[Gegeben ist eine Punktladung Q
  + Beschreiben Sie, wie man vorgeht, um deren Feld E zu ermitteln
  + Skizzieren Sie die Feldvektoren einer positiven Punktladung Q und einer negativen Punktladung -Q
]
$
  arrow(E)(arrow(r)) = (arrow(F)(arrow(r)))/Q_2 = 1 / ( 4 pi epsilon_0) dot Q/abs(arrow(r))^2 dot arrow(e_r)
$

- neg: Kreis um Ladung mit Pfeilen nach innen
- pos: Kreis um Ladung mit Pfeilen nach aussen

#frage[Was ist das Superpositionsprinzip?]
Aka. Überlagerungsprinzip, Kraftwirkung zweier Punktladungen durch Anwesenheit einer dritten nicht
beeinflusst.

== Elektrisches Feld und Potential
#frage[Gegeben ist eine Punktladung Q. Durch welchen Ausdruck ist das Elektrische Felde E der
  Punktladung Q gegeben?]
$
  arrow(E)(arrow(r)) = (arrow(F)(arrow(r)))/Q_2 = 1 / ( 4 pi epsilon_0) dot Q/abs(arrow(r))^2 dot arrow(e_r)
$
Ein Quellfeld, es ist radial? gerichtet und hängt vom Abstand von der Punktladung ab.

#frage[Zeigen Sie, dass das Integral entlang eines Geschlossenen Weges gleich null ist.]

#missing[]
#frage[Wie ist das potential $V_p$ von E definiert und mittels welchen Operators kann E aus $V_p$
  ermittelt werden?]
#missing[]
== Gauss'sche Gesetze der Elektrostatik
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
=== Dielektrikum im Feld
#frage[Ein Kondensator erzeugt das elektrische Feld �⃗ 0. a) Was passiert, wenn man ein isolierendes
  Medium in den Kondensator einbringt?]
#missing[]
#frage[Was ist die Polarisation $P_mu$]
#missing[]
#frage[Wie groß ist das resultierende Feld 𝐸𝐸 im Isolator?]
#missing[]
#frage[Was ist die Verschiebungsdichte 𝐷𝐷 und wie lässt sie sich durch 𝐸𝐸0 bzw. 𝐸𝐸 ausdrücken?]
#missing[]
=== Dielektrische Konstanten
#frage[In einen Kondensator wird ein isolierendes Medium eingebracht: a) Was ist die
  Dielektrizitätskonstante ε?]
#missing[]
#frage[Was ist dielektrische Suszeptibilität χe?]
#missing[]
#frage[Wie hängen ε und χe miteinander zusammen?]
#missing[]
#frage[Warum ist die ist dielektrische Suszeptibilität χe sehr hoch]
#missing[]
=== Stationaere Stroeme
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
=== Rotation
#frage[Gegeben ist ein Vektorfeld a) Wie ist die Rotation von x definiert?]
#missing[]
#frage[Wie lautet der Ausdruck für die Divergenz in kartesischen Koordinaten?]
#missing[]
#frage[Wie lautet der Stokes'sche Satz?]
#missing[]
#frage[Leiten Sie mit Hilfe des Stokes'schen Satzes die Kirchoffsche Maschenregel ab]
#missing[]
=== Kirchoffsche Gesetze und Leiternetzwerke
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
=== Elektrische Leitfaehigkeit
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
