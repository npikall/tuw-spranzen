#import "../common.typ":*
= Schätzungen

== Stichprobe und Grundgesamtheit
Eine *Menge* von n Zufallsvariablen ${X_1, ..., X_n}$ mit *derselben Verteilung* $F_X$ ist eine Zufallsstichprobe der Größe n der Verteilung $F_X$. Das statistische Modell, welches die Stichprobe erzeugt hat, nennt man auch Grundgesamtheit, in diesem Fall einfach die Verteilung $F_X$.

Man kann an eine Stichprobe ein statistisches Modell anpassen. Dafür müssen wir ein Modell auswählen und die Eigenschaften des Modells aus der Stichprobe schätzen.

== Simulation von Zufallsvariablen

```python
import numpy as np
import matplotlib.pyplot as plt

mu, sigma = 0, 0.1
x = np.random.normal(mu, sigma, size=1000)

fig, ax = plt.subplots()
ax.hist(x, bins=30)
plt.show()
```

== Schätzer für Mittelwert und Varianz
Statistische Schätzer verwenden Information aus einer Stichprobe, um auf Eigenschaften des dahinterliegenden Modells, der *Grundgesamtheit, zu schließen*. Das Verhalten von Schätzern ist abhängig vom zugrundeliegenden statistischen Modell der Zufallsstichprobe und dem Stichprobenumfang n. Im Allgemeinen: Je größer der Stichprobenumfang n, desto kleiner ist die mit dem Schätzverfahren verbundene Unsicherheit.

=== Eigenschaften von Schätzern
- Konsistenz (Schätzer haben eine Unsicherheit, die aber gegen 0 geht bei steigendem Stichprobenumfang).
  $ forall epsilon > 0: limits(lim)_(n arrow infinity) PP(norm(Gamma_n - Theta) > epsilon) = 0 $
- (asymptotische) Erwartungstreue $ (limits(lim)_(n arrow infinity)) EE(Gamma_n) = Theta $

=== Schätzer für Mittelwert und Varianz
Die wohl bekanntesten statistischen Schätzer sind die Schätzer für den
Mittelwert $overline("x")$ und die Varianz $sigma^2$.

$
overline(X) = overline(x) = 1/n limits(sum)_(i = 1)^n x_i
$
$
S^2 = sigma^2 = 1/(n-1) limits(sum)_(i = 1)^n (x_i - overline(x))^2
$
Beide sind konsistent und erwartungstreu. Also:
$
EE(overline(X)) = mu_x\
EE(S^2) = "Var"(X)
$

== Momentenmethode
Die Schätzung von Verteilungsparametern mit Hilfe von Schätzern für die
Momente nennt man Momentenmethode. Die Intuition hinter dieser Schätzmethode ist, dass Stichprobenmomente mit den Momenten der Grundgesamtheit gleichgesetzt werden.

$
(overline(x), sigma^2) arrow (xi, alpha) arrow "Dichtefunktion"
$

Die Momentenmethode führt zu konsistenten Schätzern für Parameter,
allerdings im Allgemeinen nicht zu erwartungstreuen Schätzern (allerdings
asymptotisch erwartungstreu).

== Maximum Likelihood
Maximum-Likelihood-Schätzung ist wie die Momentenmethode ein
Schätzverfahren für die Parameter einer Verteilung. Die Intuition ist, dass für eine gegebene Dichte (Verteilungsfamilie) die Parameter gesucht
werden, welche eine Stichprobe am besten beschreiben.

$
L(Theta, x) = limits(product)_(i=1)^n f_X (x_i,Theta)
$
Jener Wert für $Theta$ welcher die Likelihood für eine Stichprobe maximiert wird wird Maximum-Likelihood Schätzer $hat(Theta)_"ML"$ genannt.
Dabei leitet man zuerst die Verteilung ab und setzt sie null.

== Gesetz der großen Zahlen
Das Gesetz der großen Zahlen ist eines der wichtigsten Theoreme der Statistik.
#theorem[
  Sei $X_1, X_2, ...$ eine Folge von unabhägigen, identisch verteilten Zufallsvariablen mit $EE(X_i) = mu_X < infinity$ und $overline(X)_n = 1/n limits(sum)_(i=1)^n X_i$ dann gilt:
  $ overline(X)_n arrow mu x $
]
Das Gesetz der großen Zahlen besagt, dass der Durchschnitt einer großen Anzahl unabhängiger, identisch verteilter Zufallsvariablen mit hoher Wahrscheinlichkeit dem Erwartungswert der zugrunde liegenden Verteilung nahekommt.

== Zentraler Grenzwertsatz
Der zentrale Grenzwertsatz ist eines der wichtigsten Theoreme der Statistik.

#theorem[
  Sei $X_1, X_2, ...$ eine Folge von unabhägigen, identisch verteilten Zufallsvariablen mit $EE(X_i) = mu_X$, $"Var"(X_i) = sigma^2_X < infinity$ und $overline(X)_n = 1/n limits(sum)_(i=1)^n X_i$. Dann gilt: $ sqrt(n) (overline(X)_n - mu_X) arrow cal(N) (0,sigma^2_X) $
]

Der zentrale Grenzwertsatz besagt, dass die Summe oder der Durchschnitt vieler unabhängiger, identisch verteilter Zufallsvariablen – unabhängig von der ursprünglichen Verteilung – näherungsweise einer Normalverteilung (Glockenkurve) folgt, wenn die Anzahl der Variablen groß genug ist.

== Konfidenzintervalle
Approximative Konfidenzintervalle sind eine unmittelbare Anwendung des zentralen Grenzwertsatzes.
Ein Konfidenzintervall sind Funktionen $T_1(X_1,..., X_n)$,
$T_2(X_1,..., X_n)$ der Zufallsstichprobe, sodass für den Parameter $Theta$ zum
Konfidenzniveau 1 − $alpha$ gilt:

$
PP(T_1 < Theta < T_2) gt.eq 1 - alpha
$

Konfidenzintervalle schließen den zu schätzenden Paramerer zwischen zwei zufälligen Werten
(Intervall) ein.
#figure(
  table(
    columns: 8,
    stroke: 0.7pt,
    strong($q$),
    [0.75],
    [0.8],
    [0.9],
    [0.95],
    [0.975],
    [0.99],
    [0.995],
    strong($z_q$),
    [0.674],
    [0.841],
    [1.281],
    [1.644],
    [1.959],
    [2.326],
    [2.575],
  ),
  kind: "none",
  supplement: "none",
)
#example[
  #missing[]
]
