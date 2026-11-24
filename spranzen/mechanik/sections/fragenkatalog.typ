/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *

= Fragenkatalog Mechanik 1 (VO)

Antworten zum Fragenkatalog für die mündliche Prüfung (Stand Juni 2026). Vektoren sind
fett gedruckt. Punkte über Größen bezeichnen Zeitableitungen.

// ---------------------------------------------------------------------------
== Punktkinematik

#question(title: [Q#fcount: Kinematische Größen im globalen Koordinatensystem])[
  Die Lage eines Punktes $P$ beschreibt der Ortsvektor in einem raumfesten, kartesischen
  Koordinatensystem mit den konstanten Basisvektoren $bold(e)_x, bold(e)_y, bold(e)_z$:
  $ bold(r)(t) = x(t) bold(e)_x + y(t) bold(e)_y + z(t) bold(e)_z $
  Da die Basisvektoren zeitlich konstant sind, leitet man nur die Komponenten ab:
  $
    bold(v) = (dif bold(r))/(dif t) = dot(x) bold(e)_x + dot(y) bold(e)_y + dot(z) bold(e)_z,
    quad
    bold(a) = (dif bold(v))/(dif t) = dot.double(x) bold(e)_x + dot.double(y) bold(e)_y + dot.double(z) bold(e)_z
  $
  Betrag der Geschwindigkeit: $v = |bold(v)| = sqrt(dot(x)^2 + dot(y)^2 + dot(z)^2)$.
  Die Geschwindigkeit ist immer tangential zur Bahnkurve.
]

#question(title: [Q#fcount: Kinematische Größen in natürlichen Koordinaten])[
  Natürliche Koordinaten verwenden die Bogenlänge $s(t)$ entlang der Bahn und das
  begleitende Dreibein (Frenet-Dreibein), das sich mit dem Punkt mitbewegt:
  - Tangenteneinheitsvektor $bold(e)_t = (dif bold(r))/(dif s)$,
  - Hauptnormaleneinheitsvektor $bold(e)_n$ (zeigt zum Krümmungsmittelpunkt),
  - Binormaleneinheitsvektor $bold(e)_b = bold(e)_t times bold(e)_n$.

  Mit $(dif bold(e)_t)/(dif s) = 1/rho bold(e)_n$ ($rho$ = Krümmungsradius) folgt:
  $
    bold(v) = (dif bold(r))/(dif s) (dif s)/(dif t) = dot(s) bold(e)_t,
    quad
    bold(a) = dot.double(s) bold(e)_t + dot(s) (dif bold(e)_t)/(dif s) dot(s)
    = underbrace(dot.double(s), a_t) bold(e)_t + underbrace(dot(s)^2/rho, a_n) bold(e)_n
  $
  - $a_t = dot(v)$ (Tangentialbeschleunigung) ändert den Betrag der Geschwindigkeit.
  - $a_n = v^2/rho$ (Normal- bzw. Zentripetalbeschleunigung) ändert die Richtung.
  - In Richtung $bold(e)_b$ gibt es keine Beschleunigungskomponente.
]

// ---------------------------------------------------------------------------
== Kinematik des starren Körpers

#question(title: [Q#fcount: Grundformel der Kinematik (Herleitung)])[
  Beim starren Körper bleibt der Abstand zweier beliebiger Punkte $A$ und $P$ konstant.
  Für die Ortsvektoren gilt
  $ bold(r)_P = bold(r)_A + bold(r)_(A P), quad |bold(r)_(A P)| = "const". $

  *Herleitung.* Der Verbindungsvektor entsteht aus seiner Anfangslage durch eine
  Drehung: $bold(r)_(A P)(t) = bold(R)(t) bold(r)_(A P)^0$ mit der orthogonalen
  Drehmatrix $bold(R) bold(R)^T = bold(I)$. Ableiten ergibt
  $
    dot(bold(r))_(A P) = dot(bold(R)) bold(r)_(A P)^0 = dot(bold(R)) bold(R)^T bold(r)_(A P)
    = bold(Omega) bold(r)_(A P).
  $
  Aus $bold(R) bold(R)^T = bold(I)$ folgt durch Ableiten
  $dot(bold(R)) bold(R)^T + bold(R) dot(bold(R))^T = bold(0)$, also
  $bold(Omega) = -bold(Omega)^T$. Die Matrix $bold(Omega)$ ist schiefsymmetrisch. Sie
  hat nur drei unabhängige Einträge, die den Winkelgeschwindigkeitsvektor $bold(omega)$
  bilden: $bold(Omega) bold(x) = bold(omega) times bold(x)$. Somit gilt
  $dot(bold(r))_(A P) = bold(omega) times bold(r)_(A P)$ und die *Grundformel der
  Kinematik* lautet:
  $ bold(v)_P = bold(v)_A + bold(omega) times bold(r)_(A P) $
  Eine weitere Ableitung liefert die Beschleunigung:
  $
    bold(a)_P = bold(a)_A + dot(bold(omega)) times bold(r)_(A P)
    + bold(omega) times (bold(omega) times bold(r)_(A P))
  $

  *Folgerungen:*
  - $bold(omega)$ ist für alle Punkte des Körpers gleich.
  - Die Projektionen von $bold(v)_A$ und $bold(v)_P$ auf die Verbindungslinie $A P$ sind
    gleich (Satz der projizierten Geschwindigkeiten).
  - In der Ebene gibt es bei $omega eq.not 0$ einen Punkt mit $bold(v) = bold(0)$: den
    Momentanpol (Geschwindigkeitspol).
]

// ---------------------------------------------------------------------------
== Das Prinzip der virtuellen Arbeit

#question(title: [Q#fcount: PVV – Prinzip der virtuellen Verschiebungen])[
  Eine *virtuelle Verschiebung* $delta bold(r)$ ist eine gedachte, infinitesimal kleine
  und mit den Bindungen verträgliche (kinematisch zulässige) Verschiebung. Sie läuft
  ohne Zeitablauf ab, die Kräfte bleiben dabei unverändert.

  *Aussage:* Ein mechanisches System ist genau dann im Gleichgewicht, wenn die virtuelle
  Arbeit aller Kräfte für jede zulässige virtuelle Verschiebung verschwindet:
  $ delta W = delta W^((a)) + delta W^((i)) = 0. $
  Für ein System starrer Körper ist $delta W^((i)) = 0$, also
  $
    delta W^((a)) = sum_i bold(F)_i dot.op delta bold(r)_i
    + sum_j bold(M)_j dot.op delta bold(phi)_j = 0.
  $
  Ideale Bindungen (reibungsfreie Lager und Gelenke) leisten keine virtuelle Arbeit.
  Ihre Reaktionen fallen daher aus der Gleichung heraus.

  *Anwendung (Bestimmung einer Lager- oder Schnittgröße):*
  + Die gesuchte Bindung lösen und durch die zugehörige Kraft ersetzen. Das System wird
    zum Mechanismus mit einem Freiheitsgrad.
  + Mit dem Polplan die virtuellen Verschiebungen aller Kraftangriffspunkte durch eine
    einzige Größe (z.B. $delta phi$) ausdrücken.
  + $delta W = 0$ aufstellen. Da $delta phi eq.not 0$ beliebig ist, folgt die gesuchte
    Kraft aus einer einzigen Gleichung.
]

