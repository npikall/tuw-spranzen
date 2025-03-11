#import "../common.typ":*

= Titrimetrische Analysen
*Titration:* Methode zur quantitaiven Bestimmung einer (bekannten) Substanz, bei der der Probelösung so viel Reagenzlösung mit bekanntem Gehalt (=Titer) zugesetzt wird, bis der Analyt vollständig umgesetzt ist und oder ein erkennbarer Endpunkt erreicht wird.

== Arten Volumetrischer Analyseverfahren
- Säure-Basen Reaktionen (Acidimetrie)
- Fällungstitration
- Komplexometrische Titration
- Redox Titration

=== Acidimetrie
Dabei wird eine starke Säure (z. B. Salzsäure) als Maßlösung mit bekannter Konzentration in die Probe titriert. Ein Indikator oder ein pH-Meter zeigt den Endpunkt der Reaktion an, wenn die Base vollständig neutralisiert ist.

#figure(
  cetz.canvas({
    import draw: *
    import cetz-plot: *
  
    // Stil für Achsen und Legende setzen
    set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)),
              legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))
  
    plot.plot(size: (9, 6),
      x-label: "Volumen der zugegebenen Säure (mL)",
      y-label: "pH-Wert",
      x-tick-step: 5,
      y-tick-step: 2, y-min: 0, y-max: 14,
      legend: "inner-north",
      {
        let f(x) = 14 - 12 / (1 + calc.exp(0.8 * (x - 25))) // typische Titrationskurve
        let domain = (0, 50)
  
        plot.add(f, domain: domain, label: "Titrationskurve",
          style: (stroke: black))
        plot.add(((24.5,7),), mark: "o", label:"Äquivalenzpunkt")
      }
    )
  })
)

wichtige Indikationsmethoden in der Titrimetrie sind:
- optische 
- elektrochemische
- thermische
- und spezielle Methoden



=== Komplexometrie
Die Komplexometrie ist ein volumetrisches Analyseverfahren zur Bestimmung von Metallionen in einer Lösung. Dabei wird ein Komplexbildner (z. B. EDTA) als Maßlösung verwendet, der mit den Metallionen stabile Komplexe bildet.

*Ablauf:*

+ Die Probe mit den Metallionen wird mit einem Indikator versetzt, der die Farbänderung beim Reaktionsende anzeigt.
+ Die EDTA-Lösung wird langsam zugegeben und bindet die Metallionen.
+ Am Äquivalenzpunkt sind alle Metallionen komplexiert, und der Indikator wechselt die Farbe.
Dieses Verfahren wird häufig zur Wasserhärtebestimmung oder zur Analyse von Metallen wie Calcium und Magnesium verwendet.

=== Oxidimetrie
Die Oxidimetrie ist ein volumetrisches Analyseverfahren, bei dem eine Redoxreaktion zur Bestimmung eines Stoffes genutzt wird.

*Ablauf:*
+ Eine Lösung mit bekannter Konzentration eines Oxidations- oder Reduktionsmittels wird als Maßlösung verwendet (z. B. Kaliumpermanganat, Iod oder Cer(IV)-Lösung).
+ Die Probe reagiert mit der Maßlösung, wobei Elektronen übertragen werden.
+ Der Äquivalenzpunkt wird durch eine Farbänderung der Maßlösung oder mit einem Redox-Indikator erkannt.

Dieses Verfahren wird oft zur Analyse von Eisen, Wasserstoffperoxid oder Ascorbinsäure verwendet.

=== Fällungsmassanalyse
Die Fällungsmassanalyse ist ein volumetrisches Verfahren, bei dem eine Maßlösung zugegeben wird, bis ein schwer lösliches Niederschlagssalz vollständig ausgefällt ist.

*Ablauf:*
+ Die Probe enthält ein Ion, das mit der Maßlösung eine schwer lösliche Verbindung bildet.
+ Die Maßlösung wird langsam zugegeben, bis die Fällung vollständig ist.
+ Der Äquivalenzpunkt wird durch Indikatoren (Fällungsindikatoren) oder Leitfähigkeitsmessung bestimmt.
Dieses Verfahren wird häufig zur Bestimmung von Halogeniden (Cl⁻, Br⁻, I⁻) oder Sulfationen (SO₄²⁻) eingesetzt.

== Gravimetrische Analysen
/ Gravimetrie: Quantifizierung eines Stoffes / einer Stoffgruppe aufgrund einer Wägung.

=== Fällungsanalyse
Die Fällungsgravimetrie ist ein gravimetrisches Verfahren, bei dem ein gelöster Stoff durch eine Fällungsreaktion in eine schwer lösliche Verbindung überführt und anschließend gewogen wird.

*Ablauf:*
+ Eine Lösung mit dem zu bestimmenden Ion wird mit einem Fällungsreagenz versetzt.
+ Es entsteht ein schwer löslicher Niederschlag, der durch Filtration abgetrennt wird.
+ Der Niederschlag wird gewaschen, getrocknet oder geglüht, um eine definierte Zusammensetzung zu erhalten.
+ Durch Wägung des getrockneten Niederschlags wird die ursprüngliche Stoffmenge berechnet.
Diese Methode ist sehr genau, wird aber nur für schwer lösliche Verbindungen verwendet.

=== Liebigsche Elementaranalyse
Die Liebigsche Elementaranalyse ist eine Methode zur Bestimmung des Kohlenstoff- und Wasserstoffgehalts in organischen Verbindungen.

*Ablauf:*
+ Die organische Probe wird in Sauerstoff verbrannt, sodass Kohlenstoff zu *CO₂* und Wasserstoff zu *H₂O* reagiert.
+ Das entstehende CO₂ wird in *Kaliwasser (KOH-Lösung)* gebunden, das Wasser in *Calciumchlorid (CaCl₂)* aufgenommen.
+ Durch Wägung der absorbierenden Substanzen vor und nach der Reaktion wird die Masse des gebildeten CO₂ und H₂O bestimmt.
+ Daraus wird der Kohlenstoff- und Wasserstoffgehalt der Probe berechnet.
Diese Methode wurde von Justus von Liebig entwickelt und ist eine klassische Technik zur Elementaranalyse organischer Stoffe.