/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *

#let bsp(title, body) = gc.example(title: title, body)

= Beispiele aus dem Skriptum

Diese Sammlung erklärt die Beispiele aus dem Skriptum (Kap. 2–8). Jedes Beispiel
nennt die Aufgabe, die Idee und den Lösungsweg mit dem Ergebnis. Vektoren sind fett
gedruckt. Rein qualitative Beispiele sind am Ende des Kapitels kurz zusammengefasst.

// ---------------------------------------------------------------------------
== Kap. 2: Kinematik

#bsp[Bsp. 2.1 + 2.2: Kinematik des Pendels][
  *Aufgabe:* Ein Massenpunkt bewegt sich am Pendel der Länge $L$ auf einer Kreisbahn.
  Der Winkel ist $phi(t) = phi_max cos omega t$. Gesucht sind $bold(v)(t)$ und
  $bold(a)(t)$.

  *Idee:* Den Ortsvektor in raumfesten Koordinaten anschreiben und zweimal nach der Zeit
  ableiten (Kettenregel, $phi = phi(t)$).

  $
    bold(r) = L vec(sin phi, -cos phi), quad
    bold(v) = L dot(phi) underbrace(vec(cos phi, sin phi), bold(e)_t)
  $
  Die Geschwindigkeit zeigt immer in Richtung der Bahntangente. Nochmals ableiten
  (Produktregel) gibt
  $
    bold(a) = underbrace(L dot.double(phi) vec(cos phi, sin phi), bold(a)_t "(Betrag)")
    + underbrace(L dot(phi)^2 vec(-sin phi, cos phi), bold(a)_n "(Richtung)")
  $

  *Ergebnis:* $|bold(v)|$ ist bei $phi = 0$ maximal und bei $|phi| = phi_max$ null.
  Die Tangentialbeschleunigung $a_t = L dot.double(phi)$ ändert den Betrag. Die
  Zentripetalbeschleunigung $a_n = L dot(phi)^2 = v^2 \/ L$ zeigt zum Aufhängepunkt
  und ändert nur die Richtung.
]

#bsp[Bsp. 2.3: Bewegung auf einer Schraubenlinie][
  *Aufgabe:* Gegeben ist $bold(r)(t) = (cos c t, sin c t, c t)^T$. Gesucht sind $s(t)$,
  $v$, das begleitende Dreibein und der Krümmungsradius $R$.

  *Lösungsweg:*
  + Geschwindigkeit: $bold(v) = c(-sin c t, cos c t, 1)^T$ mit
    $|bold(v)| = c sqrt(2) = "konst."$
  + Bogenlänge: $s(t) = integral_0^t |bold(v)| dif t = c sqrt(2) t$, also
    $c t = s \/ sqrt(2)$.
  + Tangente: $bold(e)_t = bold(v) \/ |bold(v)| = 1/sqrt(2) (-sin s/sqrt(2), cos s/sqrt(2), 1)^T$.
  + Mit der 1. FRENETschen Formel $dif bold(e)_t \/ dif s = bold(e)_n \/ R$:
    $
      (dif bold(e)_t)/(dif s) = 1/2 vec(-cos s/sqrt(2), -sin s/sqrt(2), 0)
      quad arrow.r.double quad
      R = 2, quad bold(e)_n = vec(-cos s/sqrt(2), -sin s/sqrt(2), 0)
    $
  + Binormale: $bold(e)_m = bold(e)_t times bold(e)_n
    = 1/sqrt(2) (sin s/sqrt(2), -cos s/sqrt(2), 1)^T$.

  *Merke:* $bold(e)_n$ zeigt waagrecht zur Schraubenachse. Die Krümmung ist konstant.
]

#bsp[Bsp. 2.4: Rotierendes Rad][
  *Aufgabe:* Ein Rad (Radius $R$) dreht um den ruhenden Mittelpunkt $0$ mit
  $omega = 2 "rad/s" = "konst."$ Gesucht sind $bold(v)_P$ und $bold(a)_P$ am Rand.

  *Idee:* Grundformel der Kinematik in der Ebene mit dem Quervektor
  $hat(bold(r))_(0 P)$ (um $pi\/2$ gedreht).

  Mit $bold(r)_(0 P) = (0, R)^T$, $hat(bold(r))_(0 P) = (-R, 0)^T$,
  $bold(v)_0 = bold(a)_0 = bold(0)$ und $dot(omega) = 0$:
  $
    bold(v)_P = bold(v)_0 + omega hat(bold(r))_(0 P) = vec(-2 R, 0), quad
    bold(a)_P = bold(a)_0 + dot(omega) hat(bold(r))_(0 P) - omega^2 bold(r)_(0 P)
    = vec(0, -4 R)
  $

  *Ergebnis:* $|bold(v)_P| = 2 R$ (tangential), $|bold(a)_P| = 4 R$ (nur
  Zentripetalbeschleunigung zum Mittelpunkt).
]

#bsp[Bsp. 2.5: Abrutschende Leiter und Momentanpol][
  *Aufgabe:* Ein Stab (Länge $L$) gleitet mit dem Ende $a$ an der Wand und mit dem Ende
  $b$ am Boden. Gegeben ist $bold(v)_a = -v_a bold(e)_y$. Gesucht sind $bold(v)_b$ und
  der Momentanpol $G$.

  *Lösungsweg:*
  + Grundformel: $bold(v)_b = bold(v)_a + bold(omega) times bold(r)_(a b)$ mit
    $bold(omega) = dot(phi) bold(e)_z$ und $bold(r)_(a b) = (L sin phi, -L cos phi, 0)^T$:
    $ bold(v)_b = vec(0, -v_a) + L dot(phi) vec(cos phi, sin phi) $
  + Zwangsbedingung: $y_a = L cos phi arrow.r.double dot(y)_a = -L dot(phi) sin phi
    = -v_a$, also $dot(phi) = v_a \/ (L sin phi)$.
  + Einsetzen: Die $y$-Komponente fällt weg (das Ende bleibt am Boden):
    $ bold(v)_b = v_a cot phi bold(e)_x $
  + Momentanpol mit $x_G = x_a - v_(a y) \/ omega$, $y_G = y_a + v_(a x) \/ omega$:
    $ G = (L sin phi, L cos phi) $

  *Merke:* $G$ liegt im Schnittpunkt der Normalen auf die Bahnen von $a$ und $b$.
]

