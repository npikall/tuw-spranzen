#import "../common.typ":*
= Altfragen
<altfragen>

#let antwort = antwort.with(display: true)

== Altfragen von 2024
#frage[
  Was ist die Bedeutung von Phosphor in der Umweltmikrobiologie?
]
#antwort[
  Phosphor ist wichtigstes wachstumslimitierendes Substrat. Es spielt eine
  zentrale Rolle beim Energiestoffwechsel (ATP) und ist Bestandteil der
  DNA und der Zellmembran. Phosphat ($P O_4^(3 -)$) ist dabei die
  relevanteste Form.
]
#frage[
  Beschreiben Sie den aeroben Abbau von aromatischen Kohlenwasserstoffen.
]
#antwort[
  Metabolisierung in 3 Stufen, wobei das Grundmuster des aeroben abbaus
  bei monocyklischen Aromaten, Phenolen und Carbonsäuren und des letzten
  Ringes beim Abbau von PAK gleich ist.

  + Benzolring, unter Verbrauch von Sauerstoff in Brenzkatechin,
    umgewandelt, das zwei benachbarte Hydroxylgruppen enthält.

  + Ring des Brenzkatechins wird unter Verbrauch von Sauerstoff zwischen
    den beiden Hydroxylgruppen oder zwischen einer OH-Gruppe und einem
    C-Atom gespalten.

  + Die offenkettigen Verbindungen werden weiter in Säuren und Aldehyde
    gespalten, die in den Stoffwechsel eingeschleust werden.

]
#frage[
  Was ist die Definition für #emph[Hazard] laut WHO?
]
#antwort[
  Biologische, chemische, physikalische oder radiologische Agenzien, die
  das Potenzial haben Schaden zu verursachen. (WHO 2006)
]
#frage[
  Beschreiben Sie die Mechanismen der mikrobiellen Korrosion von Stahl.
]
#missing[]
#frage[
  Welche sind die drei Hauptübertragungswege von Infektionserkrankungen?
]
#antwort[
  - Person zu Person (direkt, indirekt, airborne)
  - Vehikel basierend (waterborne, foodborne, airborne, soilborne)
  - Vektor basierend (anthropods/insects)

]
#frage[
  Was ist $mu_(upright("max"))$ und $K_s$ in der Wachstumskinetik?
]
#antwort[
  $K_s$ ist die Sättigungskonstante, Nährstoffkonzentration bei
  $mu = 0.5 dot.op mu_(upright("max")) quad [upright("mg") \/ upright("l")]$
  \
  $mu_(upright("max"))$ ist die maximale Wachstumsrate (Zunahme der
  Zellzahl/-masse pro Zeiteinheit ) \
  $ mu = mu_(upright("max")) frac(S, S + K_(S_(m a x))) $
]
#frage[
  Beschreiben Sie die Unterschiede zwischen kontinuierlicher Fermentation
  und Belebungsbecken?
]
#antwort[
  #strong[Kontinuierliche Fermentation:] Ein vollständig durchmischtes
  Becken, dem kontinuierlich Abwasser (Nährlösung) zufließt. Dort wachsen
  MO die das zugeführte Substrat verbrauchen und das System wieder
  verlassen. Gleichgewichtszustand, d.h. Konzentration im Ablauf bleibt
  gleich. Ist qR (Wachstumsrate der MO) größer als $mu_(m a x)$ dann
  werden MO ausgewaschen. Bei $0 < q R < mu_(m a x)$ ist das System
  selbstregulierend. \

  #strong[Belebungsbecken:] Beim Belebungsbecken wird qR und
  $mu_(upright("max"))$ entkoppelt, damit das Volumen des Beckens und die
  erforderliche Verweilzeit klein gehalten werden. Dies geschieht durch
  eine Rückführung der MO aus dem Ablauf einer kont. Fermentation in den
  belüfteten Reaktor. In der Praxis erfolgt das durch Abtrennung der
  Biomasse im Nachklärbecken oder auch Membranfiltration.
]
#frage[
  Charakterisieren Sie die Grün Alge.
]
#antwort[
  #strong[Grünalge:] (450 Gattungen, \>7500 Arten)
  - größte Gruppe innerhalb der Algen
  - Einzellig, auch koloniebildende Formen
  - Lebensweise autotroph (z.T. parasitär auf Landpflanzen)
  - Reservestoffe: Stärke gespeichert in Pyrenoiden
  - Beweglichkeit: manche Arten 1-2 Flagellen
  - Zellwand: innere Lage Zellulose, äußere Lage Pektin
  - Habitat: Süßwasser, einige marin, terrestrisch in feuchter Umgebung
  - Fortpflanzug: asexuell und sexuell

]
#frage[
  Beschreiben Sie die Unterschiede zwichen Katabolismus und Anabolismus.
]
#antwort[
  #strong[Katabolismus:] Abbau von Stoffwechselprodukten von komplexen zu
  einfachen Molekülen. Energiefreisetzende (exergone) Stoffumsetzungen.
  Dient zur Energiegewinnung, Lieferung von Baustoffen und der Entgiftung.
  \
  #strong[Anabolismus:] Ist die Gesamtheit der energieverbrauchenden
  (endergonen) Stoffumsetzungen und gleichzeitg der aufbauenden
  Stoffwechselreaktionen.
]
#frage[
  Erklären Sie Viroid, defekte Viren und Prionen.
]
#antwort[
  #strong[Viroide:] kurzer, zu einem Ring geschlossener RNA Einzelstrang
  (250-400 Basen). Freie DNA, keine Proteine oder Lipide. Replikation in
  Pflanzenzellen. \
  #strong[defekte Viren:] Nicht im Besitz aller Gene für einen
  vollständigen Infektionszyklus. Benötigen Helfervirus. Konkurenz um
  Replikationsapparat, Hüllproteine und Capsidproteine. \
  #strong[Prionen:] Infektiöse Proteine (falsch gefaltet). Verursachen
  spongiforme Enzephalopathien. Beispiel: Creutzfeld-Jakob, BSE, Scarpie.
  Unempfindlich gegenüber UV- und Gammastrahlen, Hitze und
  Desinfektionsmittel.
]
== Altfragen Spranzen
#fragen-counter.update(0)

