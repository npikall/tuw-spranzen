#import "@preview/cetz:0.3.2"
#import "@preview/cetz-plot:0.1.1"
#import "@preview/suiji:0.3.0": *


#let show-dict = (
  "X0": $X_0$,
  "X1": $X_1$,
  "X2": $X_2$,
)
// Sketchy Show rule loop
// https://forum.typst.app/t/how-can-i-create-show-rules-in-a-loop/952/2
#show: body => {
  for (key, val) in show-dict {
    body = {
      show key: val
      body
    }
  }
  body
}



= Multivariate Zufallsvariablen und Methoden
== Bivariate Zufallsvariablen und Verteilungen

Eine *bivariate Zufallsvariable* $(X_1, X_2)$ ordnet Ereignissen Wertepaare reeller Zahlen zu und wird auch als *Zufallsvektor* der Dimension 2 bezeichnet. Dabei steht $X_1$ für eine Zufallsvariable und $x_1$ für eine ihrer Realisationen.

Wir betrachten Wahrscheinlichkeiten von Ereignissen der Form ${X_1 <= x_1} inter {X_2 <= x_2}$.

Die *Verteilungsfunktion* einer bivariaten Zufallsvariable ${(X_1, X_2)}$ ist gegeben durch:

$
F_(X_1,X_2) (x_1, x_2) = PP({X_1 <= x_1} inter {X_2 <= x_2})
$

Sie beschreibt die Wahrscheinlichkeit, dass beide Zufallsvariablen jeweils einen Wert kleiner oder gleich $(x_1, x_2)$ annehmen.

=== Unabhägigkeit
Für *abhängige* Zufallsvariablen hängt die bedingte Verteilung von X2 von der bedingten Information ab (z.B.: wenn X1 groß ist, dann auch X2 wahrscheinlich groß).

Für *unabhägige* Zufallsvariablen hat die Verteilung von X1 keinen Einfluss auf die Verteilung von X2 und umgekehrt.

#lorem(50)

== Multivariate Zufallsvariablen und Verteilungen
#lorem(50)

=== Kovarianz
Eines der wichtigsten, bivariaten Abhängigkeitsmaße ist die Kovarianz. 
Sie ist ein Maß für die lineare Abhängigkeit zwischen X und Y.
Die Kovarianz kann folgendermaßen geschätzt werden: 
$
S_(X Y) = 1/(n - 1) limits(sum)_(i=1)^n (X_i - overline(X)) dot (Y_i - overline(Y))
$

// Random Point generator
#let random-points(n: 10, loc:(0,0), scale:(1,1), seed:42) = {
  let rng-x = gen-rng(seed)
  let rng-y = gen-rng(seed + 1)

  // Generate n random points
  let (_, xs) = normal(rng-x, loc:loc.at(0), scale:scale.at(0), size: n)
  let (_, ys) = normal(rng-y, loc:loc.at(1), scale:scale.at(1), size: n)
  return xs.zip(ys)
}

// Random points along a line
#let linear-points(n: 10, x-range: (-1, 1), loc:(0,0), scale:(1,1), slope: 1, seed:42) = {
  let rng-noise = gen-rng(seed)

  // X-Werte als gleichmäßig verteilte Werte zwischen x-range.at(0) und x-range.at(1)
  let xs = range(n).map(it => x-range.at(0) + it * (x-range.at(1) - x-range.at(0)) / (n - 1))

  // Rauschterm für Y-Werte
  let (_, noise) = normal(rng-noise, loc:0, scale:scale.at(1), size: n)

  // Y = slope * X + noise + loc_y
  let ys = xs.enumerate().map(it => slope * it.at(1) + noise.at(it.at(0)) + loc.at(1))

  return xs.zip(ys)
}


#figure(
  cetz.canvas({
    import cetz-plot: *
    import cetz.draw:*

    // Define plot style
    let plot-style = (
      size: (4,4),
      x-tick-step: none, 
      y-tick-step: none,
      x-min: 0, x-max: 1,
      y-min: 0, y-max: 1,
      x-label: "X", 
      y-label: "Y",
    )

    // Define scatter plot style
    let scatter-style = c => (
      mark: "o",
      mark-style: (stroke: c, fill: rgb(255,255,255,0)), 
      mark-size: 0.12,
      style: (stroke: none)
    )

    // Define different point distributions
    let plots = (
      (random-points(n: 30, loc: (0.5, 0.5), scale: (0.13, 0.13), seed: 42), red, $S_(X Y) approx 0$),
      (linear-points(n: 30, x-range: (0.1, 0.9), loc: (0.5, 0.05), scale: (0.1, 0.1), slope: 1, seed: 42), blue, $S_(X Y) > 0$),
      (linear-points(n: 30, x-range: (0.1, 0.9), loc: (0.5, 0.9), scale: (0.1, 0.1), slope: -0.8, seed: 42), green, $S_(X Y) < 0$)
    )

    // Generate plots
    for p in plots {
      plot.plot(..plot-style, {
        plot.add(p.at(0), ..scatter-style(p.at(1)))
      }, name:"plot")
      content((v => cetz.vector.add(v, (0, 0.2)),"plot.north"), p.at(2), anchor:"south")
      set-origin((5,0))
    }
  }
), kind:"plot")

== Korrelation

=== Definition
Die Kovarianz liefert nur eingeschränkt Information zu linearen Abhängigkeit zwischen X und Y, das sie von von X und Y abhängt. Die Korrelation ist definiert als *normierte Kovarianz*:
$
rho_(X Y) = sigma_(X Y) / (sigma_X dot sigma_Y)\
R_(X Y) = S_(X Y) / (S_X dot S_Y)
$

Die Korrelation erfasst nur lineare Zusammenhänge (keine Kreise oder so).
Kausalität bezeichnet die Beziehung zwischen Ursache und Wirkung. Korrelation bezeichnet einen symmetrischen statistischen Zusammenhang. Korrelation kann dabei helfen Kausalzusammanhänge aufzudecken, allerdings kann *Kausalität nie* aus einer *statistischen Analyse gefolgert* werden.

=== Scheinkorrelation
- Reverse Causality (zB: je schneller Windräder desto schneller der Wind)
- Third factor / confounding variable (X und Y ähnlich aufgrund von Z)
- Spurious relationship (reiner Zufall)

== Lineare Regression
Lineare Regression setzt Variablen in eine lineare Beziehung zueinander.
Das Ziel von linearer Regression ist üblicherweise die Prognose und die
Evaluation von statistischen Abhängigkeiten.
$
Y = beta_0 + X beta_1 + epsilon
$

$
Y = X beta + epsilon = underbrace(vec(Y_1, dots.v, Y_n),n times 1) = underbrace(mat(1, X_1;dots.v, dots.v; 1, X_n),n times 2) dot underbrace(vec(beta_0, beta_1),2 times 1) + underbrace(vec(epsilon_1, dots.v, epsilon_n),n times 1)
$
$
hat(beta) = (X prime X)^(-1) X prime Y = vec(hat(beta)_0, dots.v, hat(beta)_n)
$

== ANOVA - Analysis of Variance
#lorem(50)


== Wichtige Hypothesentests für multivariate Statistik
Um zu überprüfen, ob eine beobachtete Stichprobenkorrelation statistisch signifikant ist kann die folgende Teststatistik verwendet werden.

$
T = (R sqrt(n - 2))/(sqrt(1 - R^2))
$

R bezeichnet hier den Schätzer für die Korrelation und n die Anzahl der Beobachtungen.