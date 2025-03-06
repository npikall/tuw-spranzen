#import "@preview/cetz:0.3.2"
#import "@preview/cetz-plot:0.1.1"

= Zufallsvariablen und Verteilungen
== Wahrscheinlichkeiten
=== Kolmogorov-Axiome
+ $0 <= PP(A) <= 1$
+ $PP(Omega) = 1$
+ Für eine Folge von Ereignissen $A_1, A_2, ...$ mit $A_i inter A_j = nothing$ für $i != j$ gilt $PP(limits(union)_(i=1)^(infinity) A_i) = limits(sum)_(i=0)^infinity PP(A_i)$
  Die Vereinigung von Ereignissen (die sich nicht überschneiden) entspricht ihrer Summe.

=== Eigenschaften von Wahrscheinlichkeiten
- Ein Ereignis kann eintreten oder nicht:
  - $A^complement = Omega/A$, $PP(A^complement) = 1 - PP(A)$
  - $PP(A union A^complement) = PP(A) + PP(A^complement) = PP(Omega) = 1$
- Ein Ereignis kann nicht gleichzeitig eintretten und nicht  eintreten.
  - $PP(nothing) = PP(A union A^complement) = 0$
- Monotonie der Wahrscheinlichkeit für Teilereignisse:
  - $B subset.eq A arrow PP(B) <= PP(A)$
- Wahrscheinlichkeit für A oder B
  - $PP(A union B) = PP(A) + PP(B) - PP(A inter B)$

=== Bedingte Wahrscheinlichkeit
Die bedingte Wahrscheinlichkeit von A gegeben B beschreibt die
Wahrscheinlichkeit, dass das Ereignis A eintritt, gegeben, dass B
eingetreten ist (angenommen $PP(B) > 0$).

$
PP(A|B) = (PP(A inter B))/PP(B)
$

Unabhägige Ereignisse wenn gilt: $PP(A|B) = PP(A) arrow.long PP(A inter B) = PP(A) dot PP(B)$

=== Satz von Bayes
Der Satz von Bayes ist ein wichtiges Theorem der Wahrscheinlichkeitstheorie und beschäftigt sich mit bedingten Wahrscheinlichkeiten. Er folgt
aus der Definition der bedingten Wahrscheinlichkeit. Das ist mathematisch
einfach, philosophisch jedoch nicht.

$
PP(A|B) &= (PP(B|A) dot PP(A))/(PP(B))\
\
PP(E_i|B) &= (PP(B|E_i) dot PP(E_i))/(limits(sum)_(i=1)^infinity PP(B|E_i) dot PP(E_i))\
$

*Beispiel Medizinischer Test:*

Es sei $+ -$ ein positives/negatives Testergebnis und K bzw $not K$ ob eine Person tatsächlich krank ist.
- Test hat mit 90% ein positives Ergebnis bei kranken Personen
  - $PP(+|K) = 0.9$ (True Positive Rate *TP*)\
    #sym.arrow.curve $PP(-|K) = 0.1$ (False Negative Rate *FN*)
- Test zu 95% richtig (negatives Ergebnis) bei nicht kranken Personen
  - $PP(-|not K) = 0.95$ (True Negative Rate *TN*)\
    #sym.arrow.curve $PP(+|not K) = 0.05$ (False Positive Rate *FP*)
- Die Krankheit tritt bei 1% aller Menschen auf.
  - $PP(K) = 0.01$ (*Prior*)\
    #sym.arrow.curve $PP(not K) = 0.99$)


Wie wahrscheinlich ist es, dass eine Person mit positivem Test wirklich krank ist? ($PP(K|+)$ wird *Posterior* genannt)

$
PP(K|+) = (PP(+|K) dot PP(K))/(PP(+))
$

#let prob-positive = {
  calc.round(
    0.9 * 0.01 + 0.05 * 0.99,
    digits:5
  )
}

$
PP(+) &= PP(+|K) dot PP(K) &&+ PP(+|not K) dot PP(not K)\
&= 0.9 dot 0.01 &&+ 0.05 dot 0.99 =  #prob-positive
$

#let prob-sick-given-pos = {
  calc.round(
    (0.9 * 0.01) / prob-positive,
    digits:3
  )
}

$
PP(K|+) = ( "TP"/("TP" + "FP"))= (0.9 dot 0.01)/#prob-positive approx #prob-sick-given-pos
$

Die Wahrscheinlichkeit ist somit von 1% auf #{prob-sick-given-pos * 100}% aktualisiert worden.
#figure(
  cetz.canvas({
    import cetz.draw: *
    import cetz.decorations: flat-brace
    
    let (xmax, ymax) = (5,5)
    let (xc, yc) = (1,3.5)
    let pad = 0.1

    // Draw Areas
    rect((xc,xc),(xmax,ymax), fill:gray.darken(20%), name:"nEnH")
    rect((xc,0),(xmax,xc), fill:blue.lighten(20%), name:"EnH")
    rect((0,0),(xc,yc), fill:blue.lighten(50%), name:"EH")
    rect((0,yc),(xc,ymax), fill: gray.lighten(10%), name:"nEH")

    // Annotate Areas with Arrows
    line((-0.5,3.5),"nEH.center", mark:(end:">", fill:black), name:"arrow-nEH")
    line((-0.5, 1), "EH.center", mark:(end:">", fill:black), name:"arrow-EH")
    content("arrow-EH.start", $PP(+|K)$, anchor:"east", padding:pad)
    content("arrow-nEH.start", $PP(-|K)$, anchor:"east", padding:pad)

    // Annotate Areas left
    content("EnH.center", $PP(+|not K)$, anchor:"center", padding:pad)
    content("nEnH.center", $PP(-|not K)$, anchor:"center", padding:pad)

    // Draw Braces and annotate
    flat-brace((0,0-pad),(xc,0-pad), name:"H", flip:true)
    flat-brace((xc,0-pad),(xmax,0-pad), name:"nH", flip:true)
    content("H.south", $PP(K)$, anchor:"north", padding:pad)
    content("nH.south", $PP(not K)$, anchor:"north", padding:pad)
  }),
  kind:"plot",
  caption:[Darstellung des Wahrscheinlichkeitsraumes. Der linke Balken stellt die Wahrscheinlichkeit dar wenn man krank ist und ein richtiges Testergebnis bekommt. Der rechte Balken zeigt die Wahrscheinlichkeit ein Falsch Positiv zu bekommen.]
)