*Qualitative Beispiele (Polpläne, Bsp. 2.6–2.8):*
- *Viergelenksystem (2.6):* $P_(1 F)$ und $P_(3 F)$ liegen in den festen Lagern. $P_(2 F)$
  liegt im Schnittpunkt der Geraden $overline(P_(1 F) N_(12))$ und
  $overline(P_(3 F) N_(23))$. Das System ist beweglich.
- *Dreigelenksystem (2.7):* $P_(1 F)$, $N_(12)$ und $P_(2 F)$ liegen nicht auf einer
  Geraden. Der Polplan ist widersprüchlich. Das System ist unbeweglich.
- *Bewegliches Lager (2.8):* Ein Gleitlager statt des rechten Festlagers legt
  $P_(2 F)$ auf die Normale zur Gleitrichtung. Der Schnitt mit
  $overline(P_(1 F) N_(12))$ gibt $P_(2 F)$. Das System ist beweglich.

// ---------------------------------------------------------------------------
== Kap. 3: Prinzip der virtuellen Arbeit

#bsp[Bsp. 3.1 + 3.2: Masse an der Feder][
  *Aufgabe:* Eine Masse $m$ hängt an einer Feder $k$. Gesucht ist die statische
  Ruhelage $x_s$.

  *Idee 1 (Minimum des Potentials):*
  $
    Pi = U + W = 1/2 k x_s^2 - m g x_s, quad
    (dif Pi)/(dif x) = k x_s - m g = 0
    quad arrow.r.double quad x_s = (m g)/k
  $

  *Idee 2 (virtuelle Verrückung $delta x$):* Die Schwerkraft leistet
  $delta W = +F_G delta x$. Die Feder leistet $delta U = -F delta x$. Aus
  $delta Pi = (F_G - F) delta x = 0$ mit $delta x != 0$ folgt $F = F_G$.

  *Merke:* Die äußere Arbeit wird vollständig als Federenergie gespeichert.
]

#bsp[Bsp. 3.3: PVV am Einfeldträger][
  *Aufgabe:* Ein Einfeldträger (Länge $l$) trägt $F$ in Feldmitte. Gesucht ist die
  Auflagerkraft $B$.

  *Lösungsweg:*
  + Lager $B$ entfernen und durch die Kraft $B$ ersetzen. Das System wird kinematisch
    ($f = 3 - 2 = 1$).
  + Virtuelle Verschiebung $delta s$ in $b$. Der Balken dreht um $A$. Kinematik:
    $delta u = 1/2 delta s$.
  + PVV:
    $
      delta A = F dot 1/2 delta s - B delta s = 0
      quad arrow.r.double quad B = F/2
    $
  + Kontrolle mit $sum M_A = 0$: $F l\/2 - B l = 0$. #sym.checkmark
]

#bsp[Bsp. 3.4: Polkonstruktion – Zweischeibensystem][
  *Aufgabe:* Zwei Scheiben ($L_1$, $L_2$) mit Festlager $a$, Gelenk $b$ und Gleitlager
  $c$. Gesucht sind die Verschieblichkeit und der kinematische Zusammenhang.

  *Lösungsweg:*
  + Abzählen: $"DOF" = 2 dot 3 = 6$, Bindungen $A + B + C = 2 + 2 + 1 = 5$,
    also $f = 6 - 5 = 1 > 0$.
  + Polplan: $P_(1 F) = a$, $N_(12) = b$. $P_(2 F)$ liegt auf der Normalen zur
    Gleitrichtung in $c$. Der Polplan ist widerspruchsfrei. Das System ist verschieblich.
  + Verschiebung im Gelenk: $w_B = phi_1 L_1 = phi_2 L_2$, also
    $phi_1 = phi_2 L_2 \/ L_1$.

  *Merke:* $f > 0$ ist nur notwendig. Erst der widerspruchsfreie Polplan bestätigt die
  Verschieblichkeit.
]

#bsp[Bsp. 3.7: Polplan mit schrägem Stab][
  *Aufgabe:* Ein Rahmen (Scheiben I und II) mit Lagern $A$ (1 Bindung), $B$ (Gelenk,
  2) und $C$ (2). Gesucht ist der kinematische Zusammenhang.

  *Lösungsweg:*
  + $f = 6 - (1 + 2 + 2) = 1 > 0$.
  + $P_(1 F) = C$. $P_(2 F)$ liegt auf $overline(P_(1 F) N_(12))$ (verlängert) und auf
    der Normalen zur Bewegungsrichtung von $A$.
  + Mit dem Polstrahl $c = sqrt(a^2 + b^2)$:
    $delta w_B = delta phi_1 c = delta phi_2 c arrow.r.double delta phi_1 = delta phi_2$
    und $delta w_A = 2 a delta phi_2$.
]

#bsp[Bsp. 3.8: PVV am Zweifeldträger mit Federn][
  *Aufgabe:* Zwei starre Scheiben (Gelenk $N_(12)$) auf zwei Federn $k$. Lasten $F_1$,
  $F_2$ und $R$ am Ende. Gesucht sind $F_1$ und $F_2$ im Gleichgewicht.

  *Lösungsweg:*
  + Abzählen: $f = 6 - 2 - 2 = 2$. Zwei unabhängige kinematische Variablen $u_1$, $u_2$.
  + Kinematik aus der Verschiebungsfigur: $Delta u = u_2 - 2 u_1$,
    $u_r = 2 u_1 + 2 Delta u = 2(u_2 - u_1)$.
  + Potential:
    $
      Pi(u_1, u_2) = -R u_r + F_1 u_1 + F_2 u_2 = (2 R + F_1) u_1 + (F_2 - 2 R) u_2
    $
  + Variation: $delta Pi = (2 R + F_1) delta u_1 + (F_2 - 2 R) delta u_2 = 0$. Da
    $delta u_1$ und $delta u_2$ unabhängig sind, muss jede Klammer null sein:
    $ F_1 = -2 R, quad F_2 = 2 R $
  + Federwege: $u_1 = F_1\/k = -2 R\/k$, $u_2 = 2 R\/k$, $u_r = 8 R\/k$.

  *Merke:* Die Vorzeichen zeigen die wahre Richtung. $u_1$ geht nach oben, $u_2$ nach
  unten. Die anfangs angenommene Richtung war also teilweise falsch.
]

