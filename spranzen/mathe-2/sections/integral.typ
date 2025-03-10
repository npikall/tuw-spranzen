#import "../common.typ": *
#definition-counter.update(0)

= Multivariate Integralrechnung
<integralrechnung>
== Doppel- und Dreifach Integrale
<doppel-und-dreifach-integrale>
#definition(title:"Integrationsbereiche")[
Endlich viele Kurvenstücke der Form: $ y = f (x) quad x in I\
x = g (y) quad y in J $ Grundeigenschaften (f,g sind integrierbar,
$a in RR$):
+ $a dot.op f$ ist integrierbar und
  $ integral.double_D a f thin d x thin d y = a dot.op integral.double_D f thin d x thin d y $
+ $f + g$ ist integrierbar und
  $ integral.double_D (f + g) thin d x thin d y = integral.double_D f thin d x thin d y + integral.double_D g thin d x thin d y $
+ $lr(|f|)$ ist integrierbar und
  $ lr(|integral.double_D f thin d x thin d y|) lt.eq integral.double_D lr(|f|) thin d x thin d y $
+ Cauchy Schwarzsche Ungleichung
  $ angle.l f , g angle.r = integral.double_D f g thin d x thin d y lt.eq (integral.double_D f^2 thin d x thin d y)^(1 \/ 2) dot.op (integral.double_D g^2 thin d x thin d y)^(1 \/ 2) $
  $ lr(|angle.l x , y angle.r|)^2 lt.eq angle.l x , x angle.r dot.op angle.l y , y angle.r $
+ Dreiecksungleichung
  $ sqrt(integral.double_(upright("D")) (f + g)^2 thin d x thin d y) lt.eq sqrt(integral.double_(upright("D")) f^2 thin d x thin d y) + sqrt(integral.double_(upright("D")) g^2 thin d x thin d y) $

]
#definition(title:"Methoden zur Berechnung")[
#strong[Rückführung auf Einfachintegrale:] (Variable im inneren
Integral) \
$ D = { (x , y) : a lt.eq x lt.eq b , quad gamma (x) lt.eq y lt.eq delta (x) }\
integral.double_D f (x , y) thin d x thin d y = integral_a^b (integral_(gamma (x))^(delta (x)) f (x , y) thin d y) thin d x $

Wenn f(x,y) = g(x)h(y), dann: $ limits(integral.double)_(a lt.eq x lt.eq b\
c lt.eq y lt.eq d) g (x) h (y) thin d x thin d y = integral_a^b g (x) thin d x dot.op integral_c^d h (y) thin d y $
#strong[Transformation von Doppelintegralen];$ dots.h.c $
#strong[Differentiation von Parametern] $ dots.h.c $

]
#definition(title:"Inhalt von Flächenstücken/Oberflächen")[
Es sei eine Funktion $f:D arrow RR$ und
$F = #scale(x: 100%, y: 240%)[{] (x , y , z) : (x , y) in D , quad z = f (x , y) #scale(x: 100%, y: 240%)[}]$
die Fläche in expliziter Darstellung.
$ I (F) & = lr(|F|) quad (upright("Flächeninhalt"))\
I (F) & = integral.double_D sqrt(1 + f_x (x , y)^2 + f_y (x , y)^2) thin d x thin d y $
F in Parameterform
$F = #scale(x: 100%, y: 240%)[{] X (u , v) : (u , v) in D #scale(x: 100%, y: 240%)[}]$
mit $X = vec(x (u , v), y (u , v), z (u , v))$.
$ I (F) = integral.double_D lr(||) X_u (u , v) times X_v (u , v) lr(||) thin d u thin d v $
Dabei sind:
$ X_u (u , v) times X_v (u , v) & arrow.r upright("Flächennormalvektor")\
X_u & = vec(x_u, y_u, z_u) $

]
== Vektorfelder
<vektorfelder>
#definition(title:"Potentialfelder")[
Potentialfelder oder auch Gradientenfelder (konservative Vektorfelder)
$V: G(x RR) arrow RR^(2 "oder" 3)$, wenn es dazu ein Skalarfeld
$P:G(x RR)arrow RR$ gibt mit:
$ v = "grad" P = vec(P_x, P_y, P_z) $ Dabei stellt
$P(X) = P(x,y,z) = c, quad  c in RR$ die Potentialfläche dar.
Jeder Vektor \
$v (a) = upright("grad") P (a)$ ist senkrecht auf die Potentialfläche. \

#strong[Kriterium für Potentialfelder:]
($"v":G arrow RR^(2 "oder" 3)$)

+ G ist einfach zusammenhängend (keine Löcher)

+ v hat stetige partielle Ableitungen

+ Integrabilitäts Bedingung: $v_x - u_y = 0$ im $RR^2$, bzw.
  $w_y - v_z = u_z - w_x = v_x - u_y = 0$ im $RR^3$
  $ upright("v") (X) = vec(u (x), v (x), w (x)) = vec(P_x (x), P_y (x), P_z (x)) $
  $ w_y - v_z &= P_(z y) - P_(y z) = 0\
  arrow.long u_z - w_x &= P_(x z) - P_(z x) = 0\
  v_x - u_y &= P_(y x) - P_(x y) = 0\
   $

]
== Kurvenintegrale
<kurvenintegrale>
#definition(title:"Kurvenintegrale")[
#strong[Existenzsatz:] \
Es sei ein Vektorfeld $v:G arrow RR^(2 \/ 3)$.
$ integral_C v thin d x = integral_a^b v (x (t)) dot.op dot(x) (t) thin d t $
\
#strong[Satz: Kurvenintegrale auf Potentialfeldern]
$ integral_c v thin d x = P (x (b)) - P (x (a)) $ Kurvenintegrale sind
wegunabhängig. Bei geschlossenen Kurven ist $integral.cont v = 0$ \

#strong[Satz: Bestimmung von Potentialen] \
Weiß man, dass ein stetiges Vektorfeld v ein Potentialfeld ist, dann
erhält man ein Potential P auf folgende Weise:
$ P (X) = integral_a^x v thin d y quad upright("für ") x in G $

]
#definition(title:"Exakte Differentialgleichung")[
$f (x , y) + g (x , y) dot.op y prime = 0$ heißt exakt, wenn
$exists F:G arrow RR$ und $F_x = f , quad F_y = g$. Sprich F
ist eine Stammfunktion von f und g. Lösung: es gilt
$F (x , y (x)) = italic("const")$
$ g (a , b) eq.not 0 arrow.r y (a) = b $
$ arrow.r.double F (x , y) = F (a , b) $

]
== Oberflächenintegrale
<oberflächenintegrale>
