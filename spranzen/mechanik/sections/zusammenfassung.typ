/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *
#import "@preview/typed-physics:0.1.0" as tp
#import "@preview/cetz:0.5.2"

= Zusammenfassung Skriptum Mechanik 1

Kurzfassung der Kapitel 1 bis 8 des Skriptums (SoSe 2026). Vektoren sind fett gedruckt.

// ---------------------------------------------------------------------------
== Kap. 1: Einführung

Der Kurs baut in vier Blöcken aufeinander auf:
- *Kinematik* (Kap. 2–3): Bewegung ohne Kräfte, Polpläne, Prinzip der virtuellen Arbeit.
- *Elastizität* (Kap. 4–5): Verzerrungen, HOOKEsches Gesetz, Balkenbiegung.
- *Kinetik* (Kap. 6–7): Impuls- und Drallsatz für Festkörper und Flüssigkeiten.
- *Dynamik* (Kap. 8 ff.): Energiesätze, Bewegungsgleichungen, Schwingungen.

// ---------------------------------------------------------------------------
== Kap. 2: Kinematik

*Punktkinematik.* Ein Punkt bewegt sich entlang der Bahn mit der Bogenlänge $s(t)$:
$
  bold(v) = (dif bold(r))/(dif t) = dot(s) bold(e)_t, quad
  bold(a) = (dif bold(v))/(dif t)
$
- Raumfest kartesisch ($dot(bold(e))_i = bold(0)$):
  $bold(v) = dot(x) bold(e)_x + dot(y) bold(e)_y + dot(z) bold(e)_z$,
  $bold(a) = dot.double(x) bold(e)_x + dot.double(y) bold(e)_y + dot.double(z) bold(e)_z$.
- Natürliche Koordinaten (begleitendes Dreibein $bold(e)_t, bold(e)_n, bold(e)_m$) mit
  der 1. FRENETschen Formel $(dif bold(e)_t)/(dif s) = bold(e)_n \/ R$:
  $ bold(a) = dot.double(s) bold(e)_t + dot(s)^2/R bold(e)_n, quad a_m = 0 $
  $a_t$ ändert den Betrag, $a_n$ die Richtung der Geschwindigkeit.

#figure(
  tp.scene(
    tp.situation(
      tp.ceiling("c", length: 3, height: 3.4),
      tp.pendulum(
        "p",
        from: (on: "c", at: 50%),
        length: 3,
        angle: 25deg,
        mass: 1,
        symbol: $m$,
        angle-label: $phi$,
      ),
    ),
    labels: "symbol",
  ),
  caption: [Pendel: $bold(r) = L (sin phi, -cos phi)^T$,
    $bold(v) = L dot(phi) (cos phi, sin phi)^T$,
    $bold(a) = L dot.double(phi) bold(e)_t + L dot(phi)^2 bold(e)_n$.],
)

*Starrer Körper.* Der Abstand zweier Punkte bleibt konstant. Aus
$dif/(dif t) (bold(r)_(0P) dot bold(r)_(0P)) = 0$ folgt $bold(v)_(0P) perp bold(r)_(0P)$
und damit die *Grundformel der Kinematik*:
$
  bold(v)_P = bold(v)_0 + bold(omega) times bold(r)_(0P), quad
  bold(a)_P = bold(a)_0 + dot(bold(omega)) times bold(r)_(0P)
  + bold(omega) times (bold(omega) times bold(r)_(0P))
$
$bold(omega)$ ist ein freier Vektor: Alle Punkte des Körpers haben dasselbe
$bold(omega)$.

*Ebene Bewegung* ($bold(omega) = omega bold(e)_z$) mit dem Quervektor
$hat(bold(r))_(0P) = (-(y - y_0), x - x_0)^T$:
$
  bold(v)_P = bold(v)_0 + omega hat(bold(r))_(0P), quad
  bold(a)_P = bold(a)_0 + dot(omega) hat(bold(r))_(0P) - omega^2 bold(r)_(0P)
$
Der Momentanpol $G$ hat $bold(v)_G = bold(0)$: $x_G = x_0 - v_(0 y) \/ omega$,
$y_G = y_0 + v_(0 x) \/ omega$.

*Kinematische Ketten.* Hauptpole $P_(i F)$ drehen gegen die feste Umgebung, Nebenpole
$N_(i j)$ verbinden zwei Scheiben. Regeln:
- Feste Lager sind Hauptpole, Verbindungsgelenke sind Nebenpole.
- $P_(i F)$, $N_(i j)$ und $P_(j F)$ liegen auf einer Geraden.
- $N_(i j)$, $N_(j k)$ und $N_(i k)$ liegen auf einer Geraden.

