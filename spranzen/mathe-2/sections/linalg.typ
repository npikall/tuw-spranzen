#import "../common.typ": *

= Lineare Algebra <lineare-algebra>
== Vektoren <vektoren>
#definition(title:"Vektoroperationen")[
Vektoraddition:
$
arrow(x) + arrow(y) = vec(x_1, dots.v, x_n) + vec(y_1, dots.v, y_n) = vec(x_1 + y_1, dots.v, x_n + y_n)
$

Skalarmultiplikation:
$
r dot.op arrow(x) = vec(r dot.op x_1, dots.v, r dot.op x_n)
$
Skalarprodukt (inneres Produkt):
$
arrow(x) dot.op arrow(y) = vec(x_1, dots.v, x_n) dot.op vec(y_1, dots.v, y_n) = x_1 dot.op y_1 + dots.h + x_n dot.op y_n 
$

Vektorprodukt (Kreuzprodukt) im $RR^3$:
$
arrow(x) times arrow(y) = vec(x_1, x_2, x_3) times vec(y_1, y_2, y_3) = vec(x_2 dot.op y_3 - x_3 dot.op y_2, x_3 dot.op y_1 - x_1 dot.op y_3, x_1 dot.op y_2 - x_2 dot.op y_1)
$
]
#definition(title:"Vektorraum")[
Reeler Vektorraum ist jene Menge $V$, deren Elemente Vektoren
heißen.
Es gilt:
$
u,v in V arrow.long u + v = arrow(x) & #h(.5cm) ("Summe aus Vektoren")\
a in V  arrow.long a dot v & #h(.5cm) ("Skalares Produkt")
$

Dabei sind folgende Grundeigenschaften erfüllt:
Kommutativ, Assoziativ...
]
#definition(title:"Lineare Abhängigkeit")[
Es seien $v_1, dots, v_k in V$ und
$a_1, dots, a_k in R$. $v_i$ sind linear abhängig, wenn:
$
        a_1 v_1 + dots + a_k v_k = 0 #h(.5cm) ("Linearkombination")
    
$ Sprich wenn es eine Summe aus Vektoren gibt die den
Nullvektor bilden. Allerdings sind Vektoren linear unabhängig wenn nur
folgende Linearkombination den Nullvektor ergibt: $
        0 v_1 + dots + 0 v_k = arrow(0) & #h(0.5cm) ("linear unabhängig")
$
]

#definition(title:"Lineare Hülle und erzeugendensystem")[
Die lineare Hülle ist jener Raum der durch Linearkombination aus
Vektoren aufgespannt wird. Es seien M eine Teilmenge von $V$ und die
lineare Hülle von M ein Unterraum. Wenn gilt
$ "LH"(M) = V $ dann ist M
ein Erzeugendensystem.

]
#definition(title:"Dimension")[
Die Dimension ist die maximale Anzahl (n) an linear unabhängigen
Vektoren. Somit können n Vektoren linear unabhängig sein und n+1
Vektoren sind zwangsweise linear abhängig.
]
#definition(title:"Basis")[
Jedes System von n linear unabhängigen Vektoren bildet eine Basis von
$V$. Es seien 
$v_1, dots, v_n in RR$ und $b_1 , dots , b_n in B$
$
        arrow(v) = v_1 dot b_1 + dots + v_n dot b_n & #h(0.5cm) ("linear Kombination aus Basisvektoren")
    