#bsp[Bsp. 3.9: PVV am regelmäßigen Fachwerk][
  *Aufgabe:* Ein statisch bestimmtes Fachwerk (4 Felder $L$, Höhe $H$, Last $F$ im ersten
  Feld). Gesucht ist die Obergurtkraft $S$.

  *Lösungsweg:*
  + Den Stab $S$ durchtrennen und durch das Kräftepaar $S$ ersetzen. Es entstehen zwei
    Scheiben I und II mit $P_(1 F)$, $P_(2 F)$ in den Lagern und $N_(12)$ im
    Untergurtgelenk.
  + Verdrehung $delta alpha$. Kinematik: $delta s = L delta alpha$ (Lastpunkt),
    $delta v = H delta alpha$ (Stabende, je Scheibe).
  + PVV:
    $
      delta A = F delta s + 2 S delta v = F L delta alpha + 2 S H delta alpha = 0
      quad arrow.r.double quad S = -F/2 L/H
    $

  *Ergebnis:* $S < 0$, der Obergurt ist ein Druckstab.
]

*Qualitative Beispiele (Bsp. 3.5, 3.6, 3.10):*
- *Hauptpol im Unendlichen (3.5):* Ein Pol im Unendlichen bedeutet einen unendlich großen
  Radius. Die Scheibe verschiebt sich rein translatorisch (z.~B. rein vertikal).
- *Dreigelenkrahmen mit Gleitlagern (3.6):* $P_(1 F)$ und $P_(2 F)$ liegen im Unendlichen.
  Das System kann sich rein vertikal verschieben.
- *Fachwerk (3.10):* Bei der Verschiebungsfigur bleiben die Winkel innerhalb jeder
  starren Scheibe erhalten.

// ---------------------------------------------------------------------------
== Kap. 4: Kinematik des verformbaren Körpers

#bsp[Bsp. 4.1: Zugstab – einachsige Dehnung][
  *Aufgabe:* Ein Stab (Länge $l_0$) verlängert sich um $Delta l$.

  - Mittlere Dehnung: $macron(epsilon)_x = (l - l_0)\/l_0 = Delta l \/ l_0$.
  - Lokale Dehnung über zwei benachbarte Punkte $x$ und $x + Delta x$:
    $
      epsilon_x = lim_(Delta x -> 0) (u(x + Delta x) - u(x))/(Delta x) = (dif u)/(dif x)
    $

  *Merke:* Bei konstanter Dehnung gilt $macron(epsilon)_x = epsilon_x$. Die Längenänderung
  folgt aus $Delta l = integral epsilon_x dif x$.
]

#bsp[Bsp. 4.2: Gummiquadrat – Dehnung und Gleitung][
  *Aufgabe:* Ein Quadrat aus Gummi wird gestreckt und in eine Raute verformt.

  - *Normaldehnungen:* $epsilon_x = partial u \/ partial x$, $epsilon_y = partial v \/ partial y$
    (Längenänderung der Kanten).
  - *Gleitung:* Die Änderung des rechten Winkels ist
    $gamma_(x y) = alpha + beta = partial v \/ partial x + partial u \/ partial y$.
  - Im Verzerrungstensor steht die halbe Gleitung: $epsilon_(x y) = gamma_(x y) \/ 2$.
]

#bsp[Bsp. 4.3 + 4.4: Betonwürfel – Druckversuch][
  *Aufgabe:* Betonwürfel $L = 150 "mm"$, zentrische Last. Gemessen:
  $epsilon_(z z) = -0.645 dot 10^(-3)$, $epsilon_(x x) = epsilon_(y y) = 0.129 dot 10^(-3)$.
  Gesucht sind der Verzerrungstensor und die Volumendehnung.

  *4.3 (nur Druck, $gamma_(i j) = 0$):*
  $
    bold(epsilon) = mat(0.129, 0, 0; 0, 0.129, 0; 0, 0, -0.645) dot 10^(-3), quad
    epsilon_V = epsilon_(x x) + epsilon_(y y) + epsilon_(z z) = -0.387 dot 10^(-3)
  $

  *4.4 (zusätzlich Reibung an der Lastplatte, $gamma_(z x) = 0.388 dot 10^(-3)$):*
  Es kommt $epsilon_(x z) = gamma_(z x)\/2 = 0.194 dot 10^(-3)$ dazu:
  $
    bold(epsilon) = mat(0.129, 0, 0.194; 0, 0.129, 0; 0.194, 0, -0.645) dot 10^(-3)
  $

  *Merke:* Der Würfel wird zum schiefen Parallelepiped. Schub führt bei Beton zu
  Schrägrissen.
]

#bsp[Bsp. 4.5: Elastomerlager – GREEN-LAGRANGE-Tensor][
  *Aufgabe:* Ein Elastomerlager ($H = 100 "mm"$) verschiebt sich oben um
  $u_0 = 150 "mm"$. Mit $u(z) = gamma z$ ist $gamma = 1.5$ (150 % Scherung).
  Gesucht ist $bold(V)_"GL"$.

  *Lösungsweg:* Nur $partial u \/ partial z = gamma$ ist ungleich null:
  $
    bold(A) = mat(0, 0, gamma; 0, 0, 0; 0, 0, 0), quad
    bold(V)_"GL" = 1/2 (bold(A) + bold(A)^T + bold(A)^T bold(A))
    = 1/2 mat(0, 0, gamma; 0, 0, 0; gamma, 0, gamma^2)
  $

  *Merke:* Der Term $gamma^2 \/ 2$ kommt aus der geometrischen Nichtlinearität. Bei großer
  Scherung darf man ihn nicht vernachlässigen. Der lineare Tensor kennt ihn nicht.
]