// ---------------------------------------------------------------------------
== Kap. 3: Prinzip der virtuellen Arbeit

Für konservative Kräfte ist das Gesamtpotential $Pi = U + W$ konstant. Eine virtuelle
Änderung gibt
$ delta Pi = delta U + delta W = 0 $
Virtuelle Größen sind gedacht, infinitesimal klein und kinematisch verträglich.
- *PVV* (virtuelle Verschiebungen): Man bestimmt gezielt unbekannte *Kraftgrößen*.
- *PVK* (virtuelle Kräfte): Man bestimmt gezielt unbekannte *Verformungsgrößen*.

*Vorgehen (PVV):*
+ Die gesuchte Lager- oder Gelenkreaktion entfernen. Das System wird verschieblich.
+ Mit dem Polplan die Verschiebungsfigur bestimmen (kleine Winkel: $w = l phi$).
+ Die Summe aller virtuellen Arbeiten null setzen und nach der Reaktion lösen.

*Polplan.* Jede Scheibe dreht um ihren Hauptpol. Ein verschiebliches Lager legt den
Hauptpol auf eine Gerade normal zur Bewegungsrichtung. Ein Pol im Unendlichen bedeutet
reine Translation. Ist der Polplan widerspruchsfrei, ist das System verschieblich
(kinematisch). Das Abzählkriterium $f = 3 n - r > 0$ ist nur notwendig.

#figure(
  tp.scene(
    tp.situation(
      tp.rod("beam", length: 6, label: none),
      tp.support("A", at: "beam.start", kind: "pin"),
      tp.support("B", at: "beam.end", kind: "roller"),
      tp.force(on: "beam", at: 50%, magnitude: $F$, angle: -90deg, label: $F$),
    ),
    dimensions: (
      tp.dimension(
        from: "beam.start",
        to: "beam.end",
        side: "below",
        offset: 1.1,
        label: $L$,
      ),
    ),
  ),
  caption: [PVV am Einfeldträger: $B$ lösen, Drehung $delta phi$ um $A$.
    $F L/2 delta phi - B L delta phi = 0 arrow.r.double B = F/2$.],
)

// ---------------------------------------------------------------------------
== Kap. 4: Kinematik des verformbaren Körpers

Beim verformbaren Körper ändern sich die Abstände der Punkte. Er hat unendlich viele
Freiheitsgrade.
- *LAGRANGE*: Das Teilchen ist fix, Koordinaten der Anfangslage (Festkörper).
- *EULER*: Der Ort ist fix, man beobachtet das Feld (Strömungen).

Verschiebungsfeld $bold(u) = bold(r)' - bold(r)$. Die Relativverschiebung ist
$dif bold(u) = bold(A) dif bold(r)$ mit dem Verschiebungsgradienten
$A_(i j) = partial u_i \/ partial x_j$.

*Zugstab.* Die mittlere Dehnung vergleicht End- und Anfangslänge, die lokale Dehnung
zwei benachbarte Punkte:
$
  overline(epsilon)_x = (Delta l)/l_0, quad
  epsilon_x = lim_(Delta x -> 0) (u(x + Delta x) - u(x))/(Delta x) = (dif u)/(dif x)
$
Bei konstanter Dehnung gilt $overline(epsilon)_x = epsilon_x$.

#figure(
  {
    let s = tp.situation(
      tp.rod("bar", length: 5, thickness: 0.3, label: none),
      tp.support("A", at: "bar.start", kind: "fixed", angle: -90deg, size: 1.2),
    )
    cetz.canvas({
      tp.draw(s)
      import cetz.draw: *
      line((5, 0), (6.3, 0), mark: (end: "stealth"), stroke: 0.8pt)
      content((6.6, 0), $F$)
      line((5, -0.4), (5.6, -0.4), stroke: (dash: "dashed"))
      line((5, -0.6), (5, -0.2), stroke: 0.4pt)
      line((5.6, -0.6), (5.6, -0.2), stroke: 0.4pt)
      content((5.3, -0.75), $Delta l$)
      content((2.5, -0.55), $l_0$)
    })
  },
  caption: [Zugstab: Länge $l_0$, Verlängerung $Delta l$.],
)

*Verzerrungen in der Ebene:* Normaldehnung $epsilon_(x x) = partial u \/ partial x$,
Gleitung (Winkeländerung)
$gamma_(x y) = partial u \/ partial y + partial v \/ partial x = 2 epsilon_(x y)$.

*Verzerrungstensoren:*
$
  bold(V) = 1/2 (bold(A) + bold(A)^T) quad "(linearisiert, kleine Verformungen)", quad
  bold(V)_"GL" = 1/2 (bold(A) + bold(A)^T + bold(A)^T bold(A))
