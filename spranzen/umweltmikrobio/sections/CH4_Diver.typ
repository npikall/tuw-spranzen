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
#missing[]
=== Das Capsid
#missing[]

=== Die Virus-Hülle
#missing[]

=== Virusklassifizierung
#missing[]

=== Vermehrung von Viren
#missing[]

== Eukaryonten (Algen, Protozoen, Pilze)
=== Protozoen
*Kennzeichen von Protozoa:*

*Klassifikation tierischer Protisten:*

=== Schleimpilze
=== Algen
=== Pilze