$
#strong[Kriterium für Basen:] \
Die Vektoren $arrow(v_1), dots, arrow(v_n
) in RR^n $ sind
Basen, wenn gilt:
$
det (arrow(v_1) , dots.h , arrow(v_n)) != 0 
$
Sprich wenn das aufgespannte Volumen der Vektoren nicht 0 ist.
]
#definition(title:"Euklidischer Vektorraum")[
Wenn Vektoren nicht nur addiert und mit einem Skalar multipliziert
werden können, sondern es das \"innere Produkt\" gibt, dann liegt ein
euklidischer VR vor. 
$
"(i) Positiv Definit" & #h(0.5cm) arrow(u) dot arrow(v) = 0\
"(ii) Kommutivität"& #h(0.5cm) arrow(u) dot arrow(v) = arrow(v) dot arrow(u)\
"(iii) Distributivität"& #h(0.5cm) arrow(u) dot arrow(v) + arrow(w)) = arrow(u) dot arrow(v) + arrow(u) dot arrow(w) \
"(iv)"& #h(0.5cm) arrow(a) dot arrow(u)) dot arrow(v)  = arrow(a) dot arrow(u) dot arrow(v)
$
]
#definition(title:"Euklidische Norm/Länge")[
$  & lr(||) arrow(v) lr(||) = sqrt(arrow(v) dot.op arrow(v)) gt.eq 0 quad arrow.r quad arrow(v) dot.op arrow(v) = vec(v_1, v_2) dot.op vec(v_1, v_2) = v_1^2 + v_2^2\
 & lr(||) arrow(v) lr(||)^2 = v_1^2 + v_2^2\
 & lr(||) arrow(v) lr(||) = sqrt(v_1^2 + v_2^2) $
]
#definition(title:"Wichtige Ungleichungen")[
Cauchy - Schwarz'sche Ungleichung:
$ lr(|arrow(u) dot.op arrow(v)|) lt.eq lr(||) arrow(u) lr(||) dot.op lr(||) arrow(v) lr(||) $
Dreiecksungleichung:
$ lr(||) arrow(u) + arrow(v) lr(||) lt.eq lr(||) arrow(u) lr(||) + lr(||) arrow(v) lr(||) $
#figure(
        cetz.canvas({
                import cetz.draw: line, content
                let mark-style = (end:">", fill:black)
                let line-style = 0.7pt

                line((0,0), (2,0), mark:mark-style, stroke:line-style)
                line((0,0), (3,1), mark:mark-style, stroke:line-style)
                line((2,0), (3,1), mark:mark-style, stroke:line-style)

                content((1,-0.2), $arrow(u)$)
                content((2.8,0.4), $arrow(v)$)
                content((1.5,0.8), $arrow(u) + arrow(v)$, angle: 18deg)
        })
)
]
#definition(title:"Orthogonal, Winkel")[
Es seien zwei Vektoren $u,v in V$, dann sind diese orthogonal, wenn: 
$
arrow(u) dot.op arrow(v) = 0
$ 
Wenn nicht 0 dann ist der Winkel
zwischen den Vektoren gegeben durch:
$ cos phi = (u dot.op v) / (norm(u) dot norm(v)) $

]
#definition(title:"Orthonormalbasis")[
Es sei $arrow(x_1) , dots , arrow(x)_n$ Basis von $V$ und es ist
$arrow(b)_1 , dots , arrow(b)_n$ ONB von $V$ gesucht. Dabei soll
die lineare Hülle der Basis und der ONB gleich sein. \
Gram - Schmidt Verfahren:
$
        "(i)" #h(.5cm) &arrow(b)_1 =1/(||arrow(x)_1||) dot arrow(x)_1 quad arrow.long quad ||arrow(b)_1|| = 1\
        "(ii)" #h(.5cm) &arrow(b)_2\' = arrow(x)_2 - (arrow(x)_2 dot arrow(b)_1 ) dot arrow(b)_1 quad arrow.long quad arrow(b)_2 = (arrow(b)_2\')/(||arrow(b)_2\'||)\
        "(iii)" #h(.5cm) &arrow(b)_3\' =arrow(x)_3 - (arrow(x)_3 dot arrow(b)_1 ) dot arrow(b)_1 -arrow(x)_3 - (arrow(x)_3 dot arrow(b)_2 ) dot arrow(b)_2\
        &arrow(b)_3 = (arrow(b)_3\')/(||arrow(b)_3\'||)
$

]
== Matrizen
<matrizen>
#definition(title:"Basis")[
Rechteckschema mit reelen Zahlen, mit m Zeilen und n Spalten.
$ mat(delim: "(", a_11, a_12, dots.h.c, a_(1 n); a_21, a_22, dots.h.c, a_(2 n); dots.v, dots.v, dots.down, dots.v; a_(m 1), a_(m 2), dots.h.c, a_(m n)) $
Ist m=n dann liegt eine quadratische Matirx vor.

]
#definition(title:"Operationen mit Matrizen")[
Addition (elementeweise):
$ A + B = mat(delim: "(", a_11 + b_11, dots.h.c, a_(1 n) + b_(1 n); a_21 + b_21, dots.h.c, a_(2 n) + b_(2 n); dots.v, dots.v, dots.v; a_(m 1) + b_(m 1), dots.h.c, a_(m n) + b_(m n)) $
Multiplikation (mit Skalar):
$ a dot.op A = mat(delim: "(", a dot.op a_11, dots.h.c, a dot.op a_(1 n); a dot.op a_21, dots.h.c, a dot.op a_(2 n); dots.v, dots.down, dots.v; a dot.op a_(m 1), dots.h.c, a dot.op a_(m n)) $
Matrixmultiplikation (Zeile mal Spalte):
$ A_(m_A , n_A) dot.op B_(m_B , n_B) & = C_(m_A , n_B) arrow.r n_A = m_B\
A dot.op B & eq.not B dot.op A $

]
#definition(title:"Potenzen von Matrizen")[
$ A^0 = I , quad A^1 & = A , quad A^2 = A dot.op A\
A^3 = A^2 dot.op A & = A dot.op A^2\
A^k dot.op A^l & = A^(k + l)\
(A B)^k & = A^k B^k $

]
#definition(title:"Transponierte Matrix")[
$
        "(i)" #h(.5cm) & (A^T)^T = A\
        "(ii)" #h(.5cm) & (A+B)^T = A^T + B^T\
        "(iii)" #h(.5cm) & (A B)^T = B^T dot A^T