$
Der GREEN-LAGRANGE-Tensor stellt auch große Starrkörperdrehungen verzerrungsfrei dar.
Volumendehnung: $epsilon_V = epsilon_(x x) + epsilon_(y y) + epsilon_(z z)$.

// ---------------------------------------------------------------------------
== Kap. 5: Elastizität

*HOOKE (1D):* $sigma_(x x) = E epsilon_(x x)$, Querdehnung
$epsilon_(y y) = -nu epsilon_(x x)$ mit $0 <= nu <= 0.5$.

*Verallgemeinertes HOOKEsches Gesetz (3D):*
$
  epsilon_(x x) = 1/E [sigma_(x x) - nu (sigma_(y y) + sigma_(z z))] + alpha_T Delta T
  quad "(analog" y, z")", quad
  gamma_(x y) = tau_(x y)/G, quad G = E/(2 (1 + nu))
$
- *ESZ* (dünne Scheibe): $sigma_(z z) = tau_(x z) = tau_(y z) = 0$, aber
  $epsilon_(z z) = -nu/E (sigma_(x x) + sigma_(y y)) != 0$.
- *EVZ* (Damm, Tunnel): $epsilon_(z z) = gamma_(x z) = gamma_(y z) = 0$, daraus
  $sigma_(z z) = nu (sigma_(x x) + sigma_(y y))$ und
  $epsilon_(x x) = (1 - nu^2)/E [sigma_(x x) - nu/(1 - nu) sigma_(y y)]$.

*Reine Biegung.* Nach BERNOULLI bleiben Querschnitte eben. Daraus folgt eine lineare
Spannung $sigma_(x x) = C_1 + C_2 y + C_3 z$. Aus $N = 0$ und Achsen durch den
Schwerpunkt folgt $C_1 = 0$. Für Hauptachsen gilt:
$
  sigma_(x x) = M_y/I_(y y) z - M_z/I_(z z) y, quad
  |sigma|_max = (|M|)/W, quad W = I_(y y)/(|z|_max)
$

