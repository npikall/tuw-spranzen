#import "../common.typ": *
= Säuren und Basen
<säuren-und-basen>
== pH-Wert
_pH_ steht als Abkürzung für _potentia hydrogenii_ oder _pondus hydrogenii_. Der pH-Wert ist ein Maß
für die _Acidität_ bzw. _Basizität_ einer verdünnten wässrigen Lösung.
- Eine *neutrale* Lösung hat einen pH-Wert von 7.
- In *sauren* Lösungen überwiegen die #ce("H+") Ionen, und es gilt:
- $c(#ce("H+"))<qty("1e-7", "mol/L")$ oder $"pH" < 7$
- In *basischen* Lösungen überwiegen die #ce("OH-") Ionen, und es gilt:
- $c(#ce("OH-"))< qty("1e-7", "mol/L")$ oder $"pH" > 7$.

=== Starke Säuren
Diese sind in Wasser vollständig dissoziiert, d.h. $alpha = 1$. Der pH-Wert der Lösung ist somit
gleich dem negativen dekadischen Logarithmus des Zahlenwerts der Ausgangskonzentration der Säure HA:

#align(center, ce("c(H+) = c_0 (HA) => pH = -log(c_0 (HA))"))

#gc.example[
  #qty(10, "g") #ce("HCl") werden in #qty(800, "mL") Wasser gelöst. Welchen pH-Wert hat die
  entstandene Salzsäure?
  #let n_HCl = calc.round(10 / 36.5, digits: 3)
  $
    n_"HCl" = m_"HCl" / M_"HCl" = qty("10", "g") / qty("36.5", "g/mol") = qty(#n_HCl, "mol")
  $
  #let c_HCl = calc.round(n_HCl / 0.8, digits: 3)
  $
    c_"HCl" = n_"HCl" / V = qty(#n_HCl, "mol") / qty("0.8", "L") = qty(#c_HCl, "mol/L")
  $
  #let pH = calc.round(-calc.log(c_HCl, base: 10), digits: 2)
  $
    pH = -log(c_"HCl") = -log(qty(#c_HCl, "mol/L")) = qty(#pH, "pH")
  $
]

=== Starke Basen
Diese sind in Wasser vollständig dissoziiert, d.h. $alpha = 1$. Bei den (salzartigen) Hydroxiden der
Alkalimetalle (MOH) liegt das #ce("OH−") Ion bereits als Gitterbaustein vor. Die Konzentration der
#ce("OH−") Ionen stimmt also mit der aus der gelösten Stoffmenge berechneten Ausgangskonzentration
$c_0$ (MOH) überein:

#align(center, ce("c(OH−) = c_0 (MOH) => pOH = -log(c_0 (HA))"))

Der zugehörige pH-Wert ergibt sich über das Ionenprodukt des Wassers mithilfe des $"pK"_W$-Werts:
#align(center, ce("pH = pK_W - pOH"))
#align(center, ce("pH = 14 - pOH") + " (bei 25 °C)")

#figure(
  ctable(
    cols: "ccc",
    table.header([], [Säure], [Base]),
    [Stark],
    [$"pH" = -lg(c_0 ("HA"))$],
    [$"pOH" = -lg(c_0 ("B"))$],
    [Schwach],
    [$"pH" = 1/2 dot ("pK"_S - lg(c_0 ("HA")))$],
    [$"pOH" = 1/2 dot ("pK"_B - lg(c_0 ("B")))$],
  ),
  caption: "Formeln um den pH-Wert von starken sowie schwachen Säuren und Basen zu berechnen",
)

// == Ionenprodukt von Wasser
// - Brønsted und Lewis Definition
// - pH-Wert
== Puffer
Ein Puffer ist eine Lösung, die gleichzeitig Säure oder Base neutralisieren kann. Das geschieht
durch Kombination einer schwachen Säure/Base mit ihrem Salz.
$
  "pH" = "pK"_A + log(([S]_0)/(["HA"]_0))
$

