#import "@local/spranzen:0.1.0": *

= Prüfung vom 30. März 2023

Prüfung VO Umgebungslärm, LVA 230.054. Notenskala: $<20$ P: 5, $>=20$ P: 4, $>=26$ P: 3,
$>=32$ P: 2, $>=37$ P: 1.

== Aufgabe 1: Messtechnik (12 Punkte)
#qcounter.update(0)

Schallpegelmesser

#question[a) Warum wird bei (modernen) Schallpegelmessern eine Abtastung durchgeführt und
  was gibt die Abtastfrequenz $f_S$ an? (3 P)]
#answer[Moderne Schallpegelmesser verarbeiten das Signal digital (Frequenz- und Zeitbewertung,
  Effektivwertbildung, Spektren, Mittelungspegel). Dazu muss das analoge, zeitkontinuierliche
  Mikrofonsignal in ein zeitdiskretes Signal umgewandelt werden, indem in festen Zeitabständen
  Momentanwerte abgetastet werden. Die Abtastfrequenz $f_S$ (Samplingrate) gibt an, wie viele
  Abtastwerte pro Sekunde erfasst werden ($f_S = 1 / (Delta t)$).]

#question[b) Wenn Sie eine Geräuschsituation im Frequenzbereich von 50 Hz bis 16 kHz
  erfassen möchten, wie ist die Abtastfrequenz zu wählen (inkl. Begründung)? (3 P)]
#answer[Nach dem Nyquist-Shannon-Abtasttheorem muss die Abtastfrequenz mehr als das Doppelte der
  höchsten Signalfrequenz betragen, da sonst Aliasing (Fehlinterpretation hoher Frequenzen als
  tiefe) auftritt: $f_S > 2 dot "16 kHz" = "32 kHz"$. Praktisch wählt man z.B.
  $f_S = "48 kHz"$ (oder 44,1 kHz), um Reserve für das Anti-Aliasing-Filter zu haben. Die
  untere Grenze von 50 Hz ist für die Wahl von $f_S$ nicht maßgebend.]

#question[c) Mit welchem zeitlichen Abstand erfolgt die Abtastung bei der zuvor gewählten
  Abtastfrequenz? (2 P)]
#answer[Bei $f_S = "48 kHz"$ beträgt der zeitliche Abstand der Abtastungen
  $Delta t = 1 / f_S = 1 / "48 000 Hz" approx "20,8" mu"s"$ (bei 32 kHz wären es 31,25 µs).]

#question[d) Was bedeutet Quantisierung, warum entstehen dabei die als
  Quantisierungsrauschen bekannten Fehler und wie kann dieser Fehler klein gehalten
  werden? (4 P)]
#answer[Quantisierung bedeutet, dass die abgetasteten Momentanwerte durch digitale Werte mit
  endlicher Auflösung (abhängig von der Bit-Anzahl bzw. Wortbreite) dargestellt werden; aus dem
  zeitdiskreten wird ein wertdiskretes Signal. Da jeder Momentanwert auf die nächstgelegene
  Quantisierungsstufe gerundet wird, entsteht ein Rundungsfehler, der sich wie ein zufälliges,
  dem Signal überlagertes Rauschen verhält (Quantisierungsrauschen). Der Fehler kann klein
  gehalten werden durch eine hohe Wortbreite (z.B. 24 bit, je Bit ca. 6 dB mehr Dynamik) und
  eine gute Aussteuerung, d.h. einen an das Signal angepassten Messbereich, sodass der
  Wertebereich möglichst ausgenutzt, aber nicht übersteuert wird.]

== Aufgabe 2: Schallemissionen (10 Punkte)
#qcounter.update(0)

Geräuscharten im Schienenverkehr. Die Gesamtschallemissionen von Zügen werden in
Abhängigkeit der Fahrgeschwindigkeit von verschiedenen Fahrgeräuschen dominiert.

#question[a) i) Welche drei Fahrgeräusche sind hier relevant? (3 P)]
#answer[Relevant sind das Antriebsgeräusch (Traktion: Motor, Getriebe, Lüfter, Auspuff), das
  Rollgeräusch (Rad-Schiene-Kontakt) und das aerodynamische Geräusch (Luftverwirbelungen).]

#question[a) ii) Geben Sie grob die Geschwindigkeitbereiche an, in denen diese
  Fahrgeräusche jeweils überwiegen. (1,5 P)]
