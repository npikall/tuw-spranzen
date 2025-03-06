#import "../universal.typ":*

= Elektrochemische Analyseverfahren
== Elektrochemische Methoden

#figure(
  diagram(node-corner-radius:5pt,
      node-fill:cmcrameri.at(0),
      spacing:5pt,
      debug:0,
      node((0,0), name:<ohne>,"Verfahren ohne Stromfluss", fill:cmcrameri.at(2)),
      edge(),
      node((rel:(0,1)),"Potentiometrie", fill:cmcrameri.at(1)),
      node((2,0),name:<mit>, "Verfahren mit Stromfluss", fill:cmcrameri.at(2)),
      edge(),
      node((rel:(1,0), to:<mit>), name:<none>, "Verfahren ohne Stoffumsatz", fill:cmcrameri.at(1)),
      edge(<mit>, <full>),
      node((rel:(0,1), to:<mit>), name:<full>, "Verfahren mit ~100% Stoffumsatz", fill:cmcrameri.at(1)),
      edge(<none>, <kondukt>),
      node((rel:(0,1), to:<none>), name:<kondukt>, "Konduktometrie"),
      edge(),
      node((rel:(0,1), to:<kondukt>), name:<volt>, "Voltametrie"),
      edge(),
      node((rel:(0,1)), "Potentiometr. Titration"),
      node((rel:(0,1), to:<full>), name:<elgr>, "Elektrogravimetrie"),
      edge(<full>, <elgr>),
      edge(),
      node((rel:(0,1)), "Caulometrie")
  )
)<fig-elektroanlytische-methoden>

#figure(
  table(
    columns: 3,
    table.hline(),
    table.header([Elektrodenreaktion],[Methode],[Meßgröße/Einheit]),
    table.hline(),
    [ohne Reaktion],[Konduktometrie],[elektr. Leitwert in Siemens],
    [mit Reaktion],[Potentiometrie],[Potentialdifferenz in V],
    [variables Potential],[Voltametrie/\ Polarographie],[Stromstärke als Funktion\ der Spannung],
    [konstantes Potential],[Amperometrie\ Elektrogravimetrie\ Coulometrie],[Stromstärke\ Masse\ Ladung F in C],
    table.hline(),
  ),caption: [Klassifizierung nach den Elektrodenreaktionen]
)

== Konduktrometrie
 Analytische Methode zur Bestimmung der elektrischen Leitfähigkeit einer Lösung.
 Misst die ionische Leitfähigkeit, geeignet für ionische Konzentrationsbestimmungen.

=== Funktionsweise
- Elektroden in Lösung #sym.arrow Wechselspannung angelegt #sym.arrow Stromfluss gemessen.
- Leitfähigkeit $prop$ Ionenanzahl und Mobilität.
- Abhängig von Temperatur, Ionenkonzentration/-ladung.

=== Begriffe und Formeln
- Widerstand eines Leiters $R = rho dot l/q [Omega]$
  - $rho$... spezif. Widerstand [$"cm" Omega$]
  - $l$... Länge [cm]
  - $q$... Querschnitt [$"cm"^2$]
- Leitwert $G = 1/R [S]$
- Spezifische Leitfähigkeit: $gamma = 1/rho = 1/R dot 1/q [S dot "cm"^(-1)]$
- wanderungsgeschwindigkeit der Ionen: $v = u dot E ["cm" dot S^(-1)]$
  - $E$... Feldstärke
  - $u$... Ionenbeweglichkeit [$"cm"^2S^(-1)v^(-1)$]
- Spezif. Leitfähigkeit einer Elektrolytlösung: $gamma = F dot c dot 1/z dot u [S dot "cm"^(-1)]$
  - $F$... Faradaykonst. $=96485 [C "mol"^(-1)]$

=== Spezialfall 
Hochfrequenz-Konduktometrie: Ozillometrie

== Potentiometrie
Elektrochemische Methode zur Messung des elektrochemischen Potentials (Spannung) einer Lösung ohne Stromfluss. Nutzt eine Referenzelektrode und eine Messelektrode (Indikatorelektrode).

=== Funktionsweise
- Messelektrode reagiert selektiv mit einer bestimmten Ionenspezies.
- Referenzelektrode liefert konstantes Potential.
- Gemessene Spannung #math.prop Ionenkonzentration (nach der Nernst-Gleichung).

