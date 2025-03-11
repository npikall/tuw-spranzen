#import "@preview/rubber-article:0.3.1":*

#show: article.with()

// #maketitle(
//   title: "Wassergütewirtschaft - Formelsammlung",
//   authors:("npikall",),
//   date: datetime.today().display("[day].[month].[year]"),
// )
#align(center)[
#heading(level: 1, numbering: none,)[Wassergütewirtschaft - Formelsammlung]]


= Abwasserreinigung
== Schmutzfracht
<schmutzfracht>
$ E W & = E Z + E G W\
upright("Fracht") & = upright("Menge") dot.op upright("Konzentration") $

Schema Kläranlage!!!

== Zulauf Abwasserreinigungsanlage
<zulauf-abwasserreinigungsanlage>

#figure(
  table(
    columns: 2,
    align: (center,center,),
    table.hline(),
    table.header([Parameter], [Rohabwasser $[frac(g, E W dot.op d)]$],),
    table.hline(),
    [BSB$""_5$], [60],
    [CSB], [120],
    [TSS], [70],
    [TKN], [11],
    [P], [1.8],
    [Q$""_d$], [200 $[frac(l, E W dot.op d)]$],
    table.hline(),
  )
  , caption: [Einwohnerspezifische Schmutzfrachten
  ]
)<tab:Schmutzfrachten>

$
"Einwohnerwerte" #h(2em) & E W = Q_M / Q_(M , s p e z)\
"BSB-Fracht" #h(2em) & B_(d , B S B) = B_(B S B , s p e z) dot.op E W\
"durchschnittl. Tageszufluss" #h(2em) & Q_d = frac(24 dot.op Q_(1 h , m a x), f_d)\
"BSB Konzentration" #h(2em) & c_(B S B) = B_(d , B S B) / Q_d
$

== Langsandfang
<langsandfang>
Sedimentation mineralischer Feststoffe durch Reduktion der
Fließgeschwindigkeit.
$
"Absetzbedingung" #h(2em) & t_(s f) = t_s = L_(S F) / v_(S F) = T_(S F) / v_S arrow.r t_(S F) > t_S\
"erf. Sandfangoberfläche" #h(2em) & A_(O , e r f) = Q_M / v_S\
"erf. Sandfangquerschnittfläche" #h(2em) & A_(q , e r f) = Q_M / v_(S F)\
"Sicherheitsfaktor" #h(2em) & d_S = d_p / 2
$

== Vorklärbecken
<vorklärbecken>
Abscheidung partikülärer organischer Stoffe aus dem Rohabwasser.

$ upright("erf. Beckenvolumen") #h(2em) & V_(V K B , e r f) = Q_M dot.op t_A\
upright("gesamt Volumen") #h(2em) & V_(V K B) = V dot.op n\
upright("Verweilzeit") #h(2em) & t_A = V_(V K B) / Q_M\
 $

== Belebungsbecken
<belebungsbecken>
Kohlenstoffabbau, Nitrifikation, Denitrifikation und Phosphorentfernung.
\
Hochlastanlage $> 0.2 k g C S B \/ (k g T S dot.op d) >$
Schwachlastanlage

$ upright("Bemessungsschlammalter") #h(2em) & t_(T S , B E M) = P F dot.op 3.4 dot.op 1.103^(15 - T) dot.op frac(1, 1 - frac(V_D, V_B B))\
upright("Betriebsschlammalter") #h(2em) & t_(T S) = frac(T S_(B B) dot.op V_(B B), T S_(U S) dot.op Q_(U S))\
upright("Temperaturfaktor") #h(2em) & F_T = 1.072^((T - 15))\
upright("Überschussschlamm Kohlenstoffabbau") #h(2em) & \
U S_(d , c) = B_(d_B S B) dot.op & [0.75 + 0.6 dot.op x_(T S , Z B) / c_(B S B , Z B) - frac(0.102 dot.op t_(T S , B) dot.op F_T, 1 + 0.17 dot.op t_(T S , B) dot.op F_T)]\
upright("Überschussschlamm Phosphorelimination") #h(2em) & U S_(d , P) = Q_d dot.op frac(6.8 dot.op x_(P , F a l l , F e) + 5.3 dot.op x_(P , F a l l , A l), 1000)\
upright("Überschussschlamm") #h(2em) & U S_d = U S_(d , C) + U S_(d , P)\
upright("Raumbelastung") #h(2em) & B_R = B_(d , B S B) / V_(B B)\
upright("Schlammbelastung") #h(2em) & B_(T S) = frac(B_(d , B S B), V_(B B) dot.op T S_(B B)) = B_R / V_(B B)\
 $

== Nachklärbecken
<nachklärbecken>
Trennen, Speichern und Eindicken von Schlamm.

$ upright("Schlammindex") #h(2em) & I S V = frac(S V_30, T S_(B B))\
upright("Trennbedingung") #h(2em) & q_A = Q_M / A_(N K B) lt.eq q_(A , m a x)\
upright("") #h(2em) & A_(N K B , e r f 1) = Q_M / q_A\
upright("Eindickbedingung") #h(2em) & q_(S V) = frac(Q_M dot.op S V, A_(N K B)) lt.eq q_(S V , m a x)\
upright("") #h(2em) & A_(N K B , e r f 2) = frac(Q_M dot.op S V, q_(S V))\
upright("max Schlammvolumen") #h(2em) & S V_(m a x) = frac(q_(S V , m a x) dot.op A_(N K B), Q_M)\
upright("Rücklaufverhältnis") #h(2em) & R V = Q_(R S) / Q_(Z U)\
upright("TS im Rücklaufschlamm") #h(2em) & T S_(R S) = T S_(B B) dot.op frac(1 + R V, R V)\
upright("Beckenvolumen (Rund)") #h(2em) & A = n dot.op frac(d^2 dot.op pi, 4)\
 $


#figure(
  align(center)[#table(
    columns: 3,
    align: (center,center,center,),
    table.hline(),
    table.header([], [$q_(A , m a x) [m \/ h]$], [$q_(S V , m a x) [l \/ (m^2 dot.op h)]$],),
    table.hline(),
    [horizontal durchströmt], [1.6], [500],
    [vertikal durchströmt], [2.0], [650],
    table.hline(),
  )]
  , caption: [Bemessungswerte]
  , kind: table
  )<tab:Bemessungswerte>
