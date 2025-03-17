#import "../common.typ":*
= Einführung
<einführung>
== Mikroorganismen (MO)
<mikroorganismen-mo>
=== Definition und Hintergrund
<definition-und-hintergrund>

MO sind mit $<150 upright(mu)"m"$ definiert. Sie sind im Mikro-/Nanometer Bereich angesiedelt.

/ Mikrobiologie: Analyse der dominanten Lebensform am Planeten
/ Mikroben: dominante Biomassen und Prozesse
/ Prokaryoten: Kein Zellkern, keine Membranen (Bakterien, Archaeen)
/ Eukaryoten: Zellkern, Membranen (Pilze, Algen, Protozoen)
/ Biomoleküle: RNA, DNA, Proteine, Lipide

*Mikrokosmos:*
- syntrophe Interaktionen (bedeutet "nähren")
- Zell-Zell Interaktionen
- Zell-Umwelt Interaktionen
- häufig Biofilmstrukturen
- großes Oberflächen-Volumen Verhältnis

Die Natur kultiviert "Mischkulturen" und nicht "Reinkulturen". Mikrobielle Gemeinschaften beeinflussen das tägliche Leben, bsp. das intestinale Mikrobiom ist für die Verdauung essentiell.

*Reinkulturen* werden im Labor erzeugt, und haben eine große Bedeutung für:
- experimentelle Arbeit
- Model Organismen
- Biotechnologie und Fermentation
- Diagnostische Arbeit
Es ist ein großer Aufwand reinkulturen zu erhalten.

*Charakteristika des mikrobiellen Lebens:*
#columns(2)[
  + Metabolismus
  + Wachstum
  + Evolution
  #colbreak()
  Weitere Eigenschaften sind:
  - Kommunikation
  - Mobilität
  - Differenzierung
  - genetischer Austausch
]

*Abiotische vs. biotische Kompartments:*

Die 5 generellen Merkmale des Lebens:
- *Form/Organistaion* spezifische Organisation anhand von Biomolekülen und definierte Grenzen (Aussen/Innen)
- *Metabolismus* definierter Energie- and Massefluss
- *Produktivität* Wachstum- and Reproduktion
- *Erregbarkeit* Reaktion gegenüber Umweltreizen
- *Evolution* Veränderung in Raum und Zeit

*Sind Viren Organismen? #sym.arrow Nein*
- Größe im Nanometerbereich
- *kein* Metabolismus
- benötigen Wirtszelle für Replikation

*Effekte von Viren auf Wirtszelle:*
- lytische Infektion: Zerstörung der Wirtszelle
- persistierende Infektion: Wirtszelle bleibt erhalten
- latente Infektion: Virusgenom wird in Wirtszelle integriert
- Transformation: Wirtszelle wird durch Virusgenom verändert (Tumorzelle)

*Baltimore Classification* (virale Genome):
#missing[Grafik aus dem Skript]

=== Evolution
<evolution>
#figure(
  diagram(
    node-stroke: 0.7pt,
    node-corner-radius: 5pt,
    node-fill: blue.lighten(50%),
    node((0,0), [Bakterien (4 Mrd. J)]),
    edge("-|>"),
    node((1,0), [Eukaryoten (2 Mrd. J)]),
    edge("-|>"),
    node((0,1), [Algen (1.3 Mrd. J)]),
    edge("-|>"),
    node((2,0), [Schalentier (0.5 Mrd. J)]),
    edge("-|>"),
    node((1,1), [Pflanzen (0.5 Mrd. J)]),
    edge("-|>"),
    node((2,1), [Tiere (0.5 Mrd. J)]),
  ),
  caption: [Mikroorganismen besiedeln die Erde seit fast 4 Mrd. Jahren],
)

Mikrobiota in der Umwelt:
- Flüsse, Seen, Quellen
- Grundwasser, Boden, Sedimente
- Luft, Ozeane, ...

Metabolische Möglichkeiten der Energiekonservierung:
- anerobe
- mikroaerophil
- aerob
Energiequellen:
- Licht
- organische Stoffe
- anorganische Stoffe

== Vorkommen und Bedeutung
<vorkommen-und-bedeutung>
=== Umwelt und Biospäre
<umwelt-und-biospäre>
Mikrobielle Zellzahlen in den Top 5 Habitaten:
- Tiefseeuntergrund $4 dot 10^29$
- Boden $3 dot 10^29$
- Tiefer continentaler Untergrund $3 dot 10^29$
- Ozeane $1 dot 10^29$
- Oberer Ozeanische Sedimente $5 dot 10^28$

Biofilm Vorkommen:
- an Grenzflächen im Meer
- in Eukaryoten
- in Grundwasserleitern und Abwasserreinigungsanlagen

