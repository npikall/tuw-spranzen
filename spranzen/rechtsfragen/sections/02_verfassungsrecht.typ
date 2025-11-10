#import "../common.typ": *

= Umwelt- und Klimaschutz im Verfassungsrecht
== Kompetenzverteilung
#figure(diagram(
  ..diagram-style,
  // debug: 1,
  spacing: 1em,
  let node = node.with(width: 4.8cm),
  node((0, 0), "Überstaatliches Recht"),
  node((0, 1), "Innerstaatliches Recht"),
  node((0, 2), "Verfassungsrecht"),
  node((0, 3), "Gesetz (einfach)"),
  node((0, 4), "Verordnung"),
  node((0, 5), "Bescheid, Erkenntnis, Urteil"),
  let node = node.with(width: 4cm, fill: maroon.lighten(60%)),
  node((1, 2), "BVG Nachhaltigkeit"),
  node((1, 3), "ForstG, WRG"),
  node((1, 4), "Chemikalien VO"),
  node((1, 5), "Beseitigungsauftrag"),

  for idx in range(5) {
    edge((0, idx), (0, idx + 1), "-|>")
  },
  for idx in range(2, 6) {
    edge((0, idx), (1, idx), "-|>")
  },
))


== Grundrechte
== Staatsziele
== Rechtsschutzdefizite