#question(title: [Q#fcount: PVK – Prinzip der virtuellen Kräfte])[
  Beim PVK sind die Rollen vertauscht: Man verwendet *wirkliche* Verformungen und
  Verschiebungen und ein *virtuelles Kraftsystem* $delta bold(F)$, das nur die
  Gleichgewichtsbedingungen erfüllen muss (statisch zulässig).

  *Aussage:* Die wirklichen Verschiebungen sind genau dann kinematisch verträglich, wenn
  die virtuelle äußere Ergänzungsarbeit gleich der virtuellen inneren Ergänzungsarbeit
  ist:
  $
    delta W^*_((a)) = delta W^*_((i)),
    quad
    sum_k delta F_k u_k = integral_0^l (delta N epsilon + delta M kappa + delta Q gamma) dif x.
  $
  Für linear-elastische Stäbe ($epsilon = N/(E A)$, $kappa = M/(E I)$) und eine
  virtuelle Einzelkraft $delta F = 1$ an der gesuchten Stelle folgt das *Arbeitssatz-*
  bzw. *Einheitslastverfahren*:
  $
    1 dot.op w = integral_0^l ((overline(N) N)/(E A) + (overline(M) M)/(E I)) dif x
    (+ "Temperaturanteile").
  $
  Dabei sind $overline(N), overline(M)$ die Schnittgrößen aus der Einheitslast.

  *Anwendung:* Berechnung von Verschiebungen und Verdrehungen sowie von statisch
  unbestimmten Systemen (Kraftgrößenverfahren).
]

#question(title: [Q#fcount: Grundregeln zur Bestimmung der Geschwindigkeitspole
  (Polpläne)])[
  Jede starre Scheibe $i$ dreht sich bei ebener Bewegung momentan um ihren Hauptpol
  $(i)$. Zwei Scheiben $i, j$ haben eine gemeinsame Relativdrehung um den Nebenpol
  $(i, j)$. Es gilt $|bold(v)_P| = omega r$ mit $bold(v)_P$ senkrecht zur
  Verbindungslinie Pol–$P$.

  *Regeln:*
  + *Festes Gelenklager:* Der Hauptpol liegt im Gelenk.
  + *Verschiebliches Lager (Rollenlager):* Der Hauptpol liegt auf der Normalen zur
    Gleitbahn durch den Lagerpunkt.
  + *Einspannung:* Die Scheibe ist unbeweglich (kein Pol).
  + *Gelenk zwischen zwei Scheiben:* Der Nebenpol liegt im Gelenk.
  + *Pendelstab:* Der Pol (Haupt- oder Nebenpol) liegt auf der Stabachse.
  + *Parallelführung / Schiebehülse:* Der Pol liegt im Unendlichen, senkrecht zur
    Führungsrichtung. Die Scheiben verschieben sich relativ zueinander nur parallel
    (Translation).
  + *Satz von den drei Polen:* Die Hauptpole $(i)$, $(j)$ und der Nebenpol $(i, j)$
    liegen auf einer Geraden. Ebenso liegen drei Nebenpole $(i, j)$, $(j, k)$, $(i, k)$
    auf einer Geraden.
  + *Widerspruch:* Ergibt sich für eine Scheibe kein eindeutiger Pol, ist sie
    unbeweglich. Ist das ganze System widerspruchsfrei unbeweglich, ist es kinematisch
    bestimmt (kein Mechanismus).

  Aus dem Polplan folgt die Verschiebungsfigur: Die Verschiebung eines Punktes ist
  proportional zum Abstand vom Pol, $delta w = r delta phi_i$.
]

// ---------------------------------------------------------------------------
== Verformungskinematik

#question(
  title: [Q#fcount: Unterschied zwischen Verzerrung und Dehnung am Beispiel des
    Zugstabes],
)[
  Ein Zugstab mit der Ausgangslänge $l_0$ verlängert sich auf $l = l_0 + Delta l$. Die
  Verschiebung der Stabpunkte ist $u(x)$.

  *Verzerrung* ist der allgemeine, geometrisch exakte Begriff für die Formänderung. Ein
  Verzerrungsmaß ist z.B. die GREEN-LAGRANGE-Verzerrung. Sie ist nichtlinear in den
  Verschiebungen:
  $
    E = (l^2 - l_0^2)/(2 l_0^2) = (dif u)/(dif x) + 1/2 ((dif u)/(dif x))^2.
  $

  *Dehnung* (technische oder ingenieurmäßige Dehnung) ist die auf die Ausgangslänge
  bezogene Längenänderung. Sie ist linear in den Verschiebungen:
  $ epsilon = (Delta l)/l_0 = (l - l_0)/l_0 = (dif u)/(dif x). $

  *Zusammenhang:* $E = epsilon + 1/2 epsilon^2$. Für kleine Verschiebungsgradienten
  ($|epsilon| << 1$) ist der quadratische Term vernachlässigbar, also $E approx epsilon$
  (lineare Theorie).

  *Ergänzung:* Der Verzerrungszustand im Raum umfasst Dehnungen (Längenänderungen,
  Diagonalglieder $epsilon_x, epsilon_y, epsilon_z$) und Gleitungen (Winkeländerungen
  $gamma_(x y), ...$). Beim Zugstab treten neben der Längsdehnung $epsilon_x$ auch
  Querdehnungen $epsilon_y = epsilon_z = -nu epsilon_x$ auf. Die Dehnung ist also nur
  ein Teil des Verzerrungszustandes.
]

// ---------------------------------------------------------------------------
== Elastizität

#question(
  title: [Q#fcount: Das verallgemeinerte HOOKEsche Gesetz für den räumlichen
    Spannungszustand],
)[
  Für linear-elastisches, isotropes Material mit dem Elastizitätsmodul $E$, der
  Querdehnzahl $nu$ und dem Wärmeausdehnungskoeffizienten $alpha_T$ gilt:
  $
    epsilon_x & = 1/E [sigma_x - nu (sigma_y + sigma_z)] + alpha_T Delta T, quad
                gamma_(x y) = tau_(x y)/G, \
    epsilon_y & = 1/E [sigma_y - nu (sigma_z + sigma_x)] + alpha_T Delta T, quad
                gamma_(y z) = tau_(y z)/G, \
    epsilon_z & = 1/E [sigma_z - nu (sigma_x + sigma_y)] + alpha_T Delta T, quad
                gamma_(z x) = tau_(z x)/G,
  $
  mit dem Schubmodul $G = E/(2(1 + nu))$. Nur zwei Materialkonstanten sind unabhängig.

  Nach den Spannungen aufgelöst (ohne Temperatur), mit den LAMÉ-Konstanten
  $lambda = (E nu)/((1 + nu)(1 - 2 nu))$ und $mu = G$:
  $
    sigma_x = 2 mu epsilon_x + lambda (epsilon_x + epsilon_y + epsilon_z), quad
    tau_(x y) = mu gamma_(x y), quad "usw."
  $
  In Tensorschreibweise:
  $sigma_(i j) = 2 mu epsilon_(i j) + lambda epsilon_(k k) delta_(i j)$.
]