$
Bei einer symmetrischen Matrix gilt: $A^T = A$

]

== Determinante
<determinante>
#definition(title:"Determinante")[
Es sei A eine $n times n$ Matrix. Daher ist
$det(A) arrow RR$. Die Determinante entspricht dem Volumen,
des durch die Spaltenvektoren aufgespannten Raumes. (2D = Paralellogram,
3D = Parallelepiped). 
#set math.mat(delim: "|")
$
RR^2 arrow.long det(A) &=  
mat(a_11,a_12;a_21 ,a_22) = a_11 dot a_22 - a_12 dot a_21
$

$
RR^3 arrow.long det(A) &=  
mat(
        a_11, a_12,a_13;
        a_21, a_22,a_23;
        a_31, a_32,a_33
)\
= a_11 dot 
mat(a_22,a_23;a_32,a_33) - a_12 dot & 
mat(a_21,a_23; a_31,a_33) + a_13 dot 
mat(a_21,a_22;a_31,a_32)\

= a_11 dot a_22 dot a_33 + 
a_12 dot &a_23 dot a_31 + 
a_13 dot a_21 dot a_32\
-a_11 dot a_23 dot a_32-
a_12 dot &a_21 dot a_33-
a_13 dot a_22 dot a_31
$
]
#definition(title:"Eigenschaften von Determinanten")[
Folgende Eigenschaften gelten für Determinanten:

+ Vertauscht man 2 Spalten oder Zeilen so gilt:
  $quad lr(|A|) arrow.r - lr(|A|)$

+ Multipliziert man eine Zeile oder Spalte, dann:
  $quad lr(|A|) arrow.r a dot.op lr(|A|)$

+ addiert man ein Vielfaches einer Zeile/Spalte zu einer anderen
  Zeile/Spalte, dann: $quad lr(|A|) = lr(|A|)$

+ $lr(|A|) = lr(|A^T|)$

+ $lr(|A B|) = lr(|A|) dot.op lr(|B|)$

]
#definition(title:"Funktionaldeterminante")[
Die Funktionaldeterminante gibt die lokale Flächenvergrößerung bei
folgender Abbildung:
$
        vec(x,y) arrow.long 
        vec(f(x,y),g(x,y))
        :D arrow RR^2
$ 
Dabei ist die Funktionaldeterminante wie folgt
definiert: $ frac(partial (f , g), partial (x , y)) $

]
#definition(title:"Inverse Matrix")[
Eine $n times n$ Matrix A ist singulär, falls $lr(|A|) = 0$. Sonst heißt
sie regulär oder nicht singulär. A sei nun regulär, dann gilt:
$ A^(- 1) : quad A dot.op A^(- 1) = A^(- 1) dot.op A = I\
A^(- 1) = frac(1, lr(||) A lr(||)) dot.op (A_(i j)^T) $ Weiters gilt für
die Inverse Matrix:
$
"(i)" #h(.5cm) & |A^(-1)| = 1/(|A|)\
"(ii)" #h(.5cm) & (A B)^(-1) = B^(-1) dot A^(-1)\
"(iii)" #h(.5cm) & (A^T)^(-1) = (A^(-1))^T
$

]
== Lineartransformation
<lineartransformation>
#definition(title:"Lineartransformation")[
Eine Abbildung $A : U arrow V$ (U,V sind Vektorräume) heißt linear,
wenn gilt:
$
"(i) Additivität:" #h(.5cm) & A(arrow(u) + arrow(v)) = A(arrow(u)) + A(arrow(v))\
"(ii) Homogenität:" #h(.5cm) &A(lambda dot arrow(u)) = lambda dot A(arrow(u))
$

]
== Lineare Gleichungsysteme
<lineare-gleichungsysteme>
#definition(title:"Lineare Gleichungsysteme")[
Gleichungen der Form $A arrow(x) = arrow(a)$ sind lineare
Gleichungsysteme. A ist eine $m times n$ Matrix und $arrow(a)$ ist der
Störvektor. Es wird $arrow(x)$ gesucht, welcher der #emph[Least Squares]
Approximation entspricht.

]
#definition(title:"Rang einer Matrix")[
Der Rang ist die maximale Anzahl an linear unabhängigen Spaltenvektoren
in einem System. Der Rang ändert sich nicht, wenn:
+ 2 Zeilen oder Spalten vertauscht werden.
+ Zeilen oder Spalten multipliziert werden.
+ Vielfache von Zeilen oder Spalten zu anderen addiert werden.
+ Zeilen und Spalten vertauscht sind
  ($upright("rg") (A) = upright("rg") (A^T)$).

