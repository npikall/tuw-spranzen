#import "../common.typ":*
#let example = it => align(center, gc.example(it, width: 85%))
#let memo = it => align(center, gc.memo(it, width: 85%))

#show "H0": $cal(H)_0$
#show "H1": $cal(H)_1$

= Hypothesentest
Hypothesentests bieten einen formalen Rahmen zur Entscheidungsfindung
bei statistischen Fragestellungen.

== Parametrische Hypothesen
Parametrische Hypothesen sind Annahmen über unbekannte Parameter $Theta$
einer Verteilung $F_Theta$. Dabei wird eine Nullhypothese $cal(H)_0: Theta in Theta_0$ gegen eine Alternativhypothese $cal(H)_1 : Theta in Theta_1$ getestet, wobei $Theta_0$ und $Theta_1$ disjunkt sind.

Üblicherweise spiegelt H0 den _Status quo_ bzw _Gleichheit_
wider, und H1 repräsentiert _Veränderung_. Enthält $Theta_0$ nur einen Punkt, so nennt man die Hypothese _einfach_, sonst _zusammengesetzt_.
Weiters unterscheidet man zwischen einseiigen und zweiseitigen Hypothesen. Ein einfaches Beispiel:
$
cal(H)_0: Theta = Theta_0\
cal(H)_1: Theta < Theta_0 quad "einseitig"\
"oder"\
cal(H)_1: Theta != Theta_0 quad "zweiseitig"
$

== Hypothesentests
Gegeben sei eine Stichprobe x, die aus einer Verteilung $F_Theta$ mit unbekanntem Parameter $Theta$ stammt. Basierend auf den Hypothesen H0 und H1 soll entschieden werden, ob H0 angelehnt oder beibehalten wird.
Dazu wird eine kritische region C definiert, die den Ergebnisraum in zwei disjunkte Mengen unterteilt:
- $x in C arrow$ Ablehnung von H0
- $x in C^complement arrow$ Beibehaltung von H0
Diese Entscheidung erfolgt mithilfe einer Teststatistik.

== Teststatistik
#missing[]

== Typ I und Typ II Fehler
#figure(
  table(
    columns: 3,
    table.hline(),
    [Entscheidung],
    table.vline(),
    [H0 richtig],
    [H1 richtig],
    table.hline(),
    [H0 ablehnen],
    [Typ I Fehler],
    [korrekt],
    [H0 nicht ablehnen],
    [korrekt],
    [Typ II Fehler],
    table.hline(),
  ),
  kind: "none",
  supplement: "none",
)

== p-Wert
Der p-Wert ist das kleinste Signifikanzniveau, bei welchem die Nullhypothese für die gegebenen Daten abgelehnt werden würde.

Der p-Wert für einen festgelegten Hypothesentest und eine
gegebene Stichprobe entspricht der Wahrscheinlichkeit einen Wert für die
Teststatistik unter der Nullhypothese zu erhalten, der genauso extrem
oder extremer ist, als die gegebene Realisation t von T

Liegt der p-Wert unter dem vorgegebenen Signifikanzniveau $alpha$, so wird die H0 abgelehnt.

#example[
  Eine Münze wird 100 mal geworfen, es erscheint 80 mal Kopf. Ist die Münze fair?
]

$
PP(T gt.eq 80 | cal(H)_0: p = 1/2) = 1 - limits(sum)_(i=1)^80 binom(n, i) p_i (1 - p)^(n-i) approx 5.6 dot 10^(-10)
$

Ein ausgang mit 80 mal Kopf ist extrem unwahrscheinlich ($5.6 dot 10^(-10) << alpha = 0.05$) bei einer fairen Münze und H0 wird abgelehnt.

== Hypothesentests und Konfidenzintervalle
Hypothesentests und Konfidenzintervalle sind eng miteinander verknüpft. Ein Konfidenzintervall gibt den Bereich an, in dem ein unbekannter Parameter mit einer bestimmten Wahrscheinlichkeit liegt. Ein Hypothesentest prüft, ob ein spezifischer Parameterwert plausibel ist.

Ein zentraler Zusammenhang besteht darin, dass ein Parameterwert $Theta_0$ genau dann nicht abgelehnt wird, wenn er im entsprechenden $(1-alpha)$-Konfidenzintervall liegt. Ist $Theta_0$ außerhalb des Intervalls, wird die Nullhypothese verworfen. Dies ermöglicht eine alternative Interpretation von Hypothesentests und unterstützt die statistische Entscheidungsfindung.

#memo[
  Die Nullhypothese wird *nie* angenommen. Die korrekte Formulierung ist:

  #h(2em)*"Die Nullhypothese konnte nicht abgelehnt werden."*

  Nur weil sie nicht abgelehnt wird, heißt das nicht, dass sie richtig ist.
]

== Wichtige Hypothesentests
- ... für Mittelwert bei unbekannter Varianz: $T = (sqrt(n)(overline(X) - mu_0))/S$
- ... für Varianz einer Normalverteilung: $T = ((n -1) S^2)/ sigma_0^2$
- ... für vers. Mittelwerte bei gleicher unbekannter Varianz #emoji.warning
- ... für unterschiedliche Mittelwerte bei unbekannter Varianz
- ... für unterschiedliche Mittelwerte bei gepaarten Stichproben
- ... für Verhältnis der Varianzen $T = S^2_X / S^2_Y$
- $Chi^2$-Test für kategorische Daten