#question(title: [Q#fcount: Spezialisierung für den ebenen Spannungs- und
  Verzerrungszustand])[
  *Ebener Spannungszustand (ESZ)*, z.B. dünne Scheibe:
  $sigma_z = tau_(x z) = tau_(y z) = 0$.
  $
    sigma_x = E/(1 - nu^2) (epsilon_x + nu epsilon_y), quad
    sigma_y = E/(1 - nu^2) (epsilon_y + nu epsilon_x), quad
    tau_(x y) = G gamma_(x y).
  $
  Die Dehnung in Dickenrichtung ist nicht null:
  $epsilon_z = -nu/E (sigma_x + sigma_y) = -nu/(1 - nu) (epsilon_x + epsilon_y)$.

  *Ebener Verzerrungszustand (EVZ)*, z.B. langer Damm oder Tunnel:
  $epsilon_z = gamma_(x z) = gamma_(y z) = 0$. Aus $epsilon_z = 0$ folgt
  $sigma_z = nu (sigma_x + sigma_y) eq.not 0$. Damit:
  $
    epsilon_x = (1 + nu)/E [(1 - nu) sigma_x - nu sigma_y], quad
    epsilon_y = (1 + nu)/E [(1 - nu) sigma_y - nu sigma_x], quad
    gamma_(x y) = tau_(x y)/G.
  $
  Man erhält die EVZ-Gleichungen aus den ESZ-Gleichungen, wenn man $E$ durch
  $E/(1 - nu^2)$ und $nu$ durch $nu/(1 - nu)$ ersetzt.
]

#question(title: [Q#fcount: Spannungsverteilung bei ebener reiner Balkenbiegung
  (Herleitung)])[
  *Reine Biegung:* nur ein Biegemoment $M$, keine Normalkraft und keine Querkraft. Die
  $z$-Achse zeigt nach unten.

  *Annahmen:*
  - BERNOULLI-Hypothese: Querschnitte bleiben eben und senkrecht zur verformten
    Balkenachse.
  - Linear-elastisches Material (HOOKE), einachsiger Spannungszustand
    $sigma_x = E epsilon_x$.
  - Kleine Verformungen.

  *1. Kinematik:* Ein Balkenelement der Länge $dif x$ krümmt sich mit dem
  Krümmungsradius $rho$ um den Winkel $dif phi$. Die neutrale Faser behält ihre Länge
  $rho dif phi$. Eine Faser im Abstand $z$ hat die Länge $(rho + z) dif phi$. Damit:
  $
    epsilon_x (z) = ((rho + z) dif phi - rho dif phi)/(rho dif phi) = z/rho = kappa z.
  $
  Die Dehnung ist linear über die Querschnittshöhe verteilt.

  *2. Werkstoffgesetz:* $sigma_x (z) = E kappa z$.

  *3. Gleichgewicht:*
  $
    N = integral_A sigma_x dif A = E kappa integral_A z dif A = 0
    quad arrow.r.double quad S_y = integral_A z dif A = 0.
  $
  Die neutrale Faser geht durch den Schwerpunkt.
  $
    M = integral_A sigma_x z dif A = E kappa integral_A z^2 dif A = E I kappa
    quad arrow.r.double quad kappa = M/(E I).
  $

  *Ergebnis (Biegespannungsformel nach NAVIER):*
  $ sigma_x (z) = M/I z, quad sigma_max = M/W, quad W = I/z_max. $
  Die Spannung ist linear verteilt, null in der Schwerachse und maximal am Rand.
]

