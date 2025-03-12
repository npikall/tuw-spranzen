#import "../common.typ":*
#definition-counter.update(0)

= Altfragen von 12.10.2023
<altfragen-von-12.10.2023>
#frage[
Definieren Sie einen Vektorraum (Rechenregeln).

]
#frage[
Flächen- und Oberflächenintegrale einer Kugel in Polarkoordinaten

]
#frage[
Vektoren im $RR^2$ und herleiten der Paralellogramformel.

]
#frage[
Differentialgleichung

]
#frage[
Kreuzerlfragen zu Statistik

]
#pagebreak()
= Altfragen 12.01.2024
<altfragen-12.01.2024>
#fragen-counter.update(0)
#frage[
Es sei die Matrix $A = mat(delim: "(", 0, 4, 0; 1, 0, 0; 0, 0, - 1)$.
Finden sie alle Eigenwerte und die dazugehörigen Eigenvektoren.
]

$lambda_1 = - 1 ; quad lambda_2 = 2 ; quad lambda_3 = - 2$ \
$ E V (- 2) & = vec(- 2, 1, 0)\
E V (2) & = vec(2, 1, 0)\
E V (- 1) & = vec(0, 0, 1) $

#frage[
Es sei $y prime.double + 9 y = cos 3 x$ gegeben. Finden Sie die
allgemeine Lösung. Weiters finden sie die Lösung mit den Anfangswerten
$y (0) = 0 ; quad y prime (0) = 3$

]
Allgemeine Lösung: $ y (x) = C_2 cos (3 x) + (C_1 + x / 6) sin (3 x) $
Mit den Anfangswerten: $y (0) = 0 quad y prime (0) = 3$:
$ y (x) = (x / 6 + 1) sin (3 x) $

#frage[
Es sind folgende Integrale (Gauß’sches Fehlerintegral) gegeben:
$ I (a) = limits(integral.double)_(- a lt.eq x lt.eq a\
- a lt.eq y lt.eq a) e^(- (x^2 + y^2)) thin d x thin d y , quad J (a) = limits(integral)_(- a)^a e^(- x^2) thin d x , quad K (a) = limits(integral.double)_(x^2 + y^2 lt.eq a^2) e^(- (x^2 + y^2)) thin d x thin d y $
Zeigen Sie, dass:
$J (a)^2 = I (a) ; quad quad K (a) lt.eq I (a) lt.eq K (sqrt(2) a) ; quad quad integral_(- oo)^oo e^(- x^2) thin d x = lim_(a arrow.r oo) J (a)$

]
Es gilt der Satz: $ limits(integral.double)_(a lt.eq x lt.eq b\
c lt.eq y lt.eq d) g (x) h (y) thin d x thin d y = integral_a^b g (x) thin d x integral_c^d h (y) thin d y $
Deshalb wird aus ...


#frage[
$Z = f (x , y)$
...???
]