// ---------------------------------------------------------------------------
== Kap. 5: Elastizität und Balkenbiegung

#bsp[Bsp. 5.1: BERNOULLI-Hypothese (qualitativ)][
  Bei schiefer Biegung ($M_y = M_z$, quadratischer Querschnitt) ist $sigma_(x x)$ linear
  über den Querschnitt verteilt. Die Nulllinie ($sigma_(x x) = 0$) liegt schräg durch den
  Schwerpunkt. Die Resultierenden der Spannungen müssen die Schnittgrößen ergeben.
]

#bsp[Bsp. 5.2: Bemessung eines I-Trägers][
  *Aufgabe:* Träger auf zwei Stützen, $L = 20 "m"$, Einzellast $F = 5 "kN"$ in der
  Mitte. Querschnitt $B = 100 "mm"$, $t = 5 "mm"$. Gesucht ist die Höhe $H$, sodass
  $|sigma|_max <= 200 "N/mm"^2$.

  *Lösungsweg:*
  + Maximales Moment in Feldmitte: $M_max = F L \/ 4$.
  + Trägheitsmoment (Flansche mit STEINER, Steg):
    $
      I_(y y) = 2 (B t^3)/12 + 2 B t (H - t)^2/4 + (t (H - 2 t)^3)/12
    $
  + Widerstandsmoment $W = 2 I_(y y) \/ H$, Bedingung
    $sigma_max - (F L)/(4 W(H)) >= 0$.
  + Die Nullstelle dieser Funktion liegt bei $H = 0.2 "m"$.

  *Ergebnis:* $H >= 200 "mm"$.
]

#bsp[Bsp. 5.3: Biegelinie des Kragträgers unter Eigengewicht][
  *Aufgabe:* Stahl-Kragträger, $L = 5 "m"$, Querschnitt $50 times 50 "mm"$. Gesucht ist
  $w(L)$.

  *Werte:*
  $
    E I = 2.1 dot 10^(11) dot 0.05^4/12 = 109 375 "Nm"^2, quad
    p = rho A g = 7800 dot 0.05^2 dot 9.81 = 191.3 "N/m"
  $

  *Lösungsweg:*
  + 4-mal integrieren: $E I w'''' = p arrow.r.double
    w = p/(E I) x^4/24 + C_1 x^3/6 + C_2 x^2/2 + C_3 x + C_4$.
  + Randbedingungen:
    - Einspannung $x = 0$: $w(0) = 0 arrow.r C_4 = 0$, $w'(0) = 0 arrow.r C_3 = 0$.
    - Freies Ende $x = L$: $Q(L) = 0 arrow.r w'''(L) = 0 arrow.r C_1 = -p L \/ (E I)$.
    - $M(L) = 0 arrow.r w''(L) = 0 arrow.r C_2 = p L^2 \/ (2 E I)$.
  + Biegelinie und Endwert:
    $
      w(x) = p/(E I) (x^4/24 - L x^3/6 + L^2 x^2/4), quad
      w(L) = (p L^4)/(8 E I) = 0.137 "m"
    $

  *Merke:* Integrationskette $p -> Q -> M -> w' -> w$. Die Konstanten folgen aus den
  Randbedingungen.
]

