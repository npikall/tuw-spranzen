#import "../common.typ":*

= Diversität von MO
<diversität-von-mo>

MO haben ein geringes Ausmaß ($upright(mu m)$ Bereich) und zeichnen sich durch
ihre Einzelligkeit aus.

Man kann folgende Gruppen unterscheiden:
- Bakterien (vollständige MO)
- Archaea (vollständige MO)
- Eukaryoten (mehrere Gruppen sind teil der MO)
- Viren (keine echten MO, da kein eigener Stoffwechsel)

*Artkonzept bei prokaryotischen Arten:*
- monophyletischer und genomisch kohärenter Cluster von Einzelorganismen.
- paarweise genomische DNA-DNA Hybridisierung
- hohe phänotypische Konsistenz

*Artdefinition bei Bakterien:*
- Bakterien Arten sind oft schwer zu unterscheiden
- phänologische Ähnlichkeit
- Genaustausch auch über Artgrenzen hinaus
- Defintion einer Bakterienart
  - Phylogenetische Verwandtschaft (beistzen gleichen Kerngenpool)
  - Phänologische Ähnlichkeit (gleiche Merkmale und gleich Ökologische Niesche)

== Prokaryonten (Bakterien und Archae)
<prokaryonten-bakterien-und-archae>
=== Aufbau einer Bakterienzelle

// Change color of annotations to black
#let original = read("../assets/aufbau-bakterie.svg")
#let changed = original.replace(
  "#fff",
  black.to-hex(),
)

#figure(
  image(bytes(changed), width: 40%),
  caption: [Aufbau einer Bakterienzelle],
)
Weiters unterscheidet man ihre Formen nach Kokken, Bazillen, Knospenden Bakterien und ander Formen.

=== Drei älteste Bakteriengruppen
Aquificae, Thermodesulfobacteria und Thermotogae. Diese sind im allgemeinen
sehr Hitzebeständig, haben eine genetische Verwandtschaft zu Archaeae und Leben
in extremen Habitaten. *3 Familien* #sym.arrow *19 Gattungen*
#figure(
  table(
    columns: 4,
    table.hline(),
    [],
    [Aquificae],
    [Thermotogae],
    [Thermodesulfobacteria],
    table.hline(),
    [Temperatur],
    [$>80degree C$],
    [$approx 80degree C$],
    [$approx 70degree C$],
    [Sauerstoff],
    [mikroaerophil],
    [anaerob],
    [strikt anaerob],
    [Energie],
    [chemolithotroph],
    [chemoorganotroph],
    [Sulfatreduzierer],
    table.hline(),
  ),
  caption: [Eigenschaften der drei ältesten Bakteriengruppen.],
)
=== Chloroflexi
#gc.info(title: "Chloroflexi")[
  #show: rest => columns(2, gutter: 5pt, rest)
  *3 Familien #sym.arrow 6 Gattungen*

  *Schlüsselgattungen:*
  - Chloroflexus
  - Heliothrix
  - Oscillochloris
  #colbreak()
  *Kennzeichen dieser Gruppe:*
  - Älteste photosynthetische Entwicklungslinie
  - Leben in heißen Quellen
  - Bilden dicke Bakterienmatten
]
Eine schwefelfreie grüne Bakterie. *3 Familien* #sym.arrow *6 Gattungen*.
Ist die älteste photosynthetische Entwicklungslinie. Sie leben in heißen
Quellen und bilden dicke Bakterienmatten.
- sind *Gram-negativ*
- bilden fädige Zellketten
- betreiben *Photosynthese*
- Wachstum ist photoheterotroph sowie photoautotroph möglich

=== Phylum: Deinococcus-Thermus
#gc.info(title: "Deinococcus-Thermus")[
  #show: rest => columns(2, gutter: 5pt, rest)
  *2 Familien #sym.arrow 6 Gattungen*

  *Schlüsselgattungen:*
  - Deinococcus
  - Thermus
  #colbreak()
  *Kennzeichen dieser Gruppe:*
  - Leben in heißen Quellen
  - Besitzen eine *mehrschichtige Zellwand*
]
*2 Familien* #sym.arrow *6 Gattungen*; sind nicht thermophil, sind resistent
gegen hohe Intensitäten ionisierender Strahlung, *mehrschichtige Zellwand*,
mehrere *DNA-Reparatursysteme* und vierfaches *Nukleoid*.
Schlüsselgattung *Thermus* hingegen ist thermophil, aerob, chemoorganotroph und hat eine
hitzestabile DNA Polymerase.