#answer[Grob überwiegt das Antriebsgeräusch bei niedrigen Geschwindigkeiten (bis ca. 50–60 km/h),
  das Rollgeräusch im mittleren Bereich (ca. 60 bis 250–300 km/h) und das aerodynamische
  Geräusch bei sehr hohen Geschwindigkeiten (ab ca. 250–300 km/h).]

#question[a) iii) Nennen Sie für jedes dieser Fahrgeräusche jeweils ein typisches
  Beispiel aus dem Streckennetz, wo es dominiert. (1,5 P)]
#answer[Das Antriebsgeräusch dominiert in Bahnhofsbereichen (Anfahren, Stehen mit laufenden
  Aggregaten), das Rollgeräusch auf der freien Strecke und das aerodynamische Geräusch auf
  Hochgeschwindigkeitsstrecken (z.B. Stromabnehmer bei Fahrten über 250 km/h).]

#question[b) Was sind Flachstellen, wie entstehen sie und warum wird vermutet, dass
  Flachstellengeräuschen zukünftig eine größere Bedeutung zukommen wird? (4 P)]
#answer[Flachstellen sind abgeflachte Bereiche (Laufflächendefekte bzw. Unrundheiten) auf der
  Radlauffläche. Sie entstehen, wenn ein Radsatz beim Bremsen blockiert und über die Schiene
  gleitet (z.B. bei schlechter Haftung durch Laub oder Nässe, zu hoher Bremskraft oder „festen
  Bremsen“), wodurch Material an einer Stelle abgetragen wird. Bei jeder Radumdrehung schlägt die
  Flachstelle auf die Schiene und erzeugt impulshaltige Geräusche. Durch die Umrüstung der
  Güterwagen von Grauguss- auf leise K- oder LL-Bremssohlen sinkt das Rollgeräusch deutlich; die
  Flachstellengeräusche, die bisher von den hohen Emissionen GG-gebremster Wagen maskiert
  wurden, werden dadurch wahrnehmbar und gewinnen relativ an Bedeutung.]

== Aufgabe 3: Schallausbreitung (8 Punkte)
#qcounter.update(0)

#question[a) i) Luftabsorption: Wodurch entsteht Luftabsorption und wie nennt sich diese
  Art der Absorption? (2 P)]
#answer[Luftabsorption entsteht durch die verlustbehaftete Bewegungsanregung der Luftmoleküle
  durch das Schallfeld; ein Teil der Schallenergie wird dabei in Wärme umgewandelt
  (Relaxationsvorgänge von Sauerstoff- und Stickstoffmolekülen sowie innere Reibung und
  Wärmeleitung). Diese Art der Absorption nennt man molekulare Absorption.]

#question[a) ii) Welche Größen beeinflussen die Luftabsorption im Wesentlichen? (1,5 P)]
#answer[Die Luftabsorption hängt im Wesentlichen von der Frequenz, der Lufttemperatur und der
  Luftfeuchtigkeit ab (in geringerem Maß auch vom Luftdruck).]

#question[a) iii) Durch welche Größe wird die Luftabsorption mathematisch beschrieben
  (inkl. Einheit)? (1 P)]
#answer[Sie wird durch den Dämpfungskoeffizienten $alpha$ (bzw. $alpha_"atm"$) in dB/km (oder
  dB/m) beschrieben; die Dämpfung ergibt sich zu $A_"atm" = alpha dot d$
  (Standardwerte nach ISO 9613-1).]

#question[a) iv) Ausgehend von einer Quellemission mit gleichen Terzbandpegeln im
  hörbaren Frequenzbereich, wie wird sich das Spektrum in größerer Entfernung gegenüber
  dem Quellspektrum verändern (qualitative Beschreibung)? (1,5 P)]
#answer[Da die Luftabsorption mit der Frequenz stark zunimmt, werden in größerer Entfernung die
  hohen Frequenzen deutlich stärker gedämpft als die tiefen. Das zunächst flache Spektrum
  fällt daher zu hohen Frequenzen hin ab, d.h. tiefe Frequenzen dominieren und das Geräusch
  klingt dumpfer.]