Gute Erklärungen sind in folgenden Videos zu finden:
- #link("https://www.3blue1brown.com/lessons/better-bayes", [3B1B The medical Test Paradox])
- #link("https://www.3blue1brown.com/lessons/bayes-theorem-quick", [3B1B The quick proof of Bayes Theorem])
- #link("https://www.3blue1brown.com/lessons/bayes-theorem", [3B1B Bayes-Theorem, the Geometry of changing Beliefs])
- #link("https://www.youtube.com/watch?v=R13BD8qKeTg", [Veritasium The Bayesian Trap])

== Zufallsvariablen
Zufallsvariablen X ordnen Ereignissen eine Zahl zu (z.B. Kopf = 1 und Zahl = 0 oder bei Regen 20 mm).

== Verteilungsfunktionen
X bezeichnet immer eine Zufallvariable und x einen möglichen Wert, den diese annimmt.

*Definition:* $F_X: RR arrow [0,1]$ ist die Verteilungsfunktion der Zufallsvariable X definiert durch $ F_X (x) = PP(X <= x) $

Somit ist die Verteilungsfunktion, ausgewertet an x die *Unterschreitungswahrscheinlickeit* der Zufallsvariablen X für diesen Wert.
Es gilt: 
$
limits(lim)_(x arrow - infinity) F_X (x) &= 0\
limits(lim)_(x arrow infinity) F_X (x) &= 1
$

#figure(
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *
    // let x = range(0,10)
    plot.plot(
      size: (7,4),
      y-min:0, y-max:1,
      xmin: -5, x-max:5,
      x-tick-step:1,
      y-tick-step:0.2,
      axis-style:"school-book",
      legend-anchor:"north-west",
      legend:(-0.6,4),
      {
        let sigma = calc.sqrt(1.5)
        let mu = 0
        let norm = x => 1/(sigma * calc.sqrt(2 * calc.pi)) * calc.exp(-0.5 * calc.pow((x - mu)/sigma, 2))
        
        // Numerische Approximation der Verteilungsfunktion
        let cdf = x => {
          let dx = 0.1
          let sum = 0.0
          let t = -5.0  // Startwert
          while t < x {
            sum += norm(t) * dx
            t = t + dx  // Manuelles Hochzählen
          }
          sum
        }
        
        plot.add(domain:(-5,5),norm, samples:100, label:"Dichtefkt.")
        plot.add(domain:(-5,5), cdf, samples:100, label:"Verteilungsfkt.")
      }
    )
  }),
  kind:"plot",
  caption:[Dichte- und Verteilungsfunktion von einer kontinuierlichen Normalverteilung]
)
#v(1cm)
- Diskrete Zufallsvariable (cdf und pmf)
- Kontinuierliche Zufallsvariable (cdf und pdf)

/ PDF: Probability Density Function
/ PMF: Probability Mass Function
/ CDF: Cumulative Distribution Function

== Quantile
#lorem(50)

== Erwartungswert
Zufallsvariablen werden durch Vertilungs- bzw. Dichtefunktionen charakterisiert, welche durch Parameter beschreiben sind. Diese Parameter hängen wiederum von den sog. Momenten (Mittelwert, Varianz) ab.

*Erwartungswert:*

$
EE(X) &= limits(integral)_cal(S) x f_X (x) dif x \
EE(X) &= limits(sum)_(x in cal(S)) x p_X (x)
$

Daraus folgt: 
$
EE(X + Y) = EE(X) + EE(Y)\
EE(lambda dot X) = lambda dot EE(X)
$

*Varianz:*
$
"Var"(X) = sigma^2= EE(X - mu_X)^2 = 1/n limits(sum)_(i=1)^n (x_i - mu)^2
$

*Variationskoeffizient:*
$
"CV" = sigma_X/mu_X
$

*Standardisierte Variable:*

Sie hat einen Mittelwert von 0 und einen Varianz von 1.
$
Y = (X - mu_X)/sigma_X
$
== Wichtige Verteilungen

- Exponentialverteilung $"Exp"(lambda) = F(X) = 1 - e^(- lambda x)$
- Normalverteilung
- Log-Normalverteilung
- Students t-Verteilung
- $cal(X)^2$ - Verteilung
- F-Verteilung
- Gumbel-Verteilung
- Stetige Uniform Verteilung
- Diskrete Uniform Verteilung
- Bernoulli Verteilung
- Binomial Verteilung
- Poisson Verteilung