#question(
  title: [Q#fcount: Differentialgleichung der Biegelinie für ebene Biegung
    (Herleitung und Lösung)],
)[
  *Herleitung.* Die Durchbiegung $w(x)$ zeigt nach unten (wie $z$). Die Krümmung einer
  Kurve ist
  $
    kappa = 1/rho = -w''/(1 + w'^2)^(3/2) approx -w'' quad (w'^2 << 1).
  $
  Mit dem Ergebnis der reinen Biegung $kappa = M/(E I)$ folgt die DGL 2. Ordnung:
  $ E I w'' = -M(x). $
  Mit den Gleichgewichtsbeziehungen am Balkenelement $Q' = -q$ und $M' = Q$ folgt für
  konstantes $E I$:
  $ E I w''' = -Q(x), quad E I w'''' = q(x). $

  *Lösung.* Viermaliges Integrieren:
  $
    E I w(x) = integral integral integral integral q dif x dif x dif x dif x
    + C_1 x^3/6 + C_2 x^2/2 + C_3 x + C_4.
  $
  Die vier Konstanten folgen aus den Randbedingungen:
  - gelenkiges Lager: $w = 0$, $M = 0 arrow.r.double w'' = 0$,
  - Einspannung: $w = 0$, $w' = 0$,
  - freies Ende: $M = 0 arrow.r.double w'' = 0$, $Q = 0 arrow.r.double w''' = 0$.
  Bei mehreren Bereichen kommen Übergangsbedingungen hinzu (Stetigkeit von $w$ und $w'$,
  Sprünge in $Q$ bzw. $M$).

  *Beispiel:* Einfeldträger mit Gleichlast $q$ und Spannweite $l$:
  $
    w(x) = (q x)/(24 E I) (l^3 - 2 l x^2 + x^3), quad
    w_max = w(l/2) = (5 q l^4)/(384 E I).
  $
]

// ---------------------------------------------------------------------------
== Kinetik fester Körper

#question(title: [Q#fcount: Das dynamische Grundgesetz (Definition)])[
  Das dynamische Grundgesetz (2. NEWTONsches Axiom) gilt in einem Inertialsystem. Die
  zeitliche Änderung des Impulses eines Massenpunktes ist gleich der resultierenden
  Kraft:
  $ (dif)/(dif t) (m bold(v)) = bold(F). $
  Für konstante Masse: $m bold(a) = bold(F)$.

  Nach D'ALEMBERT schreibt man $bold(F) - m bold(a) = bold(0)$. Die Trägheitskraft
  $-m bold(a)$ erlaubt es, die Kinetik wie ein Gleichgewichtsproblem zu behandeln.
]

#question(title: [Q#fcount: Schwerpunktsatz und Impulssatz (Definition)])[
  *Impuls* eines Körpers oder Systems:
  $
    bold(p) = integral_m bold(v) dif m = m bold(v)_S, quad bold(r)_S = 1/m integral_m bold(r) dif m.
  $

  *Impulssatz:* Die zeitliche Änderung des Gesamtimpulses ist gleich der Summe der
  *äußeren* Kräfte. Die inneren Kräfte heben sich paarweise auf (actio = reactio).
  $ (dif bold(p))/(dif t) = bold(F)^((a)). $
  Integrale Form:
  $bold(p)(t_2) - bold(p)(t_1) = integral_(t_1)^(t_2) bold(F)^((a)) dif t$.

  *Schwerpunktsatz:* Bei konstanter Masse folgt daraus
  $ m bold(a)_S = bold(F)^((a)). $
  Der Schwerpunkt bewegt sich so, als wäre die gesamte Masse in ihm vereinigt und als
  würden alle äußeren Kräfte an ihm angreifen.
]

#question(title: [Q#fcount: Drallsatz (Definition, ohne Herleitung)])[
  *Drall* (Drehimpuls) bezüglich eines Punktes $0$:
  $ bold(L)_0 = integral_m bold(r) times bold(v) dif m. $

  *Drallsatz:* Die zeitliche Änderung des Dralls ist gleich dem resultierenden Moment
  der äußeren Kräfte bezüglich desselben Punktes:
  $ (dif bold(L)_0)/(dif t) = bold(M)_0^((a)). $
  Der Bezugspunkt muss raumfest oder der Schwerpunkt $S$ sein.

  *Starrer Körper:* $bold(L)_S = bold(Theta)_S bold(omega)$. Für ebene Bewegung um eine
  Achse senkrecht zur Ebene gilt
  $ Theta_S dot(omega) = Theta_S dot.double(phi) = M_S^((a)). $
  Bei Drehung um eine feste Achse durch $0$: $Theta_0 dot.double(phi) = M_0^((a))$.
]

#question(
  title: [Q#fcount: Definition der Massenträgheits- und Deviationsmomente],
)[
  *Massenträgheitsmomente* (bezüglich der Koordinatenachsen):
  $
    Theta_(x x) = integral_m (y^2 + z^2) dif m, quad
    Theta_(y y) = integral_m (z^2 + x^2) dif m, quad
    Theta_(z z) = integral_m (x^2 + y^2) dif m.
  $
  Sie sind immer positiv. $sqrt(y^2 + z^2)$ ist der Abstand von der $x$-Achse.

  *Deviationsmomente* (Zentrifugalmomente):
  $
    Theta_(x y) = -integral_m x y dif m, quad
    Theta_(y z) = -integral_m y z dif m, quad
    Theta_(z x) = -integral_m z x dif m.
  $
  Sie können positiv, negativ oder null sein. (Manche Lehrbücher definieren sie ohne
  Minuszeichen und schreiben das Minus in den Tensor.)

  *Trägheitstensor:*
  $
    bold(Theta) = mat(
      Theta_(x x), Theta_(x y), Theta_(x z);
      Theta_(y x), Theta_(y y), Theta_(y z);
      Theta_(z x), Theta_(z y), Theta_(z z)
    ), quad "symmetrisch".
  $
  - In den *Hauptachsen* verschwinden alle Deviationsmomente. Symmetrieachsen sind
    Hauptachsen.
  - *Satz von STEINER:* $Theta_a = Theta_S + m d^2$ ($d$ = Abstand der parallelen Achse
    $a$ von der Schwerachse).
  - Beispiele: Stab um Mitte $m l^2/12$, Vollzylinder um Achse $m r^2/2$, Kugel
    $2/5 m r^2$.
]

// ---------------------------------------------------------------------------
== Kinematik und Kinetik strömender Flüssigkeiten

#question(title: [Q#fcount: Unterschied zwischen Bahn- und Stromlinie])[
  *Bahnlinie:* Weg, den ein einzelnes Fluidteilchen im Laufe der Zeit zurücklegt
  (LAGRANGEsche Betrachtung). Sie folgt aus
  $ (dif bold(r))/(dif t) = bold(v)(bold(r), t). $

  *Stromlinie:* Momentaufnahme des Geschwindigkeitsfeldes zu einem festen Zeitpunkt $t$
  (EULERsche Betrachtung). Die Tangente an die Stromlinie ist in jedem Punkt parallel
  zum Geschwindigkeitsvektor:
  $
    dif bold(r) times bold(v) = bold(0) quad arrow.l.r.double quad (dif x)/u = (dif y)/v = (dif z)/w.
  $

  *Unterschied:* Bei instationärer Strömung sind Bahn- und Stromlinien verschieden. Bei
  *stationärer* Strömung ($partial bold(v) slash partial t = bold(0)$) fallen sie
  zusammen. Stromlinien schneiden sich nicht (außer in Staupunkten).
]

#question(title: [Q#fcount: Lokale und konvektive Beschleunigung der Stromlinie
  (Herleitung)])[
  In der EULERschen Betrachtung ist die Geschwindigkeit entlang einer Stromlinie eine
  Funktion des Ortes $s$ und der Zeit $t$: $v = v(s, t)$. Ein Teilchen bewegt sich mit
  $s = s(t)$ und $dot(s) = v$.

  *Herleitung:* Die Beschleunigung des Teilchens ist die totale (materielle)
  Zeitableitung. Mit der Kettenregel:
  $
    a_t = (dif v)/(dif t) = (partial v)/(partial t) + (partial v)/(partial s) (dif s)/(dif t)
    = underbrace((partial v)/(partial t), "lokal") + underbrace(v (partial v)/(partial s), "konvektiv").
  $
  Normal zur Stromlinie wirkt zusätzlich $a_n = v^2/R$ ($R$ = Krümmungsradius der
  Stromlinie).

  - *Lokale Beschleunigung* $partial v slash partial t$: zeitliche Änderung an einem
    festen Ort. Sie verschwindet bei stationärer Strömung.
  - *Konvektive Beschleunigung* $v partial v slash partial s$: Änderung, weil das
    Teilchen in ein Gebiet anderer Geschwindigkeit wandert (z.B. Verengung eines
    Rohres). Sie tritt auch bei stationärer Strömung auf.

  Allgemein im Raum:
  $bold(a) = (partial bold(v))/(partial t) + (bold(v) dot.op nabla) bold(v)$.
]

#question(title: [Q#fcount: Unterschied zwischen dem MATERIELLEN und dem
  KONTROLL-Volumen])[
  *Materielles Volumen* $V(t)$: enthält immer dieselben Fluidteilchen. Es bewegt und
  verformt sich mit der Strömung. Über seine Oberfläche strömt keine Masse, seine Masse
  ist konstant. Die Grundgesetze der Mechanik (Massenerhaltung, Impuls- und Drallsatz)
  gelten direkt für das materielle Volumen.

  *Kontrollvolumen* $V_K$: ein im Raum festgelegtes (meist raumfestes) Gebiet mit fester
  Kontrollfläche $A_K$. Das Fluid strömt durch die Oberfläche hinein und hinaus. Der
  Inhalt ändert sich also laufend.

  Für Anwendungen ist das Kontrollvolumen praktischer, weil man nur die Größen an den
  Ein- und Austrittsflächen kennen muss. Das REYNOLDSsche Transporttheorem verbindet
  beide Betrachtungen.
]

#question(title: [Q#fcount: Das REYNOLDSsche Transporttheorem (Definition, ohne
  Herleitung)])[
  Für eine beliebige extensive Feldgröße mit der Dichte $phi(bold(r), t)$ (pro Volumen)
  gilt: Die zeitliche Änderung im materiellen Volumen ist gleich der Änderung im
  momentan deckungsgleichen Kontrollvolumen plus dem Nettofluss durch die
  Kontrollfläche:
  $
    (dif)/(dif t) integral_(V(t)) phi dif V
    = integral_(V_K) (partial phi)/(partial t) dif V
    + integral.cont_(A_K) phi (bold(v) dot.op bold(n)) dif A.
  $
  $bold(n)$ ist die nach außen gerichtete Flächennormale. Der erste Term ist die lokale
  Änderung im Inneren, der zweite der konvektive Fluss (Ausfluss minus Zufluss).
]

#question(title: [Q#fcount: Anwendung des REYNOLDSschen Transporttheorems auf
  Kontinuitätsgleichung und Impulssatz])[
  *Kontinuitätsgleichung* ($phi = rho$, Masse im materiellen Volumen konstant):
  $
    0 = integral_(V_K) (partial rho)/(partial t) dif V + integral.cont_(A_K) rho (bold(v) dot.op bold(n)) dif A.
  $
  - Stationär: $integral.cont rho (bold(v) dot.op bold(n)) dif A = 0$, also Zufluss =
    Abfluss.
  - Stromröhre: $rho_1 v_1 A_1 = rho_2 v_2 A_2 = dot(m)$.
  - Inkompressibel ($rho = "const"$): $v_1 A_1 = v_2 A_2 = Q$ (Volumenstrom).
  - Lokale Form: $(partial rho)/(partial t) + nabla dot.op (rho bold(v)) = 0$.

  *Impulssatz* ($phi = rho bold(v)$, Impulssatz für das materielle Volumen):
  $
    integral_(V_K) (partial (rho bold(v)))/(partial t) dif V
    + integral.cont_(A_K) rho bold(v) (bold(v) dot.op bold(n)) dif A
    = bold(F)_V + bold(F)_A.
  $
  $bold(F)_V$ sind Volumenkräfte (Gewicht), $bold(F)_A$ Oberflächenkräfte (Druckkräfte
  auf die Ein- und Austrittsflächen, Wandkräfte).

  Stationär und mit gleichmäßiger Geschwindigkeit über die Querschnitte:
  $
    sum_"aus" dot(m) bold(v) - sum_"ein" dot(m) bold(v) = sum bold(F).
  $
  Anwendung: Kraft eines Strahls auf eine Platte, Kraft auf einen Rohrkrümmer, Schub
  eines Triebwerks.
]

#question(title: [Q#fcount: Die BERNOULLI-Gleichung (ohne Herleitung)])[
  *Voraussetzungen:* ideales Fluid (reibungsfrei), inkompressibel, entlang einer
  Stromlinie, nur Schwerkraft als Volumenkraft.

  *Stationärer Idealfall:*
  $
    p + rho/2 v^2 + rho g z = "const", quad
    "Höhenform:" p/(rho g) + v^2/(2 g) + z = H = "const".
  $
  Statischer Druck + Staudruck + geodätischer Druck ist entlang der Stromlinie konstant
  (Energieerhaltung pro Volumen).

  *Instationärer Idealfall* (zwischen Punkt 1 und 2 auf einer Stromlinie):
  $
    p_1 + rho/2 v_1^2 + rho g z_1
    = p_2 + rho/2 v_2^2 + rho g z_2 + rho integral_1^2 (partial v)/(partial t) dif s.
  $

  *Leistungszufuhr bzw. -abfuhr:* Eine Pumpe führt dem Fluid die Leistung $P$ zu, eine
  Turbine entzieht sie. Bei dem Volumenstrom $Q$ entspricht dies dem Druck $P slash Q$
  bzw. der Förderhöhe $h_P = P/(rho g Q)$:
  $
    p_1 + rho/2 v_1^2 + rho g z_1 plus.minus P/Q = p_2 + rho/2 v_2^2 + rho g z_2.
  $
  Plus gilt für eine Pumpe (Zufuhr), minus für eine Turbine (Abfuhr). Verluste durch
  Reibung kann man als zusätzliche Verlusthöhe $h_V$ auf der rechten Seite
  berücksichtigen. Wirkungsgrade: Pumpe $P_"Welle" = P slash eta$, Turbine
  $P_"Welle" = eta P$.
]

// ---------------------------------------------------------------------------
== Arbeit, Leistung, Energie

#question(title: [Q#fcount: Arbeits- und Energiesatz für Festkörper (inkl.
  Herleitung)])[
  *Definitionen:* Arbeit $W_(1 2) = integral_1^2 bold(F) dot.op dif bold(r)$, Leistung
  $P = bold(F) dot.op bold(v)$ (bzw. $bold(M) dot.op bold(omega)$), kinetische Energie
  $T = 1/2 m v^2$.

  *Herleitung des Arbeitssatzes (Massenpunkt):* Das Grundgesetz
  $m dot(bold(v)) = bold(F)$ wird skalar mit $bold(v)$ multipliziert:
  $
    m bold(v) dot.op (dif bold(v))/(dif t) = (dif)/(dif t) (1/2 m bold(v) dot.op bold(v))
    = (dif T)/(dif t) = bold(F) dot.op bold(v) = P.
  $
  Integration über die Zeit mit $bold(v) dif t = dif bold(r)$:
  $
    T_2 - T_1 = integral_(t_1)^(t_2) bold(F) dot.op bold(v) dif t = integral_1^2 bold(F) dot.op dif bold(r) = W_(1 2).
  $

  *Arbeitssatz für Systeme:* Summation über alle Teilchen:
  $T_2 - T_1 = W_(1 2)^((a)) + W_(1 2)^((i))$. Beim starren Körper leisten die inneren
  Kräfte keine Arbeit ($W^((i)) = 0$), weil sich die Abstände nicht ändern.

  *Energiesatz:* Für konservative Kräfte existiert ein Potential $V$ mit
  $bold(F) = -nabla V$. Die Arbeit ist wegunabhängig: $W_(1 2) = -(V_2 - V_1)$.
  Eingesetzt in den Arbeitssatz:
  $ T_1 + V_1 = T_2 + V_2 = "const". $
  Potentiale: Gewicht $V = m g z$, Feder $V = 1/2 c x^2$, Drehfeder $V = 1/2 c_T phi^2$.
  Bei nichtkonservativen Kräften (Reibung, Dämpfung):
  $T_2 + V_2 = T_1 + V_1 + W_(1 2)^"nk"$.
]

#question(
  title: [Q#fcount: Kinetische Energie: allgemeine Definition und Aufspaltung
    für den starren Körper (ohne Herleitung)],
)[
  *Allgemeine Definition:*
  $
    T = 1/2 integral_m bold(v) dot.op bold(v) dif m = 1/2 integral_m v^2 dif m.
  $

  *Starrer Körper* (Aufspaltung nach KÖNIG): Translationsenergie des Schwerpunktes plus
  Rotationsenergie um den Schwerpunkt:
  $
    T = underbrace(1/2 m v_S^2, "Translation")
    + underbrace(1/2 bold(omega) dot.op bold(Theta)_S bold(omega), "Rotation").
  $
  - Ebene Bewegung: $T = 1/2 m v_S^2 + 1/2 Theta_S omega^2$.
  - Drehung um einen festen Punkt bzw. eine feste Achse $0$: $T = 1/2 Theta_0 omega^2$.
  - Ebene Bewegung mit Momentanpol $Pi$: $T = 1/2 Theta_Pi omega^2$.
]

// ---------------------------------------------------------------------------
== Der Einmassenschwinger

Bezeichnungen: Masse $m$, Federsteifigkeit $c$, Dämpferkonstante $d$, Erregerkraft
$F(t)$, Auslenkung $x$ aus der statischen Ruhelage.

#question(title: [Q#fcount: Bewegungsgleichung (Herleitung)])[
  Freischneiden der Masse: Federkraft $c x$ und Dämpferkraft $d dot(x)$ wirken der
  Bewegung entgegen. Schwerpunktsatz:
  $
    m dot.double(x) = F(t) - d dot(x) - c x quad arrow.r.double quad m dot.double(x) + d dot(x) + c x = F(t).
  $
  Misst man $x$ von der statischen Ruhelage aus, hebt sich das Gewicht gegen die
  statische Federvorspannung auf. Es erscheint nicht in der Gleichung.

  Normierte Form mit Eigenkreisfrequenz $omega$ und LEHRschem Dämpfungsmaß $zeta$:
  $
    dot.double(x) + 2 zeta omega dot(x) + omega^2 x = F(t)/m, quad
    omega = sqrt(c/m), quad zeta = d/(2 m omega) = d/(2 sqrt(c m)).
  $

  Alternative Herleitungen: Energiesatz ($(dif)/(dif t)(T + V) = 0$ für ungedämpfte
  freie Schwingung) oder LAGRANGE-Gleichungen.

  *Ersatzfedern:* Parallelschaltung $c = c_1 + c_2$, Reihenschaltung
  $1/c = 1/c_1 + 1/c_2$. Biegebalken als Feder: z.B. Kragarm $c = 3 E I slash l^3$.
]

#question(title: [Q#fcount: Freie ungedämpfte Schwingung])[
  $ dot.double(x) + omega^2 x = 0. $
  Ansatz $x = e^(lambda t)$ liefert $lambda = plus.minus i omega$. Reelle Lösung:
  $
    x(t) = A cos omega t + B sin omega t = C cos(omega t - phi), quad
    C = sqrt(A^2 + B^2), quad tan phi = B/A.
  $
  Anfangsbedingungen $x(0) = x_0$, $dot(x)(0) = v_0$: $A = x_0$, $B = v_0 slash omega$.

  - Eigenkreisfrequenz $omega = sqrt(c slash m)$ in $"rad"/"s"$,
  - Eigenfrequenz $f = omega/(2 pi)$ in Hz,
  - Schwingungsdauer $T = 2 pi slash omega$.
  - Mit statischer Absenkung $x_"st" = m g slash c$ gilt $omega = sqrt(g slash x_"st")$.
  - Mathematisches Pendel (linearisiert): $omega = sqrt(g slash l)$.
]

#question(title: [Q#fcount: Freie gedämpfte Schwingung])[
  $ dot.double(x) + 2 zeta omega dot(x) + omega^2 x = 0. $
  Ansatz $x = e^(lambda t)$ ergibt die charakteristische Gleichung
  $lambda^2 + 2 zeta omega lambda + omega^2 = 0$ mit
  $ lambda_(1,2) = omega (-zeta plus.minus sqrt(zeta^2 - 1)). $

  *Fallunterscheidung:*
  + *Schwache Dämpfung* $zeta < 1$: gedämpfte Schwingung
    $
      x(t) = e^(-zeta omega t) (A cos omega_d t + B sin omega_d t), quad
      omega_d = omega sqrt(1 - zeta^2),
    $
    mit $A = x_0$ und $B = (v_0 + zeta omega x_0)/omega_d$.
  + *Aperiodischer Grenzfall* $zeta = 1$: $x(t) = (A + B t) e^(-omega t)$. Die Masse
    kehrt am schnellsten ohne Überschwingen in die Ruhelage zurück.
  + *Starke Dämpfung (Kriechfall)* $zeta > 1$:
    $x(t) = A e^(lambda_1 t) + B e^(lambda_2 t)$ mit $lambda_1, lambda_2 < 0$. Keine
    Schwingung.

  *Logarithmisches Dekrement* (Bestimmung von $zeta$ aus Messungen):
  $
    Lambda = ln x_n/x_(n+1) = zeta omega T_d = (2 pi zeta)/sqrt(1 - zeta^2) approx 2 pi zeta.
  $
]

#question(
  title: [Q#fcount: Harmonisch erzwungene Schwingung (Herleitung und Lösung)],
)[
  $ m dot.double(x) + d dot(x) + c x = F_0 cos Omega t. $
  Die Gesamtlösung ist $x = x_h + x_p$. Die homogene Lösung $x_h$ klingt durch die
  Dämpfung ab (Einschwingvorgang). Übrig bleibt die stationäre partikuläre Lösung.

  *Herleitung (komplexer Ansatz):* $F_0 cos Omega t = "Re"(F_0 e^(i Omega t))$, Ansatz
  $x_p = "Re"(hat(X) e^(i Omega t))$:
  $
    (c - m Omega^2 + i d Omega) hat(X) = F_0
    quad arrow.r.double quad
    hat(X) = F_0/c dot.op 1/(1 - eta^2 + 2 i zeta eta), quad eta = Omega/omega.
  $
  (Gleichwertig: reeller Ansatz $x_p = a cos Omega t + b sin Omega t$ und
  Koeffizientenvergleich.)

  *Ergebnis:*
  $
    x_p (t) = x_"st" V(eta) cos(Omega t - psi), quad x_"st" = F_0/c,
  $
  $
    V(eta) = 1/sqrt((1 - eta^2)^2 + (2 zeta eta)^2), quad
    tan psi = (2 zeta eta)/(1 - eta^2).
  $
  - $V$ ist die Vergrößerungsfunktion, $psi$ die Phasenverschiebung.
  - $eta << 1$: $V approx 1$, $psi approx 0$ (quasistatisch, federbestimmt).
  - $eta = 1$ (Resonanz): $V = 1/(2 zeta)$, $psi = pi/2$ (dämpfungsbestimmt).
  - $eta >> 1$: $V -> 0$, $psi -> pi$ (massenbestimmt, gegenphasig).
  - Maximum von $V$ bei $eta = sqrt(1 - 2 zeta^2)$ (für $zeta < 1 slash sqrt(2)$).

  *Ungedämpfter Fall:* $V = 1/|1 - eta^2|$. Bei $eta = 1$ wächst die Amplitude linear
  mit der Zeit: $x_p = F_0/(2 m omega) t sin omega t$.
]

#question(title: [Q#fcount: Unwuchterregung, Fußpunkterregung und
  Schwingungsisolierung])[
  *Unwuchterregung:* Eine Unwuchtmasse $m_u$ mit Exzentrizität $e$ erzeugt
  $F(t) = m_u e Omega^2 cos Omega t$. Die Amplitude ist
  $ hat(x) = (m_u e)/m eta^2 V(eta). $
  Für $eta >> 1$ geht $hat(x) -> m_u e slash m$.

  *Fußpunkterregung* $u(t) = hat(u) cos Omega t$ über Feder und Dämpfer:
  $m dot.double(x) + d dot(x) + c x = c u + d dot(u)$. Das Amplitudenverhältnis ist
  gleich dem Verhältnis der übertragenen Kraft zur Erregerkraft (Übertragungsfunktion):
  $
    hat(x)/hat(u) = V_T (eta) = sqrt(1 + (2 zeta eta)^2)/sqrt((1 - eta^2)^2 + (2 zeta eta)^2).
  $

  *Schwingungsisolierung:* $V_T < 1$ gilt nur für $eta > sqrt(2)$. Man stimmt die
  Lagerung daher tief ab (weiche Federn, $omega << Omega$).
]

#question(title: [Q#fcount: Allgemeine Erregung (DUHAMEL-Integral)])[
  Die Antwort auf einen Einheitsimpuls zur Zeit $tau$ ist
  $h(t - tau) = 1/(m omega_d) e^(-zeta omega (t - tau)) sin omega_d (t - tau)$. Eine
  beliebige Kraft zerlegt man in Impulse $F(tau) dif tau$ und überlagert:
  $
    x(t) = 1/(m omega_d) integral_0^t F(tau) e^(-zeta omega (t - tau)) sin omega_d (t - tau) dif tau
  $
  (für ruhende Anfangslage). Beispiel Sprunglast $F_0$, ungedämpft:
  $x(t) = F_0/c (1 - cos omega t)$. Die maximale Auslenkung ist doppelt so groß wie die
  statische.
]

// ---------------------------------------------------------------------------
== Die LAGRANGEschen Bewegungsgleichungen (ohne Herleitung)

#question(title: [Q#fcount: Formulierung])[
  LAGRANGEsche Gleichungen 2. Art für ein holonomes System mit $f$ Freiheitsgraden:
  $
    (dif)/(dif t) ((partial T)/(partial dot(q)_k)) - (partial T)/(partial q_k)
    + (partial V)/(partial q_k) = Q_k, quad k = 1, ..., f.
  $
  Mit der LAGRANGE-Funktion $L = T - V$:
  $
    (dif)/(dif t) ((partial L)/(partial dot(q)_k)) - (partial L)/(partial q_k) = Q_k.
  $
  Man erhält genau $f$ Bewegungsgleichungen. Reaktionskräfte idealer Bindungen treten
  nicht auf.
]

#question(
  title: [Q#fcount: Definition und Bestimmung der darin vorkommenden Größen],
)[
  - *Generalisierte Koordinaten* $q_k$: voneinander unabhängige Lagegrößen (Wege,
    Winkel), die die Lage des Systems eindeutig beschreiben. Ihre Anzahl ist gleich der
    Zahl der Freiheitsgrade $f$. $dot(q)_k$ sind die generalisierten Geschwindigkeiten.
  - *Kinetische Energie* $T(q, dot(q), t)$: Summe der kinetischen Energien aller Körper,
    ausgedrückt durch $q_k$ und $dot(q)_k$ (Kinematik über Polplan oder Ortsvektoren).
    Starrer Körper: $1/2 m v_S^2 + 1/2 Theta_S omega^2$.
  - *Potentielle Energie* $V(q)$: Potential aller konservativen Kräfte (Gewicht $m g z$,
    Federn $1/2 c Delta l^2$), als Funktion der $q_k$.
  - *Generalisierte Kräfte* $Q_k$: erfassen alle nichtkonservativen Kräfte
    (Erregerkräfte, Dämpfung, Reibung). Man bestimmt sie aus der virtuellen Arbeit:
    $
      delta W^"nk" = sum_k Q_k delta q_k, quad
      Q_k = sum_i bold(F)_i dot.op (partial bold(r)_i)/(partial q_k)
      + sum_j bold(M)_j dot.op (partial bold(phi)_j)/(partial q_k).
    $
    Man gibt dazu jeweils nur $delta q_k eq.not 0$ vor (alle anderen null) und liest
    $Q_k$ als Faktor vor $delta q_k$ ab.
  - Viskose Dämpfer erfasst man alternativ mit der RAYLEIGHschen Dissipationsfunktion
    $D = 1/2 sum d_i dot(s)_i^2$ und dem Term $+ (partial D)/(partial dot(q)_k)$ auf der
    linken Seite.

  *Vorgehen:* Freiheitsgrad und $q_k$ wählen, $T$, $V$ und $Q_k$ aufstellen, ableiten,
  einsetzen. Für kleine Schwingungen linearisiert man und erhält
  $bold(M) dot.double(bold(q)) + bold(D) dot(bold(q)) + bold(K) bold(q) = bold(f)(t)$.
]

// ---------------------------------------------------------------------------
== Der Zweimassenschwinger

Beispielsystem: Masse $m_1$ hängt über die Feder $c_1$ an der festen Umgebung, Masse
$m_2$ über die Feder $c_2$ an $m_1$. Koordinaten $x_1, x_2$ aus der statischen Ruhelage.
Auf $m_1$ wirkt die Kraft $F_1(t)$.

#question(title: [Q#fcount: Aufstellung der Bewegungsgleichungen mit beliebiger
  Methode])[
  *Mit Freischnitt und Schwerpunktsatz:*
  $
    m_1 dot.double(x)_1 & = -c_1 x_1 + c_2 (x_2 - x_1) + F_1, \
    m_2 dot.double(x)_2 & = -c_2 (x_2 - x_1).
  $

  *Mit LAGRANGE:* $T = 1/2 m_1 dot(x)_1^2 + 1/2 m_2 dot(x)_2^2$,
  $V = 1/2 c_1 x_1^2 + 1/2 c_2 (x_2 - x_1)^2$, $Q_1 = F_1$, $Q_2 = 0$. Ergibt dieselben
  Gleichungen.

  *Matrixform:*
  $
    underbrace(mat(m_1, 0; 0, m_2), bold(M)) vec(dot.double(x)_1, dot.double(x)_2)
    + underbrace(mat(c_1 + c_2, -c_2; -c_2, c_2), bold(K)) vec(x_1, x_2)
    = vec(F_1, 0).
  $
  $bold(M)$ und $bold(K)$ sind symmetrisch. Mit Dämpfern kommt $bold(D) dot(bold(x))$
  hinzu.
]

#question(title: [Q#fcount: Berechnung der Eigenfrequenzen und Eigenvektoren])[
  Freie ungedämpfte Schwingung:
  $bold(M) dot.double(bold(x)) + bold(K) bold(x) = bold(0)$. Ansatz
  $bold(x) = hat(bold(x)) cos(omega t - phi)$:
  $ (bold(K) - omega^2 bold(M)) hat(bold(x)) = bold(0). $

  *Eigenfrequenzen:* Eine nichttriviale Lösung existiert nur für
  $det(bold(K) - omega^2 bold(M)) = 0$ (charakteristische Gleichung):
  $
    (c_1 + c_2 - omega^2 m_1)(c_2 - omega^2 m_2) - c_2^2 = 0
  $
  $
    arrow.r.double quad m_1 m_2 omega^4 - [m_1 c_2 + m_2 (c_1 + c_2)] omega^2 + c_1 c_2 = 0.
  $
  Diese quadratische Gleichung in $omega^2$ liefert zwei positive Lösungen
  $omega_1 < omega_2$.

  *Eigenvektoren (Eigenformen):* $omega_i^2$ einsetzen, eine Zeile verwenden und eine
  Komponente frei wählen (z.B. $hat(x)_1 = 1$):
  $
    hat(bold(x))^((i)) = vec(1, kappa_i), quad
    kappa_i = (c_1 + c_2 - omega_i^2 m_1)/c_2.
  $
  - 1. Eigenform: beide Massen schwingen gleichphasig ($kappa_1 > 0$).
  - 2. Eigenform: die Massen schwingen gegenphasig ($kappa_2 < 0$).
  - Orthogonalität: $hat(bold(x))^((1) T) bold(M) hat(bold(x))^((2)) = 0$ und
    $hat(bold(x))^((1) T) bold(K) hat(bold(x))^((2)) = 0$.

  *Allgemeine freie Lösung:* Überlagerung beider Eigenschwingungen
  $
    bold(x)(t) = C_1 hat(bold(x))^((1)) cos(omega_1 t - phi_1)
    + C_2 hat(bold(x))^((2)) cos(omega_2 t - phi_2).
  $
  Die vier Konstanten folgen aus den Anfangsbedingungen.
]

#question(
  title: [Q#fcount: Berechnung der harmonisch erzwungenen Schwingungen],
)[
  Erregung $bold(F)(t) = hat(bold(F)) cos Omega t$, ungedämpft. Ansatz
  $bold(x)_p = hat(bold(x)) cos Omega t$:
  $
    (bold(K) - Omega^2 bold(M)) hat(bold(x)) = hat(bold(F))
    quad arrow.r.double quad
    hat(bold(x)) = (bold(K) - Omega^2 bold(M))^(-1) hat(bold(F)).
  $
  Für die Kraft $hat(F)_1$ auf $m_1$ (CRAMERsche Regel):
  $
    hat(x)_1 = ((c_2 - Omega^2 m_2) hat(F)_1)/(Delta(Omega)), quad
    hat(x)_2 = (c_2 hat(F)_1)/(Delta(Omega)), quad
    Delta(Omega) = det(bold(K) - Omega^2 bold(M)).
  $
  - *Resonanz:* Für $Omega = omega_1$ oder $Omega = omega_2$ ist $Delta = 0$. Die
    Amplituden werden unendlich groß.
  - *Tilgung:* Für $Omega^2 = c_2 slash m_2$ ist $hat(x)_1 = 0$. Die Masse $m_1$ steht
    still, $m_2$ wirkt als Schwingungstilger. Diese Abstimmung nutzt man zur Beruhigung
    von Bauwerken und Maschinen.
  - Das Vorzeichen von $hat(x)_i$ gibt die Phase an (0 oder $pi$ zur Erregung).

  *Gedämpft:* komplexer Ansatz $bold(x)_p = "Re"(hat(bold(x)) e^(i Omega t))$ mit
  $(bold(K) - Omega^2 bold(M) + i Omega bold(D)) hat(bold(x)) = hat(bold(F))$. Betrag
  von $hat(x)_i$ = Amplitude, Argument = Phasenverschiebung.
]

// ---------------------------------------------------------------------------
== Einfache Stoßprobleme

#question(
  title: [Q#fcount: Die 3 Phasen des geraden zentralen Stoßes: Impulsbilanz,
    kinetische Energie],
)[
  *Gerader zentraler Stoß:* Die Stoßnormale geht durch beide Schwerpunkte, und die
  Geschwindigkeiten $v_1, v_2$ (mit $v_1 > v_2$) liegen auf der Stoßnormalen. Die
  Stoßdauer ist sehr kurz. Die Stoßkraft ist sehr groß, endliche Kräfte (Gewicht)
  vernachlässigt man. Die Lagen ändern sich während des Stoßes nicht.

  *Phase 1 – Kompression:* Die Körper verformen sich. Der Kompressionsimpuls
  $hat(F)_K = integral F dif t$ wirkt auf beide Körper entgegengesetzt:
  $ m_1 (v^* - v_1) = -hat(F)_K, quad m_2 (v^* - v_2) = hat(F)_K. $
  Kinetische Energie wird in Formänderungsenergie umgewandelt.

  *Phase 2 – Maximale Kompression:* Beide Körper haben dieselbe Geschwindigkeit
  $
    v^* = (m_1 v_1 + m_2 v_2)/(m_1 + m_2).
  $
  Die kinetische Energie ist minimal: $T^* = 1/2 (m_1 + m_2) v^(*2)$.

  *Phase 3 – Restitution:* Die Körper entspannen sich teilweise und trennen sich.
  Restitutionsimpuls $hat(F)_R$:
  $ m_1 (v'_1 - v^*) = -hat(F)_R, quad m_2 (v'_2 - v^*) = hat(F)_R. $
  Ein Teil der Formänderungsenergie wird zurückgewonnen, der Rest bleibt als plastische
  Verformung, Wärme und Schall verloren.

  *Impulsbilanz gesamt:* Die Stoßkräfte sind innere Kräfte, der Gesamtimpuls bleibt
  erhalten:
  $ m_1 v_1 + m_2 v_2 = m_1 v'_1 + m_2 v'_2. $

  *Geschwindigkeiten nach dem Stoß* (mit der Stoßzahl $e$, siehe unten):
  $
    v'_1 = (m_1 v_1 + m_2 v_2 - e m_2 (v_1 - v_2))/(m_1 + m_2), quad
    v'_2 = (m_1 v_1 + m_2 v_2 + e m_1 (v_1 - v_2))/(m_1 + m_2).
  $

  *Energieverlust:*
  $
    Delta T = T - T' = (1 - e^2)/2 dot.op (m_1 m_2)/(m_1 + m_2) (v_1 - v_2)^2 >= 0.
  $
]

#question(title: [Q#fcount: Stoßzahl: Definition und Wertebereich])[
  Die Stoßzahl (NEWTONsche Stoßzahl) ist das Verhältnis von Restitutionsimpuls zu
  Kompressionsimpuls. Gleichwertig ist sie das Verhältnis der Relativgeschwindigkeiten
  nach und vor dem Stoß:
  $ e = hat(F)_R/hat(F)_K = (v'_2 - v'_1)/(v_1 - v_2). $

  *Wertebereich:* $0 <= e <= 1$.
  - $e = 0$: vollplastischer Stoß. Keine Restitution, beide Körper bewegen sich mit
    $v^*$ weiter. Maximaler Energieverlust.
  - $0 < e < 1$: teilelastischer (realer) Stoß.
  - $e = 1$: vollelastischer Stoß. Kein Energieverlust ($Delta T = 0$).

  *Messung:* Eine Kugel fällt aus der Höhe $h$ auf eine feste Unterlage und springt auf
  die Höhe $h'$ zurück: $e = sqrt(h' slash h)$.
]