#question[b) Beschreiben Sie, wodurch sich lichtraumnahe und konventionelle
  Lärmschutzwände unterscheiden. Zeichnen Sie ergänzend beide Arten von Lärmschutzwänden
  in einer Querschnittsskizze einer Eisenbahnstrecke ein. (2 P)]
#answer[Konventionelle Lärmschutzwände stehen in größerem Abstand zum Gleis (außerhalb des
  Lichtraumprofils, ca. 3–4 m von der Gleisachse) und sind meist 2 bis 4 m hoch (über SOK).
  Lichtraumnahe (niedrige) Lärmschutzwände stehen unmittelbar am Lichtraumprofil (ca. 1,7 m
  von der Gleisachse), sind nur ca. 0,7 bis 1 m über SOK hoch, haben aber durch die Nähe zu
  Rad und Schiene einen großen Beugungswinkel für die bodennahen Rollgeräuschquellen. Sie
  verbessern das Landschaftsbild, wirken aber kaum gegen höher liegende Quellen
  (Stromabnehmer, Lüfter) und erschweren Instandhaltung, Schneeräumung und
  Arbeitnehmerschutz.

  Skizze (Querschnitt): Gleis mit Schotterbett, direkt neben dem Schwellenende die niedrige,
  lichtraumnahe Wand (≤ 1 m über SOK); weiter außen, jenseits des Randwegs, die hohe
  konventionelle Wand (2–4 m über SOK).]

== Aufgabe 4: Schallberechnung (10 Punkte)
#qcounter.update(0)

#question[Die Motorengeräusche einer fahrenden Schnellbahn (Länge $l = 120$ m,
  Geschwindigkeit $v = 160$ km/h) werden über die Zuglänge als eine über der Gleisachse
  in einer Höhe $h_0 = "0,5"$ m über der Schienenoberkante angeordnete Linienschallquelle
  mit einem konstanten längenbezogenen Schallleistungspegel $L_(W'0) = 99$ dB je Meter
  modelliert. Das umliegende Gelände ist eben und es kann von freier Schallausbreitung
  ausgegangen werden. Das Motorengeräusch weist nur Anteile im mittel- und hochfrequenten
  Spektralbereich von 250 Hz bis 10 kHz auf.

  Berechnen Sie bei einem Boden mit einer Absorption $alpha = "0,7"$ in einer Entfernung
  von $x_1 = 25$ m und einer Höhe $h_1 = 6$ m über der Schienenoberkante den
  Schalldruckpegel $L_p$ während der Vorbeifahrt (Hinweis: sofern Sie bei der Berechnung
  Fernfeldbedingungen voraussetzen, überprüfen Sie zunächst, ob dies gerechtfertigt ist).
  Rechnen Sie mit ausreichend genauen Zahlen und runden Sie Zwischen- und Endergebnisse
  zur Darstellung auf 1 Nachkommastelle.]
#answer[*Fernfeldprüfung*: Die tiefste relevante Frequenz ist 250 Hz, d.h.
  $lambda_max = c / f approx "343" / "250" = "1,4 m"$. Der Abstand zur Quelle
  $r_1 = sqrt(25^2 + ("6" - "0,5")^2) = "25,6 m" >> lambda_max$, und die Quellabmessung
  quer zur Linie ist vernachlässigbar → Fernfeld. Wegen $r_1 < l / pi = "38,2 m"$ kann die
  120 m lange Quelle zudem als (unendliche) Linienquelle betrachtet werden.

  *Direktschall* (freie Ausbreitung, Zylinderwelle):
  $
    L_(p,1) = L_(W'0) - 10 dot lg(2 pi r_1) = 99 - 10 dot lg(2 pi dot "25,6") = 99 - "22,1"
    = "76,9 dB"
  $

  *Bodenreflexion* über Spiegelquelle in $"0,5"$ m unter dem Boden,
  $r_2 = sqrt(25^2 + ("6" + "0,5")^2) = "25,8 m"$, Quellleistung reduziert um
  $10 dot lg(1 - alpha) = 10 dot lg("0,3") = -"5,2 dB"$:
  $
    L_(p,2) = 99 - "5,2" - 10 dot lg(2 pi dot "25,8") = "93,8" - "22,1" = "71,7 dB"
  $

  *Energetische Addition* (inkohärente Quellen):
  $ L_p = 10 dot lg(10^("7,69") + 10^("7,17")) = "78,1 dB" $]