$
E = E^0 + (R dot T)/(z dot F) dot ln(a_"ox"/a_"red")\
E = E^0 + 0.059/z dot log(a_"ox")
$<eq-nernst>

Die *Zellspannung* ergibt sich aus der Summe des Potential von Mess- und Bezugselektrode:
$ U_z = E_1 + E_2 $

=== Einteilungskriterien für Elektroden
- *1. Art:* Metall in Kontakt mit einer Lösung seines Salzes
- *2. Art:* Metall in Kontakt mit seinem Salz und einer Lösung mit gemeinsamen Anion wie das schwerlösliche Salz. 
- *3. Art:* Redox-Elektroden; Pt-draht oder Blech in Kontakt mit zwei Redox-spezies eines Metalls


== Elektrogravimetrie
Analytische Methode zur quantitativen Bestimmung von Metallen durch elektrolytische Abscheidung und anschließendes Wiegen. Erfordert konstante Stromstärke oder Spannung.

=== Funktionsweise
+ Probelösung enthält das zu bestimmende Metall als Ion (z. B. Cu²⁺).
+ Kathode (z. B. Pt-Elektrode) dient als Abscheidungsfläche.
+ Anode liefert Elektronen → Reduktion der Metallionen → Metall scheidet sich an der Kathode ab.
+ Kathode wird getrocknet & gewogen → Massenunterschied entspricht der abgeschiedenen Metallmenge.

== Coulometrie
Elektrochemische Methode zur quantitativen Analyse basierend auf der Messung der verbrauchten elektrischen Ladung (Coulomb-Gesetz). Bestimmung eines elektroaktiven Analyten durch eine definierte Elektrodenreaktion mit 100%igem Stromumsatz. Quantitative Auswertung über exakte Registrierung des geschlossenen Stromes.

=== Funktionsweise
+ Konstante Stromstärke oder konstante Potentialsteuerung → elektrochemische Reaktion wird vollständig durchgeführt.
+ Elektronenübertragung (Oxidation/Reduktion) an der Elektrode → Umwandlung der Analyt-Ionen.
+ Messung der verbrauchten Ladung (Q = I × t, mit I = Strom, t = Zeit).
+ Berechnung der Stoffmenge mit Faradayschem Gesetz

=== Einsatzformen
- *potentiostatische Coulometrie:* Spannung bleibt konstant, Strom sinkt mit der Konzentration des Analyten in Lösung 
- *galvanostatische Coulometrie:* Strom bleibt konstant während Analyt umgesetzt wird und die zeit bis zum Äquivalenzpunkt wird gemessen.

== Voltammetrie
Aufzeichnung von Strom Spannungskurven von Ionen in Lösungen an Metall- oder Halbleiterelektroden.
*Qualitative Info:* Potential der Abscheidung/Entladung der einzelnen Stoffe.

*Quantitative Info:* Stromfluss proportional zur Konzentration

#missing-plot

*Polarographie:* Spezialfall der Voltametrie...

=== Funktionsweise
+ Drei-Elektroden-System:
  - Arbeitselektrode (z. B. Tropfquecksilber- oder Kohlenstoffelektrode) → Reaktionsort.
  - Referenzelektrode (z. B. Ag/AgCl) → definiertes Potential.
  - Gegenelektrode (Platin oder Kohlenstoff) → schließt den Stromkreis.
+ Anlegen einer variablen Spannung → Reduktion oder Oxidation des Analyten.
+ Messung des resultierenden Stroms → gibt Rückschluss auf Konzentration & Identität des Analyten.


== Amperometrie
Strommessung bei konstantem Potential im diffusionskontrollierten Regime.

*Quantitative Info:* Stromfluss proportional zur Konzentration.

=== Funktionsweise:

+ Elektrodenanordnung:
  - Arbeitselektrode (z. B. Platin, Gold, Kohlenstoff) → Reaktionsort.
  - Referenzelektrode (z. B. Ag/AgCl) → konstantes Potential.
  - Gegenelektrode → schließt den Stromkreis.
+ Anlegen einer konstanten Spannung → Redoxreaktion des Analyten an der Arbeitselektrode.
+ Messung des resultierenden Stroms → proportional zur Konzentration des elektroaktiven Stoffes.

$
E = (R T)/(4 F) ln((P_"O2" ("Ref"))/(P_"O2" ("Probe")))
$