#frage[
  Größenordnung (in Mikrometern): Viren, Bakterien, Pilze, Algen
]
#antwort[
  - Viren: $0,02 – 0,5mu m$
  - Bakterien: $0,2 – 5mu m$
  - Pilze (Hefe): $4 – 8mu m$
  - Algen:
    - Grünalge $1-10 mu m$
    - andere $2-200 mu m$
  - Amöben: $100 – 800mu m$

]
#frage[
  Wie kann man Mikroorganismen klassifizieren? Welche Kriterien stehen zur Verfügung und warum werden gerade diese Kriterien verwendet?
]
#antwort[
  #missing[]
]
#frage[
  Vorkommen von Prokaryoten und Größenordnung vom Gesamtvorkommen
]
#antwort[
  #missing[]
]
#frage[
  Grünalgen: Charakteristika und wofür werden sie genutzt?
]
#antwort[
  - größte Gruppe der Algen
  - Einzellig, auch koloniebildende Formen
  - Lebensweise autotroph (z.T. parasitär)
  - Reservestoffe: Stärke
  - Fortpflanzug: asexuell und sexuell
  - Habitat: Süßwasser, einige marin und terrestrisch
  - Zellwand aussen Cellulose, innen Pektin

]
#frage[
  Pilze: Rolle im Ökosystem und Bedeutung für Menschen
]
#antwort[
  - Pilze als Destruenten
  - Flechten (Algen + Pilze)
  - Mykorrhiza (Pflanzen + Pilze)
  - Bedeutung für den Menschen:
    - Lebensmittel (Pilze, Bier, Brot, Hefe)
    - Antibiotika
    - Biotechnologie

]
#frage[
  3 älteste Bakterienarten aufzählen und beschreiben
]
#antwort[
  Alle drei Gruppen sind im Allgemeinen sehr Hitzebeständig und sind mit Archeen verwandt.
  - *Aquificae* ($>80°C$, mikroaerophil, chemolithotroph)
  - *Thermotogae* ($approx 80degree C$, anaerob, chemoorganotroph)
  - *Thermodesulfobacteria* ($approx 70degree C$, strikt anaerob,
    Sulfatreduzierer)

]
#frage[
  Firmicutes beschreiben
]
#antwort[
  Siehe auch @prokaryonten-bakterien-und-archae
  - 33 Familien, >232 Gattungen
  - Gram positiv
  - meist chemoorganotroph
  - teilweise pathogen (Bacillus, Clostridium, Listeria)
  - ökol., techn. und medizinisch wichtig

]
#frage[
  Beschreiben Sie die Eigenschaften von Archaea und Eubacteria und ihre Unterschiede.

  Archaea: Eigenschaften und Unterschiede zu Eubacteria
]
#antwort[
  *Gemeinsamkeiten:*
  - Bakterien und Archeen sind 2/3 der Gruppen der MO
  - Einzeller
  - prokaryotischer Zellbau

  *Unterschiede:*
  - Bakterien kompexe Struktur, Archeen einfach
  - verschiedene Stoffwechselwege
  - Archeen können t.w. Methan synthesieren
  - Archeen haben nicht zwingend eine Zellwand
  - viele Archeen sind extremophil
  - keine Pathogene Archeen bekannt (? sus)

]
#frage[
  Wie vermehrt sich ein Virus?
]
#antwort[
  Siehe auch @vermehrung-von-viren
  + Anlagerung
  + Eindringen
  + Uncoating
  + Vermehrung
  + Zusammenbau
  + Freisetzung

]
#frage[
  4 Arten der Vireninfektion
]
#antwort[
  - *Lytische Infektion* Tod der Wirtszelle
  - *Persistierenden Infektion* Viren bleiben lange in der Zelle
  - *Latente Infektion* Viren präsent aber keine Symptome
  - *Transformation der Zelle* Entstehung von Tumorezellen

]
#frage[
  Welche Sicherheitsstufe braucht man im Umgang mit HI-Viren? Welche
  Sicherheitsvorschriften sind zu treffen?
]
#antwort[
  *Stufe 3* Hohes Risiko für Beschäftigte, geringes Risiko für die Bevölkerung. (Organismen die über Atemwege infizieren; z.B. Bacillus anthracis, Mycobacterium tuberculosis, HIV, SARS, Tollwut)

  *Vorschriften:*
  - Hände waschen
  - Arbeitsflächen desinfizieren
  - Zugang nur für Befugte
  - Arbeit an Sicherheitsbänken
  - Schutzimpfung empfohlen
  - filternde Lüftungsanlage, Notstrom
  - Autoklaven, Zugang über Schleußen
  - Müll und Abwasser sterilisieren
  - Schutzausrüstung tragen

]
#frage[
  Aufbau von Viren
  Warum sind Viren keine Organismen (4 Gründe)
]
#antwort[
  Siehe @viren
  - außerhalb der Zelle Virionen genannt
  - virales Genom im Zentrum
  - Capsid umgibt Erbgut
  - Lipidmembran bei behüllten Viren

  *Viren sind keine Organismen weil:*
  - kein eigener Metabolismus
  - Wirtszelle für Replikation notwendig
  - Bewegung erfolgt nur passiv
  - keine Reizbarkeit

]
#frage[
  Baltimore Klassifizierung von Viren
]
#antwort[
  Siehe @tab-baltimore in @viren.
  Unterteilung in 7 Klassen anhand des Virusgenoms.
  - Klassen 1-3 sind DNA-Viren
  - Klassen 4-7 sind RNA-Viren
  Viren besitzen Nukleinsäuren in Form von DNA oder RNA. Je nachdem, ob diese einzel- oder
  doppelsträngig vorliegt und anhand ihrer Polarität werden sieben Klassen unterschieden.
]
#frage[
  Was versteht man unter dem Yield-Koeffizient und was sagt dieser aus?
]
#antwort[
  Der Yield-Koeffizient (Y) oder auch Ausbeute-Koeffizient bezeichnet die Biomasseausbeute (Zuwachs an Biomasse, X) bezogen auf das verbrauchte Substrat (S)
  $
  Y = X/S
  $

  Der Rest (1-Y) wird zum Teil in nutzbare Energie als ATP und zum Teil in nicht nutzbare Energie (Wärme) übergeführt.
]
#frage[
  Definition: Anreicherungskultur und Reinkultur
]
#antwort[
  *Anreicherungskultur:*
  Wachstumsbedingungen, für einen Mikroorganismus oder eine Gruppe günstiger als für andere.

  Ziel: Anreicherung eines Organismus oder einer bestimmten Gruppe

  *Reinkultur:*
  Wachstum eines Klons von einem bestimmten Organismus unter Ausschluss jeglicher Individuen anderer Arten oder Stämme von Organismen erfordert Sicherstellung, dass die Kultur aus einer einzigen Zelle hervorgegangen ist
]
#frage[
  Schritte der Anzüchtung einer Kolonie
]
#antwort[
  #missing[#v(1cm)]
]
#frage[
  Zusammenhang: Wachstumsrate – Verdopplungszeit
]
#antwort[
  Die Verdopplungszeit hängt von der Wachstumsrate ab. Je höher die Wachstumsrate, desto
  kürzer die Verdopplungszeit. Ist die Wachstumsrate bekannt, kann man die
  Verdopplungsrate berechnen und andersherum.

  $
  t_"Verdopplung" = log(2)/log(a)
  $
  $
  f(t) = c_0 dot a^t
  $
]
#frage[
  Sterilisation in der Praxis
]
#antwort[
  Sterilisation kann zu 100% nicht erreicht werden. Daher eine Reduktion vermehrungsfähigen MO um bestimmten Faktor.
  Steril bedeutet $10^(-6)$ MO pro Fläche.
  Desinfektion bedeutet eine Reduktion der MO, sodass keine Infektion mehr erfolgen kann (5 Zehnerpotenzen).
]
#frage[
  Chemische Desinfektionsverfahren

  Reduktionsstufen bei der Desinfektion: gibt es eine allgemein gültige Regelung?
]
#antwort[
  Siehe @vorkommen-und-bedeutung

  - physikalische Verfahren
    - Dampfsterilisation
    - Heißluftsterilisation
    - Strahlungssterilisation
    - Plasmasterilisation
    - Sterilfiltration
  - chemische Verfahren
    - Nassantiseptik (Fluide)
    - Trockenantiseptik (Gase)

  Reduktionsstufen:
  Die Reduktionsstufen werden oft als Log-Reduktionsstufen angegeben. Eine log-Stufe
  bedeutet die Reduktion um eine 10er Potenz. Die zu erreichenden Reduktionsstufen können
  je nach Zielvorgaben unterschiedlich sein. Seifen haben ca. 2 log-Stufen. Medizinisch steril
  heißt log 7.
  - Sterilisieren: $10^6$
  - Desinfizieren: $10^5$

]
#frage[
  Heißluft/Dampfsterilisationsverfahren
]
#antwort[
  Sind physikalische Sterilisationsverfahren

  *Heißluftsterilisation (trockene Hitze):*
  - Oxidation intrazellulärer Zellbestandteile
  - weniger effizient (geringe Wärmeleitfähigkeit trockener Luft)
  - längere Einwirkdauer (bei 160-180°C für 30 – 120 Minuten)

  *Dampfsterilisation (feuchte Hitze):*
  - Denaturierung von Proteinen
  - Temperatur und Dauer hängen mit Resistenz der MO zusammen
  - 120°C, 2 bar, 20 Minuten

]
#frage[
  Erklären von PCR (inklusive Teilschritte)
]
#antwort[
  *PCR-Polymerase Kettenreaktion:*
  Polymerasen sind in allen Lebewesen vorkommende Enzyme. Ihre Funktion ist notwendig für die Vermehrung der Erbinformation.

  Vervielfachung eines kleinen Teils des Erbgutes. Anschließend Detektion und Identifikation der vervielfachten Produkte
  - Denaturierung: Aufspaltung der Doppelstrang-DNA in zwei Einzelstränge bei 90°C
  - Primerhybridisierung: Freie Primer docken bei 60°C an die Einzelstränge an
  - Amplifikation: Die Polimerase lagert bei 70°C am Ende der Primer die passenden Nukleotidbausteine an
  - Nun hat man zwei Doppelstränge und die PCR beginnt von vorne.

]
#frage[
  Arten der biologischen Abbaubarkeit
]
#antwort[
  Abbau ist ein Prozess, bei dem organische Chemikalien, durch Lebewesen oder Enzyme
  zersetzt werden.
  - *Biologisch leicht Abbaubar*
    - Enzymsystem vorhanden
    - Hoher Energiegewinn und Benefit für Baustoffwechsel
    - Geringer Aufwand für Nutzung
  - *Biologisch schwer Abbaubar*
    - zB. wegen geringer Konzentration, nur geringe Energieausbeute möglich.
    - Etablierung eines zielgerichteten Enzymsystems nicht möglich oder energetisch aufwendig.
    - Abbau durch Co-Metabolismus (für Zellen nutzloser Abbau der zufällig passiert).
  - *persistente Stoffe*
    - Inert, werden biologisch nicht abgebaut
    - Primärangriff oft chemisch/physikalisch

]
#frage[
  Aufbau Belebtschlammflocke
]
#antwort[
  Zusammenschluss aus:
  - MO (Bakterien, Protozoen)
  - "tote Partikel" (Detritus, anorganische Stoffe)
  - Enzyme (organische Stoffe, die biochemische Reaktionen ermöglichen)
  - Extrazelluläre Polymere Substanzen (EPS)

]
#frage[
  Wodurch unterscheidet sich eine kontinuierliche Fermentation grundlegend vom
  Konzept des Belebungsverfahrens in der Abwasserreinigung? Führen Sie die
  Auswirkungen des Unterschieds kurz aus
]
#antwort[
  #strong[Kontinuierliche Fermentation:] Ein vollständig durchmischtes
  Becken, dem kontinuierlich Abwasser (Nährlösung) zufließt. Dort wachsen
  MO die das zugeführte Substrat verbrauchen und das System wieder
  verlassen. Gleichgewichtszustand, d.h. Konzentration im Ablauf bleibt
  gleich. Ist qR (Wachstumsrate der MO) größer als $mu_(m a x)$ dann
  werden MO ausgewaschen. Bei $0 < q R < mu_(m a x)$ ist das System
  selbstregulierend. \

  #strong[Belebungsbecken:] Beim Belebungsbecken wird qR und
  $mu_(upright("max"))$ entkoppelt, damit das Volumen des Beckens und die
  erforderliche Verweilzeit klein gehalten werden. Dies geschieht durch
  eine Rückführung der MO aus dem Ablauf einer kont. Fermentation in den
  belüfteten Reaktor. In der Praxis erfolgt das durch Abtrennung der
  Biomasse im Nachklärbecken oder auch Membranfiltration.
]
#frage[
  Was sind die Unterschiede zwischen einem GAK-Filter (granulierter Aktivkohle) und
  einem BAK-Filter (biologisch aktivierte Aktivkohle). Diskutieren Sie kurz die
  Bedeutung der Unterschiede.
]
#antwort[
  Aktivkohle kann in granulierter Form, in Pellets, in Körnern, etc. vorkommen. Aktivkohle wird bei der Abwasserreinigung und Trinkwasseraufbereitung verwendet.

  Aktivkohle zur Adsorption von organischer Stoffen (Organische Stoffe werden an der Oberfläche der Aktivkohle angelagert)

  / GAK: Granuläre Aktivkohle , Nur adsorptive Prozesse
  / BAK: biologisch aktivierte Aktivkohle, Adsorptive und biologische Prozesse

]
#frage[
  Biologische Nitratreduktion in Trinkwasseraufbereitung
]
#antwort[
  #missing[]
]
#frage[
  Beschreiben Sie kurz mittels Skizze das „Schwanenhalsexperiment“ von Pasteur.
  Was wurde damit widerlegt?
]
#antwort[
  Pasteur goss eine nicht sterile Flüssigkeit in einen
  Kolben und dessen hals in einer Flamme zu
  einem Schwanenhals aus. Die Flüssigkeit wurde
  durch starkes Erhitzen sterilisiert und die Luft aus
  dem offenen Ende gequetscht. In der Biegung
  des Halses waren Staub und Mikroorganismen
  gefangen. Während die Flüssigkeit abkühlte,
  konnte kein Wachstum von Mikroorganismen
  festgestellt werden. Erst als der Kolben gekippt
  wurde, so dass die Flüssigkeit mit den
  Mikroorganismen und dem Staub in Kontakt kam, konnte nach kurzer Zeit Wachstum in der
  Flüssigkeit festgestellt werden.
  Er widerlegte damit die Urzeugertheorie.
]
#frage[
  Bedeutungen von Mikroorganismen für Umwelt
]
#antwort[
  - dominante Lebensform auf Planeten
  - Evolution des Lebens vorallem mikrobiell
  - überall besiedelt, auch extrem Habitate
  - essentiell für Gesundheit (Darmbiom)
  - biologische Abbauprozesse
  - Pathogenität

]
#frage[
  4 Phasen des Wachstums von Mikroorganismen
]
#antwort[
  Siehe @wachstum-und-wachstumskinetik
]
#frage[
  Charakteristika des mikrobiellen Lebens
]
#antwort[
  - Metabolismus
  - Wachstum/Replikation
  - Evolution
  - Kommunikation
  - Mobilität
  - Differenzierung
  - genetischer Austausch

]
#frage[
  Anwendungsgebiete der Umweltmikrobiologie (mind. 3)
]
#antwort[
  - Medizin (Insulin, Antibiotika)
  - Lebensmittel (Fermentation, Gährung, Pilze)
  - Industrie (Biokraftstoffe, Abwasserreinigung)

]
#frage[
  Arbeitsordnung mit biologischen Stoffen
]
#antwort[
  Ermittlung der Gefahren und Meldung
  - Hygiene, Impfung, Organisationsplan (Laborordnung)
  - Vorsorge für besondere Fälle (Dekontamination, Erste Hilfe)
  - Schutzausrüstung, sichere Handhabung (Waschplätze, Desinfektionsmittel, Arbeitskleidung, Laboreinrichtung)
  - Unterweisung der Arbeitnehmer über Gefahren, Hygiene-, Schutzmaßnahmen
  - Einteilung in vier Sicherheitsstufen
]
#frage[
  Nennen sie drei gebräuchliche Mikroskopieverfahren und beschreiben sie diese
]
#antwort[
  - Hellfeldmikroskopie:
    - Licht fällt durch Objekt
    - Objekt benötigt oft vorherige Einfärbung.
  - Dunkelfeldmikroskopie
    - zentraler Lichtbereich wird abgedeckt
    - Randstrahlen gelangen ins Objektiv
    - durch Streuung erscheint Objekt hell vor dunklem Hintergrund
  - Phasenkontrastmikroskopie
    - Licht wird gespalten
    - Hintergrundlicht kommt direkt in Objektiv während Objektlicht durch Objekt muss
  - Fluoreszenzmikroskopie
    - Fluoreszenzlicht muss vorhanden sein oder Farbstoff hinzugefügt werden
    - Sperrfilter blockiert das Anrege Licht und lässt nur Fluoreszenzlicht ins Objektiv
  - Konfokale Mikroskopie
    - fokusiertes Laserlicht beleuchtet Objekt
    - Objektiv erfasst nur Licht aus dem Fokus
    - 3D-Bilder durch Schichtaufnahme
  - Elektronenmikroskopie ($1 "Mio"$ Vergrößerung)
    - Transmissionselektronenmikroskopie
    - Elektronenstrahl durch Objekt
    - zeigt das innere des Objektes
    - Rasterelektronenmikroskopie
    - Elektronenstrahl reflektiert an mit Mteall bedampfter Oberfläche
    - Oberflächen erkennbar

]
#frage[
  RGT-Regel
]
#antwort[
  *Reaktion-Geschwindigkeit-Temperatur-Regel*

  Innerhalb des Toleranzbereiches gilt für die Abhängigkeit biologischer Prozesse von der
  Temperatur annäherungsweise die RGT-Regel Reaktion-Geschwindigkeit-Temperatur-Regel
  (auch Van-t-Hoff-Regel genannt).

  Eine Erhöhung der Temperatur um $10$°C verdoppelt die Reaktionsgeschwindigkeit.

  Es sind die Raten $tau_i$ für zwei Temperaturen $T_i$ bekannt.
  $
  theta_(1degree C) = root((tau_2 - tau_1), tau_2 / tau_1)
  $

  Ist der Faktor $theta$ bekannt für eine Reaktion $tau_1$ bei $T_1$, so kann daraus die Rate $tau_2$ bei $T_2$ berechnet werden.

  $
  tau_2 = tau_1 dot theta^(T_2 - T_1)
  $
]
#frage[
  Ökologische Nische
]
#antwort[
  Eine ökologische Nische ist ein Raum von Umweltfaktoren, in denen Leben für einen bestimmten Organismus möglich ist.

  / Fundamentalnische: Nische, in der diese Art allein aufgrund ihrer physiologischen Potenz leben könnte.
  / Realnische: Teil der Fundamentalnische, der unter Berücksichtigung der konkreten aktuellen Standortfaktoren in einem bestimmten Ökosystem tatsächlich von der betreffenden Art belegt wird.
]
#frage[
  Annahmen für die Erstellung eines phylogenetischen Stammbaums
]
#antwort[
  Die best-untersuchte DNA-Sequenz der Prokaryoten ist das Gen der 16 S-rDNA Sequenz. Die
  16 S-rDNA Sequenz hat sich in der Evolution nur sehr langsam verändert, weil die
  Proteinsynthese ein komplizierter Prozess ist. Daher ist die 16 S-RNA die ideale Zielsequenz
  für die Analyse von Stammbäumen. Aus der Anzahl der Mutationen lässt sich ein
  evolutionärer Abstand ermitteln. Mit Hilfe von Computerprogrammen kann man aus den
  Abständen einen Phylogenetic Tree erstellen. Diese sind nicht eindeutig. Es gibt mehrere
  korrekte Lösungen. Vorrausetzung ist die Annahme, dass Veränderungen mit konstanter
  kleiner Rate eingetreten sind.
]
#frage[
  Synergismus
]
#antwort[
  Häufig kann ein Stoff von einer Bakterienart allein nicht vollständig abgebaut werden. Das
  Produkt kann aber von einer anderen Art weiter verwertet werden.
  Mikroorganismengemeinschaften können somit gemeinschaftlich Kontaminanten durch
  schrittweisen Teilabbau mineralisieren
]
#frage[
  Water borne/based/vektor based erklären
]
#antwort[
  / Water borne: Infektionen, die durch verunreinigtes Wasser übertragen werden (z.B. Durchfallerkrankheiten, Typhus, Cholera)
  / Water washed: Krankheiten aufgrund mangelnder Hygiene
  / Water based: Infektionen, die durch einen im Wasser lebenden wirbellosen Organismus übertragen werden.
  / Water related vector borne: Krankheiten, die von Insekten übertragen werden, die für ihre Vermehrung auf Wasser angewiesen sind (z.B. Malaria, Dengue-Fieber)
]
#frage[
  Definition Intoxikation
]
#antwort[
  Schädigung des betrachteten Organismus durch chemische Substanz.
  - klinische oder nicht-klinische Symptome
  - reversibel oder irreversibel
]
#frage[
  Definition Infektion
]
#antwort[
  Eindringen und Vermehrung eines infektiösen Erregers (MO) in einen Wirtorganismus.
  Reaktion des Wirtes. (Kann zu einer Erkrankung führen oder nicht)

  Achtung: Infektion ist nicht gleich Infektionserkrankung
]
#frage[
  Was bedeutet Zoonose? (max. 3 Sätze)
]
#antwort[
  Übertragung von Krankheitserregern von Tieren auf Menschen.
]
#frage[
  Wie brechen Krankheiten beim Menschen aus?
]
#antwort[
  / Krankheit: Krankheitssymptome bei einem Wirt (klinische Symptomatik). Kann eine Folge einer Vergiftung oder Infektion sein.
  / Klinische Symptomatik: Entweder durch schädliche Aktivitäten der MO oder durch Abwehrreaktion des Wirtes.
  *Drei verschiedene Übertragungswege:*
  - Person-Person (direkt, indirekt, airborne)
  - Vehikel-basiert (waterborne, foodborne, airborne, soilborne)
  - Vektor-basiert (anthropods/insects)

  *Mögliche Erklärungen:*
  - MO speziell um Mensch zu schaden
  - MO versuchen Gleichgewicht herzustellen. Bei Ungleichgewicht kommt es zur Krankheit.
  - Mensch ist zufälliger wirt des MO

]
#frage[
  Geben Sie die 3 Möglichkeiten an, wie die Entstehung von Krankheitserregern bzw.
  Pathogenität beim Menschen erklärt werden kann (max. 2 Sätze pro Möglichkeit)
]
#antwort[
  - MO speziell um Mensch zu schaden
  - MO versuchen Gleichgewicht herzustellen. Bei Ungleichgewicht kommt es zur Krankheit.
  - Mensch ist zufälliger wirt des MO

]
#frage[
  Für Wasser assoziierte Krankheiten
]
#antwort[
  - Water-borne: Infektionen, die durch verunreinigtes Wasser übertragen werden (zB. Durchfallkrankheiten, Typhus, Cholera)
  - Water-washed: Krankheiten aufgrund mangelnder Hygiene
  - Water-based: Infektionen, die durch einen im Wasser lebenden wirbellosen Organismus übertragen werden
  - Water-related vector-borne: Krankheiten, die von Insekten übertragen werden, die für ihre Vermehrung auf Wasser angewiesen sind (zB. Malaria, Japanische Enzephalitis)
]
#frage[
  Wofür werden Screening-Tests und Kläranlagen-Simulationstests eingesetzt.
  Einsatzbereich und Unterschiede
]
#antwort[
  #missing[]
]
#frage[
  Kurzgeschlossener und gebrochener Nährstoffkreislauf
]
#antwort[
  *kurzgeschlossener Nährstoffkreislauf*
  - beschreibt den Vorgang, dass Nährstoffe zu einem Großteil in der lebenden Biomasse und nicht im Boden gespeichert sind.
  - Tote Biomasse wird sofort zersetzt und zu 80 Prozent wieder aufgenommen. Die restlichen 20 Prozent gehen verloren.
  - Keine Senken (Speicher)

  *gebrochener Nährstoffkreislauf*
  - abgestorbene Biomasse wird deutlich langsamer abgebaut
  - Nährstoffe speichern sich in Senken im System

]
#frage[
  Biologischer Kohlenstoff-, Stickstoff-, Phosphor- und Schwefel-Kreislauf
  Wie stellt man das „moderne“ Bild des mikrobiellen N-Kreislaufs von Ammonium
  bis hin zum molekularen Stickstoff (N2) dar? Skizzieren und beschreiben sie die
  einzelnen Schritte
]
#antwort[
  *Kohlenstoffkreislauf:*
  - *Assimilation*: Aufbau von Biomasse aus CO2 und Wasser. Kohlenstoff wird gebunden und Sauerstoff frei.
  - *Dissimiliation*: Abgestorbene Biomasse wird unter Energiegewinn durch MO zu CO2 veratmet.
  - *Respiration*: Veratmung des Sauerstoffs zu CO2 durch Menschen und Tiere.
  - *Wichtige Reservoirs*: Hydrosphäre (gelöstes CO2), Lithosphäre (CaCO3, MgCO3, NaCO3), Biosphäre (Muschelschalen, Korallen), Sedimente der Tiefsee, Fossile Brennstoffe (Kohle, Erdöl, Erdgas)

  *Stickstoffkreislauf*:
  - *Stickstofffixierung*: #ce("N2 -> NH3 oder NH4") (Ammoniak oder Ammonium) Entweder biotisch durch Bakterien oder abiotisch durch Blitze oder Sonnenlicht.
