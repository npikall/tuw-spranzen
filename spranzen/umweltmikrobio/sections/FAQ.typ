#import "../common.typ": *
#let antwort = antwort.with(display: true)
#fragen-counter.update(0)

= FAQ's
Hier werden jene Fragen aufgelistet, die in den vergangenen Prüfungsterminen häufiger gestellt wurden. Die Fragen überschneiden sich mit der vorherigen Fragensammlung. Durch Anpassung des Quellcodes können die Antworten ausgeblendet werden, um die Fragen zu lernen.

#nfrage(n: ">5")[
  Aufbau Belebtschlammflocke
]
#antwort[
  Zusammenschluss aus:
  - MO (Bakterien, Protozoen)
  - "tote Partikel" (Detritus, anorganische Stoffe)
  - Enzyme (organische Stoffe, die biochemische Reaktionen ermöglichen)
  - Extrazelluläre Polymere Substanzen (EPS)
]

#nfrage(n: ">5")[
  GAK-Filter vs. BAK-Filter
]
#antwort[
  Aktivkohle kann in granulierter Form, in Pellets, in Körnern, etc. vorkommen. Aktivkohle wird bei der Abwasserreinigung und Trinkwasseraufbereitung verwendet.

  Aktivkohle zur Adsorption von organischer Stoffen (Organische Stoffe werden an der Oberfläche der Aktivkohle angelagert)

  / GAK: Granuläre Aktivkohle , Nur adsorptive Prozesse
  / BAK: biologisch aktivierte Aktivkohle, Adsorptive und biologische Prozesse
]

#nfrage(n: 5)[
  Stickstoffkreislauf
]
#antwort[
  Pflanzen brauchen Stickstoff, können allerdings keinen elementaren Stickstoff verwerten.
  Innerhalb des Stickstoffkreislaufs wird elementarer Stickstoff zu Ammoniak, Ammonium und
  Nitrat umgewandelt, sodass Pflanzen ihn aufnehmen können. Dabei gibt es folgende vier
  Schritte:
  - Stickstofffixierung: N2 wird zu NH3 (Ammoniak) oder NH4 (Ammonium). Entweder biotisch durch Bakterien oder abiotisch durch Sonnenlicht oder Blitze.
  - Nitrifikation: Pflanzen nehmen lieber NO3 (Nitrat) auf. Bei der Nitrifikation wandeln Bakterien NH3 oder NH4 in NO3 um. Das geschieht in gut belüfteten Böden oder im Wasser.
  - Ammonifikation: Menschen/Tiere essen die Pflanzen und nehmen das NO3 auf. Im Darm wird es wieder zu NH3. NH3 wird nach der Ausscheidung von Bakterien wieder zu NH4 umgewandelt.
  - Denitrifikation: NO3 wird in weniger gut belüfteten Böden von Bakterien zu elementarem N umgewandelt, wenn Pflanzen es nicht aufnehmen.
]

#nfrage(n: 5)[
  Rechenbsp. Wachstum und Verdoppelung
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
#nfrage(n: 4)[
  Rechenbsp. limitierenderFaktor
]
#antwort[
  In einem Abwasser werden gemessen: $300 " mg BSB"_5$, $60 "mg N"$, $7 "mg P"$.

  Was ist der limitierende Faktor für die Biomasseproduktion?
  (Basis Biomasse Redfield Stöchiometrie: C:N:P = 106:16:1)
  #missing[]
]

#nfrage(n: 4)[
  Charakteristika des mikrobiellen Lebens (7 Charakteristika)
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

#nfrage(n: 4)[
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

#nfrage(n: 3)[
  Pilze: Rolle im Ökosystem und Bedeutung für den Menschen
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

#nfrage(n: 3)[
  Was versteht man unter dem Yield-Koeffizienten und was sagt dieser aus?
]
#antwort[
  Der Yield-Koeffizient (Y) oder auch Ausbeute-Koeffizient bezeichnet die Biomasseausbeute (Zuwachs an Biomasse, X) bezogen auf das verbrauchte Substrat (S)
  $
  Y = X/S
  $

  Der Rest (1-Y) wird zum Teil in nutzbare Energie als ATP und zum Teil in nicht nutzbare Energie (Wärme) übergeführt.
]
#nfrage(n: 3)[
  Definition Anreicherungskultur und Reinkultur
]
#antwort[
  *Anreicherungskultur:*
  Wachstumsbedingungen, für einen Mikroorganismus oder eine Gruppe günstiger als für andere.

  Ziel: Anreicherung eines Organismus oder einer bestimmten Gruppe

  *Reinkultur:*
  Wachstum eines Klons von einem bestimmten Organismus unter Ausschluss jeglicher Individuen anderer Arten oder Stämme von Organismen erfordert Sicherstellung, dass die Kultur aus einer einzigen Zelle hervorgegangen ist
]

#nfrage(n: 3)[
  Bedeutung von MO für die Umwelt
]
#antwort[
  - dominante Lebensform auf Planeten
  - Evolution des Lebens vorallem mikrobiell
  - überall besiedelt, auch extrem Habitate
  - essentiell für Gesundheit (Darmbiom)
  - biologische Abbauprozesse
  - Pathogenität

]

#nfrage(n: 3)[
  Mikroskopieverfahren
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

#nfrage(n: 3)[
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

#nfrage(n: 3)[
  Synergismus
]
#antwort[
  Häufig kann ein Stoff von einer Bakterienart allein nicht vollständig abgebaut werden. Das
  Produkt kann aber von einer anderen Art weiter verwertet werden.
  Mikroorganismengemeinschaften können somit gemeinschaftlich Kontaminanten durch
  schrittweisen Teilabbau mineralisieren.
]

#nfrage(n: 3)[
  Definition Infektion
]
#antwort[
  Schädigung durch infektiösen Erreger.
  Eindringen und Vermehrung eines infektiösen Erregers (MO) in einen Wirtorganismus.
  Reaktion des Wirtes. (Kann zu einer Erkrankung führen oder nicht)
  Achtung: Infektion ist nicht gleich Infektionserkrankung

  Siehe @vergleich-chemischer-und-mikrobiologischer-gefährdungen
]

#nfrage(n: 3)[
  Was bedeutet Zoonose?
]
#antwort[
  Übertragung von Erregern von Tieren auf Menschen
]

#nfrage(n: 3)[
  3 Möglichkeiten wie Entstehung von Krankheitserregern erklärt werden kann.
]
#antwort[
  - MO speziell um Mensch zu schaden
  - MO versuchen Gleichgewicht herzustellen. Bei Ungleichgewicht kommt es zur Krankheit.
  - Mensch ist zufälliger wirt des MO
]

#nfrage(n: 3)[
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

#nfrage(n: 3)[
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

#nfrage(n: 3)[
  Erkläre Begriff AOC und den Zusammenhang mit Verschleimungen in Wasserleitungen. (Wiederverkeimung)
]

#antwort[
  / AOC: Assimilierbarer organischer Kohlenstoff
  AOC gilt als Schlüsselparameter, um die Anzahl der Bakterien im Trinkwasser und dessen mikrobiologische Stabilität zu kontrollieren.

  Selbst geringe Mengen an OC reichen für Bakterienwachstum.
  Wiederverkeimung in Trinkwasserleitungsrohren.
]