#bsp[Bsp. 5.4: Beidseitig eingespannter Träger][
  *Aufgabe:* Träger der Länge $L$ unter $p = "konst."$, beide Enden eingespannt. Gesucht
  sind $w(x)$ und $w_max$.

  *Lösungsweg:*
  + Das System ist 3-fach statisch unbestimmt ($m = 6 - 3 = 3$). Daher die 2. Form
    $E I w'''' = p$ verwenden. Die allgemeine Lösung ist dieselbe wie in Bsp. 5.3.
  + Randbedingungen: $w(0) = w'(0) = 0 arrow.r C_3 = C_4 = 0$.
    $w(L) = w'(L) = 0$ gibt zwei Gleichungen:
    $ C_1 = -(p L)/(2 E I), quad C_2 = (p L^2)/(12 E I) $
  + Biegelinie:
    $ w(x) = p/(E I) (x^4/24 - L x^3/12 + L^2 x^2/24) $
  + Aus Symmetrie bzw. $w'(x) = 0$ folgt $x = L\/2$:
    $ w_max = (p L^4)/(384 E I) $

  *Merke:* Die Einspannung reduziert die Durchbiegung auf 1/5 des Einfeldträgers
  ($5 p L^4 \/ (384 E I)$).
]

#bsp[Bsp. 5.5: Einfeldträger unter Einzellast][
  *Aufgabe:* Einfeldträger ($L = a + b$), Einzellast $F$ an der Stelle $a$. Gesucht ist
  $w(x)$.

  *Lösungsweg:*
  + Statisch bestimmt, daher die 1. Form $E I w'' = -M(x)$ mit zwei Bereichen:
    $
      M_I = F b/L x quad (0 <= x <= a), quad M_(I I) = F a/L (L - x) quad (a <= x <= L)
    $
  + Je Bereich zweimal integrieren (Bereich II in $(L - x)$ anschreiben). Es entstehen
    vier Konstanten.
  + Randbedingungen: $w_1(0) = 0 arrow.r C_2 = 0$, $w_2(L) = 0 arrow.r C_4 = 0$.
  + Übergangsbedingungen bei $x = a$ (kein Sprung, kein Knick):
    $w_1(a) = w_2(a)$, $w'_1(a) = w'_2(a)$. Das gibt
    $
      C_1 = F (a b (a + 2 b))/(6 L), quad C_3 = F (a b (b + 2 a))/(6 L)
    $

  *Merke:* Bei Einzellasten braucht jeder Bereich eine eigene Biegelinie. Die
  Übergangsbedingungen koppeln die Bereiche.
]

// ---------------------------------------------------------------------------
== Kap. 6: Kinetik

#bsp[Bsp. 6.1: Sprung aus der Hocke (Schwerpunktsatz)][
  *Aufgabe:* Eine Person springt aus der Hocke nach oben.

  - *Auf der Erde (Absprung):* $m a_S = F_B - m g$. Nur die Bodenkraft $F_B$ und das
    Gewicht wirken. Die Muskelkräfte sind innere Kräfte und erscheinen nicht.
  - *Flugphase:* Der Schwerpunkt folgt einer Parabel, egal wie sich Arme und Beine
    bewegen.
  - *Im Weltall:* $sum bold(F) = bold(0) arrow.r.double m bold(a)_S = bold(0)$. Der
    Schwerpunkt beschleunigt nicht.

  *Merke:* Innere Kräfte haben keinen Einfluss auf die Schwerpunktbewegung.
]

#bsp[Bsp. 6.2: Freie Masse auf reibungsfreier Unterlage][
  *Aufgabe:* Eine Masse $m$ erfährt die Kraft $F(t)$. Anfangsbedingungen
  $x(0) = 0$, $dot(x)(0) = 0$. Gesucht ist die Bewegung $x(t)$.

  *Lösungsweg (Anfangswertproblem):*
  + Impulssatz in $bold(e)_x$: $m dot.double(x) = F(t)$.
  + Zweimal integrieren:
    $m x(t) = integral (integral F(t) dif t) dif t + C_1 t + C_2$.
  + Die Anfangsbedingungen geben $C_1 = C_2 = 0$.
  + Impulssatz in $bold(e)_z$: $m dot.double(z) = G - A$ mit $dot.double(z) = 0$, also
    $A = G = m g$.
]

#bsp[Bsp. 6.3: Schnittprinzip in der Kinetik][
  *Aufgabe:* Zwei Massen $m_1$, $m_2$ sind über einen starren Stab verbunden. Auf
  $m_2$ wirkt $F(t) = a + b t$. Gesucht ist die Stabkraft $S(t)$.

  *Lösungsweg:*
  + Gesamtsystem (gemeinsames $x(t)$):
    $(m_1 + m_2) dot.double(x) = a + b t arrow.r.double
    dot.double(x) = (a + b t)\/(m_1 + m_2)$.
  + Freischneiden von Teil 1: $m_1 dot.double(x) = S$, also
    $ S(t) = m_1/(m_1 + m_2) (a + b t) $
  + Kontrolle an Teil 2: $m_2 dot.double(x) = F - S$ gibt dasselbe Ergebnis.

  *Merke:* Innere Kräfte werden erst durch Freischneiden sichtbar.
]

#bsp[Bsp. 6.4: Bremsweg (Impulssatz)][
  *Aufgabe:* Eine Masse mit $v_0$ wird nur durch Reibung ($mu$) gebremst. Gesucht ist der
  Bremsweg $L$.

  *Lösungsweg:*
  + Impulssatz: $m dot.double(x) = -mu m g arrow.r.double dot.double(x) = -mu g$.
  + Integrieren mit $dot(x)(0) = v_0$, $x(0) = 0$:
    $dot(x) = -mu g t + v_0$, $x = -mu g t^2\/2 + v_0 t$.
  + Stillstand bei $dot(x)(t_B) = 0 arrow.r t_B = v_0 \/ (mu g)$.
  + Einsetzen: $ L = x(t_B) = v_0^2/(2 mu g) $

  Vergleiche Bsp. 8.3: Der Arbeitssatz gibt dasselbe Ergebnis schneller.
]

#bsp[Bsp. 6.5: Kreisscheibe mit Antriebsmoment][
  *Aufgabe:* Eine Kreisscheibe ($R$, Dicke $t$, Dichte $rho$) wird aus der Ruhe durch ein
  konstantes Moment $M$ um die $z$-Achse gedreht. Gesucht ist $omega_z(t)$.

  *Lösungsweg:*
  + Trägheitsmoment mit Kreisringen $dif V = 2 pi r t dif r$:
    $
      Theta_(z z, S) = integral_V r^2 rho dif V = 2 pi rho t integral_0^R r^3 dif r
      = 2 pi rho t R^4/4 = (m R^2)/2
    $
  + Drallsatz um die feste Achse: $Theta_(z z, S) dot(omega)_z = M arrow.r.double
    dot(omega)_z = 2 M \/ (m R^2)$.
  + Integrieren mit $omega_z(0) = 0$: $ omega_z(t) = (2 M)/(m R^2) t $

  *Merke:* Analog zum Flächenträgheitsmoment $I_p = pi R^4 \/ 2$. Kontrolle der Einheit:
  $[omega] = "Nm s"\/("kg m"^2) = "s"^(-1)$.
]

#bsp[Bsp. 6.6: Schlanker Stab – Satz von STEINER][
  *Aufgabe:* Homogener Stab (Länge $L$, Masse $m$). Gesucht sind $Theta_(y y, S)$ und
  $Theta_(y y, a)$ (am Stabende).

  $
    Theta_(y y, S) = integral_(-L\/2)^(L\/2) rho A x^2 dif x = (m L^2)/12, quad
    Theta_(y y, a) = Theta_(y y, S) + m (L/2)^2 = (m L^2)/3
  $
]

#bsp[Bsp. 6.7: Zusammengesetztes Stabsystem][
  *Aufgabe:* Drei Stäbe: (1) horizontal $2 m$, $2 l$; (2) vertikal $m$, $l\/2$;
  (3) vertikal $m$, $l$. Gesucht ist $Theta_(y y, a)$ um das Lager $a$ am rechten Ende.

  *Idee:* Für jeden Stab $Theta_(S_i) = m_i L_i^2 \/ 12$ und STEINER mit dem Abstand
  $r_i$ des Schwerpunkts zu $a$. Dann summieren.

  - Stab 1: $r_1 = l$, $Theta_1 = 1/12 2 m (2 l)^2 + 2 m l^2 = 8/3 m l^2$.
  - Stab 2: $r_2^2 = l^2 + (l\/4)^2$, $Theta_2 = 1/12 m (l/2)^2 + m r_2^2 = 13/12 m l^2$.
  - Stab 3: $r_3^2 = (2 l)^2 + (l\/2)^2$, $Theta_3 = 1/12 m l^2 + m r_3^2 = 13/3 m l^2$.

  *Ergebnis:* $Theta_(y y, a) = 97/12 m l^2$ (eigene Rechnung, das Skriptum lässt das
  Ergebnis offen).
]

#bsp[Bsp. 6.8: Rollende Scheibe auf der schiefen Ebene][
  *Aufgabe:* Eine Scheibe ($m$, Radius $a$) rollt ohne Gleiten auf einer schiefen Ebene
  ($alpha$). Eine Feder $k$ hält sie. Gesucht sind die Bewegungsgleichung und die
  statische Ruhelage.

  *Lösungsweg:*
  + Kinematik (reines Rollen): $omega = dot(x)\/a$. $T$ ist die unbekannte Haftkraft
    ($T != mu N$).
  + Impulssatz in $bold(e)_x$: $m dot.double(x) = -T - k x + m g sin alpha$.
  + Drallsatz um $S$: $Theta_S dot(omega) = T a$ mit $Theta_S = m a^2\/2$, also
    $T = 1/2 m dot.double(x)$.
  + $T$ eliminieren:
    $ 3/2 m dot.double(x) + k x = m g sin alpha $
  + Statische Lösung ($dot.double(x) = 0$): $x_"stat" = m g sin alpha \/ k$. Mit
    $x = x_"stat" + xi(t)$ folgt $3/2 m dot.double(xi) + k xi = 0$.

  *Merke:* Die Rotation wirkt wie eine zusätzliche Masse ($m + Theta_S\/a^2 = 3/2 m$).
]

#bsp[Bsp. 6.9: Rollende Scheibe mit Antriebsmoment][
  *Aufgabe:* Eine Scheibe ($m$, $a$) rollt auf dem Boden. Ein Moment $M(t)$ treibt sie
  an. Eine Feder $k$ greift oben an (Weg $2 x$). Gesucht ist die Bewegungsgleichung
  mit dem Drallsatz.

  *Lösungsweg:*
  + Kinematik: $phi = x\/a$, $omega = dot(x)\/a$. Der obere Punkt bewegt sich um $2 x$.
  + Drallsatz um den Momentanpol $A$ (die unbekannten $T$ und $N$ fallen weg):
    $ Theta_A dot(omega) = M - k dot 2 x dot 2 a $
  + STEINER: $Theta_A = 1/2 m a^2 + m a^2 = 3/2 m a^2$. Einsetzen gibt
    $ 3/2 m dot.double(x) + 4 k x = M(t)/a $

  *Merke:* Der Drallsatz um den Kontaktpunkt spart den Impulssatz.
]

// ---------------------------------------------------------------------------
== Kap. 7: Strömende Flüssigkeiten

#bsp[Bsp. 7.1: Strömung in einem Fluss (EULER vs. LAGRANGE)][
  - *EULER:* Ein Messgerät an einem festen Ort misst $v(t)$ (z.~B. 1.2, 1.8, 2.1 m/s
    über den Tag). Man sieht die zeitliche Entwicklung an einem Punkt.
  - *LAGRANGE:* Ein schwimmender Korken zeigt die Bahnlinie eines Teilchens.
]

#bsp[Bsp. 7.2: Instationäre Strömung – Bahn- und Stromlinien][
  *Aufgabe:* $bold(v)(t) = (-c sin a t, c cos a t)^T$ (ortsunabhängig). Gesucht sind die
  Bahnlinie und die Stromlinien zu $t = 0$ und $t = pi\/(2 a)$.

  - *Stromlinien* (Momentaufnahme): $t = 0$: $bold(v) = (0, c)^T$, vertikale Geraden.
    $t = pi\/(2 a)$: $bold(v) = (-c, 0)^T$, horizontale Geraden.
  - *Bahnlinie* (Integration über die Zeit):
    $
      bold(r)(t) = integral bold(v) dif t = vec(c/a cos a t + D_1, c/a sin a t + D_2)
    $
    Das ist ein Kreis mit Radius $c\/a$.

  *Merke:* Bei instationärer Strömung sind Bahnlinien und Stromlinien verschieden.
]

#bsp[Bsp. 7.3: Stromröhre (Kontinuität)][
  *Aufgabe:* Stationäre, inkompressible Strömung durch eine Stromröhre mit $A_1$, $A_2$.
  Gesucht ist das Verhältnis der mittleren Geschwindigkeiten.

  $
    -rho v_(1 m) A_1 + rho v_(2 m) A_2 = 0
    quad arrow.r.double quad v_(1 m)/v_(2 m) = A_2/A_1
  $
]

#bsp[Bsp. 7.4: Durchflossener Rohrabschnitt (Impulssatz)][
  *Aufgabe:* Stationärer Durchfluss mit $v_1$, $v_2$, $p_1$, $p_2$, $A_1$, $A_2$. Gesucht
  ist die Kraft $F_W$ der Flüssigkeit auf die Rohrwand.

  *Lösungsweg:* Impulssatz am Kontrollvolumen $integral.cont mu bold(v) dif S = bold(F)_R$ mit
  $mu_1 = -rho v_1$, $mu_2 = +rho v_2$. In $bold(e)_x$:
  $
    -rho v_1^2 A_1 + rho v_2^2 A_2 = p_1 A_1 - p_2 A_2 - F_(W, x)
    quad arrow.r.double quad
    F_(W, x) = (p_1 + rho v_1^2) A_1 - (p_2 + rho v_2^2) A_2
  $

  *Merke:* Man braucht die Spannungsverteilung an der Wand nicht. Der Impulsfluss wirkt
  wie ein zusätzlicher Druck $rho v^2$.
]

#bsp[Bsp. 7.5: Schließender Schieber (instationär)][
  *Aufgabe:* Ein Schieber schließt linear: $v_2(t) = v_0 (1 - t\/t_s)$. Gesucht ist die
  Druckänderung.

  *Lösungsweg:*
  + Kontinuität: $v(x) = v_2 A_2 \/ A(x)$.
  + Instationärer Anteil:
    $
      integral_V partial/(partial t) (rho bold(v)) dif V
      = rho integral_0^L partial/(partial t) [(v_2 A_2)/A(x)] A(x) dif x
      = rho A_2 L (partial v_2)/(partial t) = -rho A_2 L v_0/t_s
    $
  + Impulssatz in $bold(e)_x$:
    $
      -v_0/t_s rho A_2 L - rho v_1^2 A_1 + rho v_2^2 A_2 = p_1 A_1 - p_2 A_2 - F_(W, x)
    $

  *Merke:* Der Zusatzterm wächst mit $1\/t_s$. Schnelles Schließen gibt Druckstöße.
  Schnelles Öffnen kann Unterdruck und Kavitation erzeugen.
]

#bsp[Bsp. 7.6: 90°-Rohrkrümmer (Impuls- und Drallsatz)][
  *Aufgabe:* Stationärer Durchfluss, Eintritt in $bold(e)_x$, Austritt in $bold(e)_y$ im
  Abstand $(a, a)$ vom Bezugspunkt $0$. Gesucht sind $bold(F)_W$ und $M_W$.

  *Impulssatz:*
  $
    F_(W, x) = (p_1 + rho v_1^2) A_1, quad F_(W, y) = -(p_2 + rho v_2^2) A_2
  $

  *Drallsatz um $0$:* Nur der Austritt hat einen Hebelarm $a$. Der Eintritt geht durch $0$:
  $
    rho v_2^2 A_2 a = -p_2 A_2 a - M_W
    quad arrow.r.double quad M_W = -(p_2 + rho v_2^2) A_2 a
  $
]

#bsp[Bsp. 7.7: Umströmter Brückenpfeiler][
  *Aufgabe:* Zuströmung $v_infinity$, hinter dem Pfeiler die gemessene Nachlaufdelle
  $v_2(y)$. Gesucht ist die Widerstandskraft $F_W$.

  *Lösungsweg:* Impulssatz und Kontinuität am Kontrollvolumen. Die Kontinuität bestimmt
  den seitlichen Massenstrom. Es folgt
  $ F_W = integral_(A_2) rho v_2(y) (v_infinity - v_2(y)) dif A $

  *Merke:* Das Integral wird meist numerisch aus Messdaten ausgewertet.
]

#bsp[Bsp. 7.8: Staudruck][
  *Aufgabe:* Ein Hindernis steht in der Strömung $v$. Im Staupunkt 2 ist $v_2 = 0$.

  Bernoulli $1 -> 2$ ($z_1 = z_2$):
  $
    v^2/2 + p_1/rho = p_2/rho quad arrow.r.double quad Delta p = p_2 - p_1 = rho/2 v^2
  $

  *Merke:* Die ganze kinetische Energie wird zu Druckenergie (Staudruck).
]

#bsp[Bsp. 7.9: Stationärer Ausfluss aus einem Hochbehälter][
  *Aufgabe:* Behälter (Spiegel $H = "konst."$) mit Fallrohr der Länge $L$. Gesucht sind
  $v_2$ und der Druck $p_1$ am Rohreinlauf.

  *Lösungsweg:*
  + Bernoulli $0 -> 2$ mit $v_0 approx 0$, $p_0 = p_2$, $z_0 = L + H$, $z_2 = 0$:
    $ v_2 = sqrt(2 g (L + H)) quad "(TORRICELLI)" $
  + Kontinuität: $A_1 = A_2 arrow.r v_1 = v_2$.
  + Bernoulli $1 -> 2$ mit $z_1 = L$: $ p_1 = p_0 - rho g L $

  *Merke:* $p_1 < p_0$: Im Rohr herrscht Unterdruck.
]

#bsp[Bsp. 7.10: Instationärer Ausfluss aus einem Hochbehälter][
  *Aufgabe:* Der Spiegel $H(t)$ sinkt. Gesucht ist die Bewegungsgleichung für $H(t)$.

  *Lösungsweg:*
  + Instationäre Bernoulli-Gleichung $0 -> 2$:
    $
      integral_0^2 (partial v)/(partial t) dif s + v_2^2/2 + p_2/rho + g z_2 = v_0^2/2 + p_0/rho + g z_0
    $
  + Das Integral in Behälter ($0 -> 1$) und Rohr ($1 -> 2$) teilen. Mit
    $v_0 = -dot(H)$ und $v_2 = -(A_0\/A_2) dot(H)$.
  + Einsetzen gibt eine nichtlineare Differentialgleichung:
    $
      -dot.double(H) H - A_0/A_2 dot.double(H) L + 1/2 (A_0/A_2)^2 dot(H)^2 - g L
      = dot(H)^2/2 + g H
    $

  *Merke:* $H(t)$ löst man numerisch.
]

#bsp[Bsp. 7.11: Rohrkrümmer mit Höhenunterschied][
  *Aufgabe:* Gegeben sind $v_1$, $p_1$, $rho$, $A_1$, $A_2$, $H$. Gesucht sind $v_2$,
  $p_2$ und $bold(F)_W$.

  *Lösungsweg:*
  + Kontinuität: $v_2 = v_1 A_1 \/ A_2$.
  + Bernoulli $1 -> 2$: $p_2/rho = 1/2 (v_1^2 - v_2^2) + p_1/rho - g H$.
  + Impulssatz mit den äußeren Normalen $bold(n)_1$, $bold(n)_2$:
    $
      A_1 (rho v_1^2 + p_1) bold(n)_1 + A_2 (rho v_2^2 + p_2) bold(n)_2 = -bold(F)_W
    $

  *Merke:* $v_2 > v_1$ heißt $p_2 < p_1$ (Venturi-Effekt). Die Umlenkung erzeugt eine
  Reaktionskraft, die man bei der Rohrlagerung berücksichtigen muss.
]

#bsp[Bsp. 7.12: Freistrahl auf ebene Platte][
  *Aufgabe:* Ein Strahl (Breite $b$, Höhe $h_1$) trifft horizontal auf eine Platte und
  teilt sich symmetrisch. Gesucht ist die Kraft $F_W$ auf die Platte.

  *Lösungsweg:*
  + Überall wirkt $p_0$. Bernoulli gibt $v_1 = v_2 = v_3 = v$.
  + Impulssatz: Wegen der Symmetrie heben sich die Austrittsterme in $bold(e)_x$ auf
    ($bold(v)_2 = -bold(v)_3$).
  + Es bleibt $A_1 (-rho v_1 v_1 bold(e)_x) = -bold(F)_W$:
    $ F_(W, x) = rho v^2 b h_1 = rho A v^2 $
]

#bsp[Bsp. 7.13: Pumpe und Turbine (erweiterte Bernoulli-Gleichung)][
  *Pumpe:* Die Leistung $L > 0$ hebt das Fluid um $H$ ($A_1 = A_2$, also $v_1 = v_2$):
  $
    v_1^2/2 + p_1/rho + 0 + L/dot(m) = v_2^2/2 + p_2/rho + g H, quad dot(m) = rho A v
  $

  *Turbine am Hochbehälter* ($L < 0$, gesucht $v_2$, $v_3$): Bernoulli $0 -> 2$ mit
  $v_0 approx 0$, $p_0 = p_2$ und $dot(m) = rho A_2 v_2$:
  $
    g H - L/(rho A_2 v_2) = v_2^2/2
    quad arrow.r.double quad
    v_2^3 - 2 g H v_2 + (2 L)/(rho A_2) = 0
  $
  Das ist eine kubische Gleichung für $v_2$. Danach folgt aus der Kontinuität
  $v_3 = v_2 A_2 \/ A_1$.

  *Merke:* Ohne Höhen- und Geschwindigkeitsänderung gilt $Delta p = L \/ (A v)$. Eine
  Leistungsabfuhr ist immer mit einem Druckverlust verbunden.
]

// ---------------------------------------------------------------------------
== Kap. 8: Arbeits- und Energiesatz

#bsp[Bsp. 8.1: Kinetische Energie einer Punktmasse][
  $T = 1/2 m v^2 = 1/2 m (v_x^2 + v_y^2)$. $T$ ist immer positiv, $v$ ist die
  Absolutgeschwindigkeit. Arbeitssatz: $A_(1 2) = T_2 - T_1$.
]

#bsp[Bsp. 8.2: Pendel (Energiesatz)][
  *Aufgabe:* Ein Pendel ($m$, $L$) startet waagrecht aus der Ruhe. Gesucht ist $v$ im
  tiefsten Punkt.

  $
    T_1 + Pi_1 = T_2 + Pi_2: quad 0 + m g L = 1/2 m v^2 + 0
    quad arrow.r.double quad v = sqrt(2 g L)
  $
]

#bsp[Bsp. 8.3: Bremsweg (Arbeitssatz)][
  *Aufgabe:* Wie Bsp. 6.4: Eine Masse mit $v_0$ wird durch Reibung $mu$ gebremst.

  $
    A_(1 2) = T_2 - T_1: quad -mu m g s = 0 - 1/2 m v_0^2
    quad arrow.r.double quad s = v_0^2/(2 mu g)
  $

  *Merke:* Der Arbeitssatz braucht keine Zeitintegration.
]

#bsp[Bsp. 8.4: Rollender Zylinder mit Feder (Arbeitssatz)][
  *Aufgabe:* Ein Zylinder ($m$, $Theta_S = m a^2\/2$) rollt ohne Gleiten. Die Kraft
  $F(t)$ zieht im Mittelpunkt. Eine Feder $k$ oben dehnt sich um $2 x$. Gesucht ist die
  Bewegungsgleichung.

  *Lösungsweg:*
  + Kinematik: $omega = dot(x)\/a$. Der obere Punkt hat $2 dot(x)$.
  + Kinetische Energie: $T = 1/2 m dot(x)^2 + 1/2 (m a^2)/2 (dot(x)/a)^2 = 3/4 m dot(x)^2$.
  + Leistung: $L = F dot(x) - k (2 x)(2 dot(x))$.
  + Arbeitssatz $dif T \/ dif t = L$: $3/2 m dot(x) dot.double(x) = F dot(x) - 4 k x dot(x)$.
  + Durch $dot(x)$ kürzen: $ 3/2 m dot.double(x) + 4 k x = F(t) $
]

#bsp[Bsp. 8.5: Punktpendel / Schaukel][
  *Aufgabe:* Masse $m$ am masselosen Stab $L$. Gesucht ist die Schwingungsgleichung.

  *Lösungsweg mit dem Energiesatz:*
  + $Pi = m g L (1 - cos phi)$, $T = 1/2 m L^2 dot(phi)^2$.
  + $dif (T + Pi) \/ dif t = 0$: $m L^2 dot(phi) dot.double(phi) + m g L sin phi dot(phi) = 0$.
  + Durch $m L^2 dot(phi)$ kürzen: $ dot.double(phi) + g/L sin phi = 0 $

  *Kontrolle mit dem Drallsatz:* $Theta_A dot.double(phi) = -m g L sin phi$ mit
  $Theta_A = m L^2$. Das Ergebnis ist gleich.

  *Linearisierung* ($sin phi approx phi$): $dot.double(phi) + g/L phi = 0$ mit
  $omega_0 = sqrt(g\/L)$.
]

#bsp[Bsp. 8.6: Flüssigkeitsschwingung im U-Rohr][
  *Aufgabe:* Ein U-Rohr (konstanter Querschnitt, Fadenlänge $L$) enthält reibungsfreie,
  inkompressible Flüssigkeit. Die Spiegel sind um $s$ ausgelenkt.

  *Lösungsweg:*
  + Kontinuität: Überall gilt $v = dot(s)$.
  + Instationäre Bernoulli-Gleichung $1 -> 2$ mit $z_1 = -s$, $z_2 = s$,
    $p_1 = p_2 = p_0$ und $integral_1^2 dot.double(s) dif s = dot.double(s) L$:
    $
      dot.double(s) L + 2 g s = 0 quad arrow.r.double quad dot.double(s) + (2 g)/L s = 0
    $

  *Ergebnis:* Harmonische Schwingung mit $omega_0 = sqrt(2 g \/ L)$. Die Frequenz hängt
  nur von der Fadenlänge ab.
]
