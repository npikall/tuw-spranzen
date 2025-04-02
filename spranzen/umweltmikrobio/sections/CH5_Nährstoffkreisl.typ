#import "../common.typ":*
= Nährstoffkreislauf und Microbial loop
<nährstoffkreislauf-und-microbial-loop>

== Kreisläufe
<kreisläufe>
=== Kurzgeschlossener Nährstoffkreislauf
- Nährstoffe zu Großteil in der Biomasse gespeichert nicht in Boden
- 80% der toten Biomasse wird wieder aufgenommen
- 20% gehen verloren
- keine Senken (Speicher)

=== Gebrochener Nährstoffkreislauf
- tote Biomasse wird nur langsam abgebaut
- Nährstoffe speichen sich in Senken

/ Metabolismus: chemische Umwandlungen von Substanzen in Lebewesen
/ Katabolismus: Abbau von Stoffwechselprodukten (Energiegewinnung)
/ Anabolismus: Aufbau von Stoffwechselprodukten (Energieverbrauch)
/ Dissimilation: Abbau von Stoffen zur Energiegewinnung (Atmung, anaerobe und aerobe)
/ Assimilation: Aufbau körpereigener Stoffe aus Nährstoffen

== Kohlenstoffkreislauf
<kohlenstoffkreislauf>
Gesamtheit aller Auf-, Um- und Abbauprozesse, durch die Kohlenstoff und seine Derivate umgesetzt werden.
Vorwiegend in Form von #ce("CO2"). Ist verbunden mit dem Sauerstoffkreislauf und dem Energiekreislauf.

Die *wichtigsten Wege* der Zirkulation sind
- Assimilation (#ce("CO2 -> org. C"))
- Respiration (#ce("org. C -> CO2"))

Die *wichtigsten C Senken* sind:
- Sedimente in der Tiefsee
- Fossile Brennstoffe
- Karbonate (i.d. Hydro-, Bio- und Lithosphäre)

#figure(
  diagram(
    ..digram-style,
    node((1,0), "Atmosphäre", name: <atmo>),
    node((0,1), "Biosphäre", name: <bio>, fill: green),
    node((2,1), "Hydrosphäre", name: <hydro>, fill: blue.lighten(10%)),
    node((1,2), "Lithosphäre", name: <litho>, fill: rgb("#c89a2e")),
    edge(<atmo>, <bio>, "<|-|>", label: "Assimilation,\nDissimilation"),
    edge(<hydro>, <atmo>, "<|-|>", label: [Austausch von #ce("CO2")]),
    edge(<litho>, <hydro>, "-|>", label: "Lösung von Carbonaten", label-side: right),
    edge(<bio>, <litho>, "-|>", label: "Kalkbildung", label-side: right),
    edge(<atmo>, <litho>, "-|>", label: align(center)[Bindung von #ce("CO2")\ an Carbonaten], label-side: center),
  ),
)

MO als Destruenten schließen den Kohlenstoffkreislauf ab.

== Stickstoffkreislauf
<stickstoffkreislauf>
#missing[]

== Phosphorkreislauf
<phosphorkreislauf>
#missing[]
== Schwefelkreislauf
<schwefelkreislauf>
- Hauptquellen für Einschleußung in Stoffwechsel sind lösliche Mineralien (#ce("So4^2-") aus #ce("CaSO4"), #ce("MgSO4")).
- Wichtig im Energiestoffwechsel von MO
- Anaerob #ce("H2S") mit Eisen zu unlöslichem Eisensulfid

== Microbial loop
<microbial-loop>
Der Microbial Loop beschreibt die Rückführung gelöster organischer Substanz (DOM) in aquatische Nahrungsnetze durch die Aufnahme von heterotrophen Bakterien, die wiederum von Flagellaten und Zooplankton gefressen werden. Dadurch wird organischer Kohlenstoff, der sonst verloren ginge, in die höhere trophische Ebene integriert und für das gesamte Ökosystem nutzbar gemacht.

/ DOM: Dissolved Organic Matter
/ POM: Particulate Organic Matter
- DOM wird durch Exsudation oder Autolyse freigesetzt und von Bakterien aufgenommen.
- POM wird durch Exoenzyme in DOM umgewandelt.
- DOM und POM dienen als Nahrungsquelle für Flagellaten und Zooplankton.
- Organische Substanz gelangt so zurück in die Haupt-Nahrungsketten des Gewässers.