#strong[Rangkriterium:]
- Ein lineares Gleichungsystem ist genau dann lösbar, wenn
  $upright("rg") (A) = upright("rg") (A \| arrow(a))$
- Ist das lin. Gleichungsystem lösbar, dann erfüllen die Lösungen d. GLS
  eine Ebene der Dimension n - Rang(A)

#strong[Ausgleichsrechnung:] \
Wenn ein GLS überbestimmt ist gibt es keine Lösung. Nun sei:
$
        A dot arrow(x) != arrow(a) arrow.long.double.l.r A dot arrow(x) - arrow(a) != &0 quad forall x in RR^n\
        norm(A dot arrow(x) - arrow(a)) > &0  quad ("Fehlerquadrat") \
        arrow.long A^T dot A dot arrow(x)^\* = A^T dot arrow(a)& \\quad (arrow(x)^\* "minimierter Fehler")
$

]
== Eigenwert Problem
<eigenwert-problem>
#definition(title:"Orthogonale Matrix")[
Eine Matrix heißt orthogonal, wenn $A dot A^T = I$. Sie sind also
nicht singulär ($A^(- 1) = A^T$). Die Zeilen und Spaltenvektoren bilden
eine orthonormal Basis. Sind A, B orthogonal, dann auch I, AB,
$A^(- 1)$, $A^T$. Geometrisch ist eine orthogonale Matrix eine Drehung
oder Spiegelung.

]
#definition(title:"Eigenwertproblem")[
A sei eine $n times n$ Matrix. Gesucht ist
$A dot.op x = lambda dot.op x$. $lambda in RR^n$ ist hier der
Eigenwerte und dazugehörige Vektoren sind Eigenvektoren (ein Vektor der
auf sich selbst abbildet).
$ A dot.op arrow(x) = lambda dot.op I dot.op arrow(x)\
A dot.op arrow(x) - lambda I arrow(x) = arrow(0)\
(A - lambda I) dot.op arrow(x) = 0 $ Eigenwerte sind jene $lambda$ für
die gilt (charakteristisches Polynom): $ det (A - lambda I) = 0 $

]
#definition(title:"Transformation auf Diagonalgestalt")[
A sei eine $n times n$ Matrix. A ist genau dann äquivalent zu einer
Diagonalmatrix, wenn sie n linear unabhängige EV besitzt.
$ A dot.op arrow(x)_1 & = lambda_1 dot.op arrow(x)_1\
 & #h(0em) dots.v\
A dot.op arrow(x)_n & = lambda_n dot.op arrow(x)_n $
$arrow(x)_1 , dots.h , arrow(x)_n$ sind dabei lin. unabhängige EV. Es
sei nun $S = (arrow(x)_1 , dots.h , arrow(x)_n)$, somit gilt:
$ S^(- 1) A S = mat(delim: "(", lambda_1, 0, dots.h.c, 0; 0, lambda_2, dots.h.c, 0; dots.v, dots.v, dots.down, dots.v; 0, 0, dots.h.c, lambda_n) $
Bei symmetrischen Matrizen hat man immer Diagonalisierbarkeit und die
Eigenwerte sind immer reel.

]
#definition(title:"Hauptachsentransformation")[
Man betrachte Quadriken der Form
$ q (arrow(x)) & = arrow(x)^T dot.op A dot.op arrow(x) = a quad (A = A^T)\
A & = S^(- 1) D S arrow.r D = S^(- 1) A S\
q (arrow(x) prime) & = arrow(x) prime^T dot.op D dot.op arrow(x) prime $

]
== Lineare Differentialgleichung
<lineare-differentialgleichung>
=== Lin. DG erster Ordnung
<lin-dg-erster-ordnung>
#definition(title:"Homogener Fall")[
$ y prime (x) = & f (x) y (x)\
arrow(y) prime (t) = & A dot.op arrow(y) (t)\
arrow.r & y (x) = c dot.op e^(integral f (x) thin d x)\
arrow.r & y (x) = e^(A t) dot.op arrow(c) $
]
#definition(title:"Inhomogener fall")[
$ y prime (x) = & f (x) dot.op y (x) + g (x)\
arrow.r & y = y_h + y_p\
arrow.r & y_h = c dot.op e^(integral f (x) thin d x)\
arrow.r & y_p = y_h dot.op integral frac(g (x), y_h) thin d x $

]