*Biegelinie.* Mit $epsilon_x = -z w''$ und HOOKE folgt $M_y = -E I w''$:
$
  E I w'' = -M quad "(1. Form, statisch bestimmt)", quad
  E I w'''' = p_z quad "(2. Form, immer)"
$
Randbedingungen: Einspannung $w = w' = 0$, Gelenk $w = M = 0$, freies Ende $M = Q = 0$.
Am Lastsprung gelten Übergangsbedingungen ($w$ und $w'$ stetig).

#figure(
  {
    let s = tp.situation(
      tp.rod("beam", length: 5, label: none),
      tp.support(
        "A",
        at: "beam.start",
        kind: "fixed",
        angle: -90deg,
        size: 1.2,
      ),
    )
    cetz.canvas({
      tp.draw(s)
      import cetz.draw: *
      line((0, 0.75), (5, 0.75), stroke: 0.5pt)
      for i in range(0, 11) {
        line(
          (i * 0.5, 0.75),
          (i * 0.5, 0.12),
          mark: (end: "stealth"),
          stroke: 0.5pt,
        )
      }
      content((2.5, 1.05), $p = "const."$)
      content((2.5, -0.45), $L$)
    })
  },
  caption: [Kragträger unter Eigengewicht: $w(L) = (p L^4)/(8 E I)$. Beidseitig
    eingespannt: $w_max = (p L^4)/(384 E I)$.],
)

// ---------------------------------------------------------------------------
== Kap. 6: Kinetik fester Körper

*Dynamisches Grundgesetz* (EULER–CAUCHY): Die lokale Kraftdichte ist proportional zur
absoluten Beschleunigung.
$
  bold(f) + (partial bold(sigma)_x)/(partial x) + (partial bold(sigma)_y)/(partial y)
  + (partial bold(sigma)_z)/(partial z) = rho bold(a)
$

*Schwerpunktsatz:* $bold(F)_R = integral_(V(t)) bold(a) dif m = m bold(a)_S$. Innere
Kräfte ändern die Schwerpunktbewegung nicht. D'ALEMBERT:
$bold(F)_R - m bold(a)_S = bold(0)$ (dynamisches Gleichgewicht mit Trägheitskraft).

*Impulssatz:*
$
  bold(I) = integral bold(v) dif m = m bold(v)_S, quad
  (dif bold(I))/(dif t) = bold(F)_R, quad
  bold(I)(t_2) - bold(I)(t_1) = integral_(t_1)^(t_2) bold(F)_R dif t
$
Für $bold(F)_R = bold(0)$ bleibt der Impuls erhalten.

#figure(
  tp.scene(
    tp.situation(
      tp.ground("floor", length: 8, mu: (s: 0.4, k: 0.3)),
      tp.block("A", mass: 2, on: "floor", at: 20%, size: 1, symbol: $m$),
      tp.velocity(on: "A", angle: 0deg, label: $v_0$),
    ),
    labels: "symbol",
  ),
  caption: [Bremsweg: $m dot.double(x) = -mu m g$ gibt $t_L = v_0 \/ (mu g)$ und
    $L = v_0^2 \/ (2 mu g)$.],
)

*Drallsatz* (Bezugspunkt fest oder Schwerpunkt $S$):
$
  bold(D)_0 = integral_(V(t)) (bold(r) - bold(r)_0) times bold(v) dif m, quad
  (dif bold(D)_0)/(dif t) = bold(M)_0
$
Starrer Körper: $bold(D)_S = bold(Theta)_S bold(omega)$ mit dem symmetrischen
Trägheitstensor
$
  bold(Theta)_S = mat(
    theta_(x x), -theta_(x y), -theta_(x z);
    -theta_(x y), theta_(y y), -theta_(y z);
    -theta_(x z), -theta_(y z), theta_(z z)
  ), quad
  theta_(x x) = integral (eta^2 + zeta^2) dif m, quad
  theta_(x y) = integral xi eta dif m
$
Hauptdiagonale: Massenträgheitsmomente. Nebendiagonale: Deviationsmomente.
- Ebene Drehung um $z$: $theta_(z z, S) dot(omega) = M_(z, S)$.
- Satz von STEINER: $theta_P = theta_S + m L^2$.
- Werte: Scheibe $m R^2 \/ 2$, Stab $m L^2 \/ 12$ (Mitte) bzw. $m L^2 \/ 3$ (Ende).

Massenträgheitsmoment (kg m², Widerstand gegen Drehung) und Flächenträgheitsmoment (m⁴,
Widerstand gegen Biegung) haben dieselbe Form $integral r^2 (dot)$.

// ---------------------------------------------------------------------------
== Kap. 7: Kinematik und Kinetik strömender Flüssigkeiten

- *Bahnlinie*: Weg eines Teilchens über die Zeit (LAGRANGE).
- *Stromlinie*: Kurve tangential zum Feld $bold(v)$ zu einem festen Zeitpunkt (EULER).
- Bei stationärer Strömung ($partial bold(v) \/ partial t = bold(0)$) fallen beide
  zusammen.

*Beschleunigung* im EULERschen Feld $bold(v)(t; x, y, z)$:
$
  bold(a) = underbrace((partial bold(v))/(partial t), "lokal")
  + underbrace((bold(v)^T nabla) bold(v), "konvektiv"), quad
  bold(a) = [(partial v)/(partial t) + partial/(partial s) (v^2/2)] bold(e)_t + v^2/R bold(e)_n
$

*Materielles Volumen* $V(t)$: immer dieselben Teilchen, es bewegt sich mit.
*Kontrollvolumen* $V$: raumfest, die Flüssigkeit strömt durch $partial V$.

*REYNOLDSsches Transporttheorem:*
$
  (dif Phi)/(dif t) = dif/(dif t) integral_(V(t)) phi dif V
  = integral_V (partial phi)/(partial t) dif V + integral.cont_(partial V) v_n phi dif S
$
- *Kontinuität* ($phi = rho$): $integral_V (partial rho)/(partial t) dif V
  + integral.cont_(partial V) mu dif S = 0$, $mu = rho bold(n)^T bold(v)$. Lokal:
  $partial rho \/ partial t + "div"(rho bold(v)) = 0$. Inkompressibel und stationär:
  $"div" bold(v) = 0$.
- *Impulssatz* ($phi = rho bold(v)$):
  $integral_V partial/(partial t) (rho bold(v)) dif V
  + integral.cont_(partial V) mu bold(v) dif S = bold(F)_R$.
- *Drallsatz* analog mit $(bold(r) - bold(r)_0) times rho bold(v)$.

#figure(
  cetz.canvas({
    import cetz.draw: *
    bezier((0, 1), (6, 1.5), (3, 1), (3.5, 1.5))
    bezier((0, -1), (6, -1.5), (3, -1), (3.5, -1.5))
    circle((0, 0), radius: (0.3, 1))
    circle((6, 0), radius: (0.45, 1.5))
    for y in (-0.5, 0, 0.5) {
      bezier((0.3, y), (5.55, y * 1.5), (3, y), (3.5, y * 1.5), stroke: (
        paint: gray,
        dash: "dashed",
      ))
    }
    line((-0.3, 0), (-1.4, 0), mark: (end: "stealth"))
    content((-1.0, 0.3), $bold(n)_1$)
    line((6.45, 0), (7.6, 0), mark: (end: "stealth"))
    content((7.2, 0.3), $bold(n)_2$)
    line((0.5, -0.6), (1.4, -0.6), mark: (end: "stealth"), stroke: blue)
    content((0.95, -0.85), text(blue, $v_1$))
    line((4.6, -0.9), (5.5, -0.9), mark: (end: "stealth"), stroke: blue)
    content((5.05, -1.15), text(blue, $v_2$))
    content((0, -1.35), $A_1$)
    content((6, -1.85), $A_2$)
  }),
  caption: [Stromröhre (stationär, inkompressibel): $A_1 v_1 = A_2 v_2$.],
)

Am durchströmten Rohrstück wirkt die Kraft
$bold(F)_W = -bold(n)_1 (p_1 + rho v_1^2) A_1 - bold(n)_2 (p_2 + rho v_2^2) A_2$. Der
Impulsfluss wirkt wie eine Druckerhöhung um $rho v^2$.

*BERNOULLI* entlang einer Stromlinie (reibungsfrei, aus
$rho bold(a) = bold(f) - nabla p$):
$
  integral_(s_1)^(s_2) (partial v)/(partial t) dif s + v_2^2/2 + p_2/rho + g z_2
  = v_1^2/2 + p_1/rho + g z_1 quad "(instationär)"
$
- Stationär: $v^2 \/ 2 + p \/ rho + g z = "const."$ bzw.
  $v^2 \/ (2 g) + p \/ (rho g) + z = h_E$.
- Mit Leistung:
  $v_2^2 \/ 2 + p_2 \/ rho + g z_2 = v_1^2 \/ 2 + p_1 \/ rho + g z_1 + L \/ dot(m)$.
  Pumpe $L > 0$, Turbine $L < 0$ (Druckverlust $Delta p = L \/ (A v)$).
- Beispiele: Staudruck $Delta p = rho v^2 \/ 2$, Ausfluss $v = sqrt(2 g h)$.

// ---------------------------------------------------------------------------
== Kap. 8: Energieerhaltung und dynamische Differentialgleichungen

*Kinetische Energie:* $T = 1/2 integral_(m(t)) v^2 dif m >= 0$ mit der absoluten
Geschwindigkeit $v$. Punktmasse: $T = m v^2 \/ 2$.

*Arbeitssatz und Energiesatz:* Aus
$bold(F)_R^T dif bold(r) = dif m thin bold(v)^T dif bold(v)$ folgt
$
  (dif T)/(dif t) = L, quad T_2 - T_1 = A_(1 2), quad
  T_1 + Pi_1 = T_2 + Pi_2 = "const." quad "(konservativ)"
$

*Starrer Körper* (Bezugspunkt $S$):
$
  T = underbrace(1/2 m v_S^2, T_"trans") + underbrace(1/2 bold(omega)^T bold(Theta)_S bold(omega), T_"rot"),
  quad "eben:" T_"rot" = 1/2 theta_(z z, S) omega^2
$

*Bewegungsgleichungen:* Man leitet $T + Pi = "const."$ bzw. $L = dif T \/ dif t$ nach
der Zeit ab.
- Pendel: $T = m L^2 dot(phi)^2 \/ 2$, $Pi = m g L (1 - cos phi)$, daraus
  $dot.double(phi) + g/L sin phi = 0$, linearisiert $dot.double(phi) + g/L phi = 0$.
- Bremsweg: $-mu m g s = 0 - m v_0^2 \/ 2$ gibt $s = v_0^2 \/ (2 mu g)$.
- U-Rohr (instationärer BERNOULLI): $dot.double(s) + (2 g)/L s = 0$.

#figure(
  {
    let s = tp.situation(
      tp.ground("floor", length: 6),
      tp.wall("wall", side: left, height: 2.2),
      tp.disk("D", on: "floor", at: 55%, radius: 0.7, mass: 1, symbol: $m$),
      tp.spring("s", from: (on: "wall", at: 64%), to: "D.top", coils: 7),
    )
    cetz.canvas({
      tp.draw(s, labels: "symbol")
    })
  },
  caption: [Rollender Zylinder ($theta_S = m a^2 \/ 2$, $omega = dot(x) \/ a$), Feder am
    oberen Punkt (Weg $2 x$): $T = 3/4 m dot(x)^2$ gibt
    $3/2 m dot.double(x) + 4 k x = F(t)$.],
)