=== Phylum: Spirochaeta
#gc.info(title: "Spirochaeta")[
  #show: rest => columns(2, gutter: 5pt, rest)
  *3 Familien #sym.arrow 13 Gattungen*

  *Schlüsselgattungen:*
  - Spirochaeta
  - Treponema
  - Cristispira
  - Leptospira
  - Borrelia
  #colbreak()
  *Humanpathogene:*
  - Borrelia burgdorferi (Borreliose)
  - Treponema pallidum (Syphilis)
  - Leptospira-Arten

  Spiralige Form, morphologisch einzigartig, beweglich durch Endoflagellen.
]

=== Phylum: Chlorobi (grüne Schwefelbakterien)
#gc.info(title: "Chlorobi")[
  #show: rest => columns(2, gutter: 5pt, rest)
  *1 Familien #sym.arrow 6 Gattungen*

  *Schlüsselgattungen:*
  - Chlorobium
  - Prosthecochloris
  - Chlorochromatium
  #colbreak()
  *Kennzeichen dieser Gruppe:*
  - Leben planktonisch in *Seen*
  - Besitzen Gasvakuolen
  - Strikt anaerob
  - Obligate phototroph
]
#missing[]

=== Phylum: Flavobacteria & Bacteroidetes
#gc.info(title: "Flavobacteria & Bacteroidetes")[
  #show: rest => columns(2, gutter: 5pt, rest)
  *4 Familien #sym.arrow 28 Gattungen*

  *Schlüsselgattungen:*
  - Bacteroides
  - Rickenalla
  - Prevotella
  - Flavobacteria
  #colbreak()
  *Kennzeichen dieser Gruppe:*
  - Gram-negativ (meist stäbchenförmig)
  - im Verdauungstrakt von Menschen (bis zu $10^11$ Zellen pro g Stuhl)
  - opportunistische Krankheitserreger
  - Nachweis von fäkalen Verschmutzungen
]

=== Phylum: Chlamydiae
#gc.info(title: "Chlamydiae")[
  #show: rest => columns(2, gutter: 5pt, rest)
  *4 Familien #sym.arrow 7 Gattungen*

  *Schlüsselgattungen:*
  - Chlamydia

  Gram-negativ, geringste physiologische Fähigkeiten in Gruppe der Bakterien.
  #colbreak()
  *Humanpathogene:*
  - Chlamydia trachomatis (Augen, Genitalbereich)
  - Chlamydia psittaci (Psittakose)
  - Chlamydia pneumoniae (Atemwege)
]

=== Phylum: Cyanobacteria
#gc.info(title: "Cyanobacteria")[
  #show: rest => columns(2, gutter: 5pt, rest)
  *7 Familien #sym.arrow 54 Gattungen*

  *Schlüsselgattungen:*
  - Synechococcus
  - Oscillatoria (Spirulina Nahrungsergänzungsmittel)
  - Nostoc (in Süßwasser)
]
=== Phylum: Firmicutes & Actinobacteria
#gc.info(title: "Firmicutes")[
  #show: rest => columns(2, gutter: 5pt, rest)
  *33 Familien #sym.arrow >232 Gattungen*

  *Humanpathogene:*
  - Bacillus
  - Clostridium
  - Listeria
  - Staphylococcus
  #colbreak()
  *Allgemein:*
  - Gram-positiv
  - meist chemoorganotroph
  - teilweise pathogen
  - ökolog., techn. & medizin. Bedeutung
]

#gc.info(title: "Actinobacteria")[
  #show: rest => columns(2, gutter: 5pt, rest)
  *44 Familien #sym.arrow >170 Gattungen*

  *Humanpathogene:*
  - Mycobacterium (Tuberkulose, Lepra)
  - Corynebacterium (Diphtherie)

  #colbreak()
  *Allgemein:*
  - meist Stäbchen oder filamentös
  - Bildung von Endo- und Exosporen
  - wichtige Antibiotika Resource
  - vorwiegend in Boden und Gewässern
]

