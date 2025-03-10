#import "../common.typ": *
#definition-counter.update(0)

= Differentialrechnung in zwei oder mehr Variablen
<differentialrechnung-in-zwei-oder-mehr-variablen>
== Partielle Ableitung
<partielle-ableitung>
#definition(title:"Partielle Ableitung")[
Eine Funktion ist partiell differenzierbar, falls die Ableitung an der
Stelle nach einer Variablen differenzierbar ist. Sie heißt total oder
absolut differenzierbar, falls beide partiellen Ableitungen vorhanden
sind. \
Kettenregel: $ g (t) & = f (x (t) , y (t))\
arrow.r.double g prime (t) & = frac(d, d t) f (x (t) , y (t))\
 & = f_x (x (t) , y (t)) dot.op x prime (t) + f_y (x (t) , y (t)) dot.op y prime (t)\
g prime (t) & = f_x (x , y) dot.op x prime + f_y (x , y) dot.op y prime $
Schwarzscher Vertauschbarkeitssatz: $ f_(x y) = f_(y x) $

]
#definition(title:"Richtungsableitung")[
Gerade durch Punkt $A = (a , b)$ mit
$A + t e quad t in RR, e = (cos(phi), sin(phi))^T$
$ frac(d, d t) f (A + t e) \|_(t = 0) & = f_x (a , b) dot.op cos phi + f_y (a , b) dot.op sin phi = frac(partial f, partial e)\
upright("grad") f (a , b) & = vec(f_x (a , b), f_y (a , b))\
frac(partial f, partial e) A & = upright("grad") f (A) dot.op e $

]
== Taylorformel
<taylorformel>
#definition(title:"Taylorformel")[
Man schränkt eine Funktion $f: D arrow RR$ auf eine Strecke
$[A , C] subset D$ ein ($A = (a , b)^T , C = (c , d)^T$). Man erhält
eine Funktion mit der Gestalt:
$ g (t) & = f (A + t dot.op (C - A)) , quad t in [0 , 1]\
arrow.r.double g prime (t) & = f_x (a + t (C - A)) dot.op (C - A) + f_y (a + t (C - A)) dot.op (d - b) $

]
#definition(title:"Lokale Gestalt eines Flächenstücks")[
Tangentialebene an $A in D$ an der Stelle ($A , f (A)$):
$ z = f (A) + f_x (A) dot.op \( & x - a \) + f_y (A) dot.op (y - b)\
upright("Normalvektor: ") & N = vec(f_x (A), f_y (A), - 1 ?) $

]
#definition(title:"Schmiegeparaboloid der Fläche")[
Wenn $f:D arrow RR$ stetige partielle Ableitungen 2. Ordnung
hat, dann gibt es Schmiegeparaboloide. $ dots.h.c $
- q ist positiv oder negativ definit
  $[f_(x x) (A) dot.op f_(y y) (A) - f_(x y) (A)^2 > 0] arrow.r$
  elliptisch
- q ist indefinit
  $[f_(x x) (A) dot.op f_(y y) (A) - f_(x y) (A)^2 < 0] arrow.r$
  hyperbolisch
- q ist positiv oder negativ semidefinit
  $[f_(x x) (A) dot.op f_(y y) (A) - f_(x y) (A)^2 = 0] arrow.r$
  parabolisch
]
== Maxima und Minima
<maxima-und-minima>
#definition(title:"Innere Extremstellen")[
Es sei $f:D arrow RR$ differenzierbar und a sei Stelle eines
lokalen Extremum, wenn gilt:
$ f_x (a) = 0 quad upright("und") & quad f_y (a) = 0\
upright("grad") f (a) & = 0 $ Leibnizsches Kriterium:
- $f_(x x) (a) dot.op f_(y y) (a) - f_(x y) (a)^2 > 0$ und
  $f_(x x) (a) > 0 arrow.r$ lokales Minimum
- $f_(x x) (a) dot.op f_(y y) (a) - f_(x y) (a)^2 > 0$ und
  $f_(x x) (a) < 0 arrow.r$ lokales Maximum
- $f_(x x) (a) dot.op f_(y y) (a) - f_(x y) (a)^2 < 0 arrow.r$ keine
  Extremstelle (Sattelpunkt)
- $f_(x x) (a) dot.op f_(y y) (a) - f_(x y) (a)^2 = 0 arrow.r$ alle
  Fälle möglich

]
#definition(title:"Extrema unter Nebenbedingungen")[
$dots.h.c$

]
// == Differenzialrechnung in mehreren Variablen
// <differenzialrechnung-in-mehreren-variablen>
// Wie mit 2 Variablen