=== Gesundheitliche Aspekte
<gesundheitliche-aspekte>

Die Top 3 Todesursachen um 1900 waren noch Infektionskrankheiten. Heute sind es Herz-Kreislauf-Erkrankungen.

*Hauptübertragungswege:*
- Person zu Person (Tröpfcheninfektion)
- Vehikel basierend (Wasser, Nahrung)
- Vektor basierend (Insekten)

Die Übertragungswege beim Vehikel Wasser können sowohl *zoonotisch* (vom Tier) als auch *anthroponotisch* (vom Mensch) sein. Die Infektionen können durch Wassersicherheits Management minimiert werden.

/ Endemisch: ständig in eine Endemiegebiet vorhanden
/ Epidemisch: zeitlich und räumlich begrenztes massenhaftes Auftreten
/ Pandemisch: weltweit Auftetende Epidemie

*Wichtge Infektionskrankheiten:*
- verursacht durch Bakterien
- verursacht durch Viren
- verursacht durch Protisten
- verursacht durch Pilze

*Humanes Mikrobiom* (positive Effekte):
- unterstütz bei Verdauung
- Synthese von Vitaminen und anderen Nährstoffen
- Art des Darmmikrobioms #sym.arrow direkte gesundheitliche Auswirkung

=== Biotechnologie
<biotechnologie>
MO haben in fast allen Bereichen von Industrie und Gewerbe eine Bedeutung.
*Negativ*:
- Wachstum in fast allen Kompartimenten mit Wasser (Korrosion, Fowling)
*Positiv*:
- relative _low-cost_ Produktion mit MO (Enzyme, chemische Rohstoffe, ...)
- Biotechnologie (Medikamente, Insulin, ...)
- Umweltbiotechnologie #sym.arrow Umweltschutz (Abwasserreinigung, ...)

Beispiel Ethanolerzeugung:
#figure(
  diagram(
    node-stroke: 0.7pt,
    node-corner-radius: 5pt,
    spacing: 1em,
    node-fill: blue.lighten(50%),
    node((0,0), name: <cell>, [Cellulose]),
    node((0,2), name: <corn>, [Maisstärke]),
    node((1,1), name: <gluc>, [Glucose]),
    node((2,1), name: <eth>, [Ethanol]),
    edge(<cell>, <gluc>, "-|>", bend: -20deg),
    edge(<corn>, <gluc>, "-|>", bend: 20deg),
    edge(<gluc>, <eth>, "-|>", label: "Fermentation", label-sep: 10pt),
  ),
)
=== MO-freie Umgebungen
<mo-freie-umgebungen>
Sterile Kompartimente in der Umwelt sind die Ausnahme!
- sterile Körperkompartimente
- heiße Kompartimente
- künstlich sterile Kompartimente

Trinkwasser ist nicht steril. Wassereigene Mikrobiota gehören zum natureigenen Bestandteil.

In der Praxis ist eine ausreichende Sterilität gegeben, wenn die Kontaminationswahrcheinlichkeit ausreichend gering ist (unter $10^(-6)$ liegt).

Es gibt viele verschiedene Methoden zur Desinfektion bzw. Sterilisation von Oberflächen und Materialien.
#figure(
  diagram(
    node-corner-radius: 5pt,
    node-stroke: 0.7pt,
    node-fill: blue.lighten(50%),
    node((0,0), [Chemisch]),
    node((2,0), [Physikalisch]),
    node((1,1), [Trennung\ (Filtration)]),
    node((2,1), [Strahlen\ (UV)]),
    node((3,1), [Wärme\ (Ausglühen)]),
    edge((2,0), (1,1), "-|>"),
    edge((2,0), (2,1), "-|>"),
    edge((2,0), (3,1), "-|>"),
    node((-1,1), [Fluide\ (Alkohole)]),
    node((0,1), [Gase\ (Ozon)]),
    edge((0,0), (-1,1), "-|>"),
    edge((0,0), (0,1), "-|>"),
  ),
)

== Wissenschaftliche Pioniere
<wissenschaftliche-pioniere>
=== Leuwenhoek, Koch und Pasteur
<leuwenhoek-koch-und-pasteur>
- Robert Hooke (1664) benutzte ein Mikroskop
- Van Leuwenhoek (1684) benutzte ein Mikroskop
#sym.arrow Optische Mikroskope nur bis zu einer Auflösung von $0.1 upright(mu m)$ oder $100 "nm"$

Meilensteine in der Kultivierung und Reinkultur von MO:
- Louis Pasteur (Bedeutung der Strerilisation, Fermentation, ...)

=== Beijerink und Winogradsky
<beijerink-und-winogradsky>
=== Avery MacCarty, Mullis, Woese
<avery-maccarty-mullis-woese>