=== Phylum: Proteobacteria
#gc.info(title: "Proteobacteria")[
  #show: rest => columns(2, gutter: 5pt, rest)
  *84 Klassen #sym.arrow >530 Gattungen*

  *Humanpathogene:*
  - Escherichia coli
  - Salmonella
  - Vibrio cholerae
  - Helicobacter pylori
  #colbreak()
  *Allgemein:*
  - größte und vielfältigste Gruppe
  - Gram-negativ
  - Peptidoglykan-Schicht
  - Lipopolysaccharidemembran (zweite Membran)
  - medizin., industrielle und landwirtschaftliche Bedeutung
]

== Archaea
<archaea>

=== Phylum: Crenarchaeota
#gc.info(title: "Crenarchaeota")[
  *Schlüsselgattungen:*
  - Sulfolobus
  - Acidianus
  - Thermoproteus
  - Pyrodictium
  - Pyroclobus
  #missing[]
]
// #missing[]
=== Phylum: Euryarchaeota
#gc.info(title: "Euryarchaeota")[
  *Schlüsselgattungen:*
  - Halobacterium
  #missing[]
]
// #missing[]
== Viren
<viren>
=== Allgemeine Kennzeichen von Viren
- biologische Objekte an der Grenze des Lebendigen
- obligat parasitisch
- kein eigener Stoffwechsel
- Virusvermehrung erfolgt in Wirtszelle

*Aufbau von Viren:*
- außerhalb von Zellen _Virionen_ genannt
- virals Genom im Zentrum
- Capsid umgibt Erbgut
- Lipidmembran bei behüllten Viren

#figure(
  image("../assets/aufbau-virus.png", width: 50%),
  caption: "Aufbau eines Viruses",
)

=== Das Capsid
Das Capsid bildet die *äußerste Schicht* bei unbehüllten Viren. Es hat die Funktion, das *Genom zu schützen* und stellt bei unbehüllten Viren den Kontakt zu Wirtszelle her und befördert das Genom in die Zelle.

=== Die Virus-Hülle
Falls vorhanden, dann eine doppelschichtige Membran.
- Lippiddoppelschicht: stammt von Plasmamembran der Wirtszelle.
- Virale Membranproteine: gro0e Anzahl, verdrängen wirtseigene Membranproteine
- Funktion: Schutz, Bindung an Wirtszelle, Fusionierung mit Plasmsmembran, Bildung neuer Varianten durch mutierte Hüllproteine