- *Nitrifikation*: #ce("NH4 oder NH3 -> NO3") (Nitrat) Bakterien wandeln Ammonium in Nitrat um, damit Pflanzen es aufnehmen können. Umwandlung erfolgt in gut belüfteten Böden oder Wasser.
- *Ammonifikation*: #ce("NO3 -> NH3 -> NH4") (Ammonium) Pflanzen werden verdauut und das Nitrat wird in Ammoniak umgewandelt, welches nach der Ausscheidung von Bakterien zu Ammonium umgewandelt wird.
- *Denitrifikation*: #ce("NO3 -> N2") (molekularer Stickstoff) Umwandlung erfolgt in gut belüfteten Böden, wenn Pflanzen es nicht aufnehmen.

*Phosphorkreislauf*:

Phosphor kommt eigentlich immer als Phosphat (PO4) vor. Hautsächlich in Gestein. Durch
Verwitterung gelangt er in den Boden und ins Wasser. Menschen/Tiere essen die Pflanzen
und scheiden Phosphat wieder aus. Abgestorbene Pflanzen werden von Bakterien
(Destruenten) wieder zersetzt und Phosphat wird frei (Autolyse). Großer Einfluss des
Menschen auf diesen Kreislauf.

*Schwefelkreislauf*:

Ist wichtig für einige Aminosäuren. Wichtig im Energiestoffwechsel von MO.
wird nicht elementar, sondern in Form von löslichen Mineralien aufgenommen.
]
#frage[
  Definition: Dissimilation & Assimilation
]
#antwort[
  *Assimilation*:

  Aufbau von Biomasse aus CO2 und Wasser. Kohlenstoff wird gebunden und Sauerstoff frei.
  - Stoff- und Energiewechsel, bei dem organismus-fremde Stoffe in organismus-eigene Stoffe umgewandelt werden
  - meistens unter Energiezufuhr.
  *Dissimilation*:

  Abgestorbene Biomasse wird unter Energiegewinn durch MO zu CO2 veratmet.
  - katabolische Stoff- und Energiewechsel von Lebewesen, bei dem Bestandteile des Organismus (zB Fette; KH) abgebaut werden
  - erfolgt meistens unter Energiegewinnung
  - Kohlenstoff-, Stickstoff-, Schwefel-, Phosphat- und Mineralstoffdissimilation
]
#frage[
  Erklären Sie kurz die Begriffe Katabolismus und Anabolismus und geben Sie jeweils
  Beispiele.
]
#antwort[
  / Katabolismus: Abbau von Stoffwechselprodukten von komplexen zu einfachen Molekülen (Energiegewinnung)
  / Anabolismus: Ist die Gesamtheit der energieverbrauchenden Stoffumsetzungen und gleichzeitg der aufbauenden Stoffwechselreaktionen (Energieverbrauch)
]
#frage[
  Was sind die wichtigsten C-Senken/Reservoirs?
]
#antwort[
  - Karbonate der Hydrosphäre (lösliche salze der kohlensäure #ce("H2CO3"))
- Karbonate der Lithosphäre (#ce("CaCO3"), #ce("MgCO3"), #ce("NaCO3"))
- Karbonate der Biospähre (Muschelschalen, Korallen)
- Sedimente der Tiefsee
- Fossile Brennstoffe (Kohle, Erdöl, Erdgas)
]
#frage[
  Erklären von abiotisch/biotisch + Beispiel
]
#antwort[
  Stickstofffixierung (#ce("N2 -> NH3")) kann entweder biotisch oder abiotisch stattfinden.
  / Biotisch: durch Bakterien
  / Abiotisch: durch Blitze oder Sonnenlicht
]
#frage[
  Skizzieren sie die Grundlegende Überlegung hinter der Monod Kinetik und
  diskutieren sie kurz diese Grafik
]
#antwort[
  Die Monod-Kinetik ist ein mathematisches
  Modell der Theoretischen Biologie, das
  Vorhersagen zum Wachstum von
  Mikroorganismen in Abhängigkeit von der
  Konzentration der Substrate ermöglicht.

  #let xs = lq.linspace(0.1, 3)
  #let ys = xs.map(x => 10 * x / (x + 1))

  #figure(
    lq.diagram(
      yscale: "log",
      grid: none,
      yaxis: (ticks: none, mirror: false, tip: tiptoe.stealth),
      xaxis: (ticks: none, mirror: false, tip: tiptoe.stealth),
      lq.plot(xs, ys, mark: none),
    ),
  )
]
#frage[
  CSB von #ce("CH3COOH") bestimmen
]
#antwort[
  Siehe @csb-und-redfield-stöchiometrie

  #ce("CH3COOH -> 2C, 4H, 2O")

  #ce("2C #math.dot 32g CSB/mol C -> 64g O2")\
  #ce("4H #math.dot 8g CSB/mol C -> 32g O2")\
  #ce("2O #math.dot -16g CSB/mol C -> -32g O2")\
  #sym.arrow.long $64g + 32g - 32g = 64g "CSB"$
]
#frage[
  Definition Anammox, Deammonifikation
]
#antwort[
  / Anammox: ist ein Akronym, welches sich zusammensetzt aus Anaerobe Ammonium-Oxidation.
  (Deammonifikation = Anammox)

  Ammonium (#ce("NH4")) und Nitrat (#ce("NO3")) werden anaerob zu elementraem Stcikstoff (#ce("N2")) und Wasser (#ce("H2O")) oxidiert.
]
#frage[
  Bedeutung von Phosphor für die Zelle
]
#antwort[
  Phosphor ist wichtigstes wachstumslimitierendes Substrat. Es spielt eine
  zentrale Rolle beim Energiestoffwechsel (ATP) und ist Bestandteil der
  DNA und der Zellmembran. Phosphat ($P O_4^(3 -)$) ist dabei die
  relevanteste Form.
]
#frage[
  Beschreiben Sie den „Microbial-Loop“ am Bsp. Eines kippenden Sees
]
#antwort[
  Die mikrobielle Schleife beschreibt einen Stoffkreislauf im Nahrungsgesetz von Plankton.
  Dabei werden organische Kohlenstoffverbindungen durch Bakterien aufgenommen und
  entlang der klassischen Nahrungskette weitergereicht. Gelöste organische Substanzen
  (DOM) werden von heterotrophen Bakterien aufgenommen. Ungelöste Substanzen (POM)
  werden über die Exoenzyme in DOM umgewandelt.

  *Beispiel Kippen von Seen*

  Eintrag von P in einen See führt vermehrt zu Algenwachstum (Algenblüte). Absterben und
  Absinken der Algen im Herbst. Mikrobieller Abbau unter Verbrauch von O2 und NO3 unter
  Freisetzung von N und P. Im Frühjahr gelangen N und P in die tropische Zone (nach oben).
  Hier stellen sie nun zusätzliche Nährstoffe für erneutes Algenwachstum dar. => Neustart der
  Loop
]
