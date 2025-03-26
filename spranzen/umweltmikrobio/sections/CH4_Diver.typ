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
Eine schwefelfreie grüne Bakterie. *3 Familien* #sym.arrow *6 Gattungen*.
Ist die älteste photosynthetische Entwicklungslinie. Sie leben in heißen
Quellen und bilden dicke Bakterienmatten.
- sind *Gram-negativ*
- bilden fädige Zellketten
- betreiben *Photosynthese*
- Wachstum ist photoheterotroph sowie photoautotroph möglich

=== Phylum: Deinococcus-Thermus
*2 Familien* #sym.arrow *6 Gattungen*; sind nicht thermophil, sind resistent
gegen hohe Intensitäten ionisierender Strahlung, *mehrschichtige Zellwand*,
mehrere *DNA-Reparatursysteme* und vierfaches *Nukleoid*.
Schlüsselgattung *Thermus* hingegen ist thermophil, aerob, chemoorganotroph und hat eine
hitzestabile DNA Polymerase.

=== Phylum: Spirochaeta
=== Phylum: Chlorobi
=== Phylum: Flavobacteria & Bacteroidetes
=== Phylum: Chlamydiae
=== Phylum: Cyanobacteria
=== Phylum: Firmicutes & Actinobacteria
=== Phylum: Proteobacteria

== Eukaryonten (Algen, Protozoen, Pilze)
<eukaryonten-algen-protozoen-pilze>

=== Phylum: Crenarchaeota
=== Phylum: Euryarchaeota

== Viren
<viren>