=== Virusklassifizierung
#figure(
  table(
    columns: 3,
    table.hline(),
    table.header([Gruppe], [Eigenschaften], [mRNA Produktion]),
    table.hline(),
    [I],
    [Doppelstrang DNA],
    [mRNA direkt von DNA Vorlage geschrieben],
    [II],
    [Einzelstrang DNA],
    [DNA zuerst in doppelstrang Form bevor zu RNA übersetzt],
    [III],
    [Doppelstrang RNA],
    [mRNA übersetzt von RNA Genom],
    [IV],
    [Einzelstrang RNA (+)],
    [Genomfunktion als mRNA],
    [V],
    [Einzelstrang RNA (-)],
    [mRNW von RNA Genom abgeleitet],
    [VI],
    [#line(length: 2cm, stroke: red)],
    [#line(length: 2cm, stroke: red)],
    [VII],
    [#line(length: 2cm, stroke: red)],
    [#line(length: 2cm, stroke: red)],
    table.hline(),
  ),
  caption: [Baltimore Klassifikation von Viren],
)<tab-baltimore>

=== Vermehrung von Viren <vermehrung-von-viren>
+ Anlagerung (an Wirtszelle)
+ Eindringen
+ Uncoating (Freisetzung des Genoms)
+ Vermehrung des Genoms im Zytoplasma oder Zellkern
+ Zusammenbau
+ Freisetzung
=== Spezialfälle von Viren
- Risenviren
- Prionen (infektiöse Proteine, unempfindlich gg. UV-Strahlung und Hitze)
- Viroide (kurzer RNA Strang, keine Proteine oder Lipide)
- Defekte Viren

== Eukaryonten (Algen, Protozoen, Pilze)
=== Protozoen
*Kennzeichen von Protozoa:*
- eukaryotischer Zellbau (meist einzellig)
- freilebend und parasitär
- meist feuchte Habitate
- Lebensweise: heterotroph, autotroph, mixotroph, aerob oder anaerob
- Vermehrung asexuell und sexuell

*Klassifikation tierischer Protisten:*

#figure(
  table(
    columns: 3,
    table.hline(),
    table.header([Class], [Characteristic], [Example]),
    table.hline(),
    [Flagellates],
    [motile, one or more flagella],
    [Giardia],
    [Ciliates],
    [motile, covered in many short cilia],
    [Paramecium],
    [Amoebae],
    [motile, move with cytoplasmic extensions],
    [Amoeba],
    [Sporozoa],
    [adult is not motile; many are parasites; some form spores],
    [Toxoplasma, Plasmodium],
    table.hline(),
  ),
)

*Fortbewegung bei Protozoa:*
- Flagellen (Schwanz) rotierende Bewegung
- Cilien (Haar) schlagende Bewegung

=== Schleimpilze
*Charakeristika:*
- Polyphyletische Gruppe
- Heterotrophe Lebensweise
- Habitat: feuchte Umgebung (Boden, Gras, ...)
- Vermehrung: asexuell und sexuell (Sporen in Sporangien)
- keine Zellwand in vegetativer Lebensphase
- ähneln sowohl Protozoen als auch Pilzen

*Dictyostelimycota - zelluläre Schleimpilze:*
- Bildung eines Pseudoplasmodiums (keine Verschmelzung der Einzelzellen)
- Ernährung phagothroph (Bakterien)
- Beispielgattung Dictyostelium

*Myxomycota - plasmodiale Schleimpilze:*
- Bilden echtes Plasmodium (Verschmelzung der Einzelzellen)
- Ernährung phagothroph (Bakterien)
- Beispielgattung Physarum

=== Algen
*Allgemein:*
- einzellig oder mehrzellig
- autotroph
- manche besitzen Flagellen
- Zellwände aus Cellulose, teilweise Pektin
- feuchte Habitate (wasserlebende und terrestrische Spezies)
- Fortpflanzung: asexuell und sexuell, teilweise im Generationenwechsel
Algen sind keine einheitliche Gruppe von Organismen. Sieben Abteilungen von
weitläufig verwandten Organismen werden als Algen bezeichnet. Die wichtigsten
3 werden hier vorgestellt:

#gc.info(title: "Euglenophyta")[
  #show: rest => columns(2, gutter: 5pt, rest)
  - ursprünglichste Abteilung der Algen
  - Einzellig
  - autotroph oder heterotroph
  - 1-3 Flagellen
  - pulsierende Vakuole (zur Osmoregulation)
  #colbreak()
  - Photorezeptor
  - keine Zellwand stattdessen Membran
  - Reservestoffe Kohlenhydrate
  - hauptsächlich im Süßwasser
  - Fortpflanzung: asexuell
]

#gc.info(title: "Pyrrophyta - Dinoflagellaten")[
  #show: rest => columns(2, gutter: 5pt, rest)
  - Einzellig
  - autotroph und heterotroph
  - 2 Flagellen
  - Zellwand aus Cellulose
  #colbreak()
  - Reservestoffe Stärke
  - Fortpflanzung: asexuell
  - Habitat: hauptsächlich Salzwasser, manche Süßwasser
  - einige sind biolumineszent
  - manche sind giftig (Alexandrium, Gambierdiscus, Dinophysis)
]

#gc.info(title: "Chlorophyta - Grünalge")[
  #show: rest => columns(2, gutter: 5pt, rest)
  - größte Gruppe der Algen
  - Einzellig auch Koloniebildend
  - autotroph z.T. parasitär
  - Zellwand innen Cellulose aussen Pektin
  #colbreak()
  - Reservestoffe Stärke
  - Fortpflanzung: asexuell und sexuell
  - Habitat: hauptsächlich Süßwasser, einige Salzwasser und feuchte Erde
]

=== Pilze
*Morphologie von Pilzen:*
- Hyphe (Grundelement von filamentösen Pilzen)
- Myzel (Geflecht von Hyphen)
- Pilzthallus (Gesamtheit des Myzels, aka. Pilzkolonie)
- Hefe (Grundelement von einzelligen Pilzen)

Dimorphe Formen können zwischen filamentösem und einzelligem Wachstum wechseln.

*Ökologie von Pilzen:*
- Pilze als Destruenten
- Flechten (Symbiose zwischen Pilzen und Algen)
- Mycorrhiza (Symbiose zwischen Pilzen und Pflanzen)

