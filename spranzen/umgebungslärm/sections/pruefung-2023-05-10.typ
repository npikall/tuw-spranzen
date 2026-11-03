#import "@local/spranzen:0.1.0": *

= Prüfung vom 10. Mai 2023

Prüfung VO Umgebungslärm, LVA 230.054. Notenskala: $<20$ P: 5, $>=20$ P: 4, $>=26$ P: 3,
$>=32$ P: 2, $>=37$ P: 1.

Die Antworten stammen aus der korrigierten Prüfungsarbeit im PDF (33 Punkte, Note Gut,
mit Bonuspunkten Sehr Gut). Erreichte Punkte und Anmerkungen der Korrektur sind jeweils
am Ende der Antwort vermerkt.

== Aufgabe 1: Messtechnik (12 Punkte)
#qcounter.update(0)

Frequenzbewertung

#figure(
  image("../figures/2023-05-10-diagramme.png", width: 100%),
  caption: [
    Kurven gleicher Lautstärkewahrnehmung (links) und Frequenzbewertungskurven (rechts)
    aus der Angabe. Die Beschriftung A und C im rechten Diagramm ist Teil der
    handschriftlichen Lösung.
  ],
) <fig-2023-05-10-diagramme>

#question[a) Erläutern Sie die im linken Diagramm von @fig-2023-05-10-diagramme gezeigten
  Kurven gleicher Lautstärkewahrnehmung. (4 P)]
#answer[
  Da unterschiedliche Schall-Frequenzen vom menschlichen Gehör unterschiedlich laut
  wahrgenommen werden, können jeweils Kombinationen von Frequenzen (Hz) und
  Schalldruckpegel (dB) mit der gleichen phon-Anzahl bewertet werden, da sie als gleich
  laut wahrgenommen werden. Hohe Frequenzen werden hierbei lauter wahrgenommen als tiefe.

  Im Diagramm kann nun abgelesen werden, welche Hz-dB-Kombinationen als gleich laut
  wahrgenommen werden. Sie liegen jeweils auf einer der Funktionslinien. Die Kurven werden
  aus Hörversuchen mit Proband:innen erstellt.

  _Korrektur (2,5 P): Vergleich mit 1-kHz-Referenzton (unterschiedliche Pegel) fehlt._
]

#question[b) Welche Motivation steckt hinter der Anwendung einer Frequenzbewertung? (2 P)]
#answer[
  Die Motivation ist es, nicht nur tatsächliche Schalldruckpegel zu erfassen, sondern zu
  simulieren, wie ein Mensch den Schall wahrnehmen würde. Daraus können z.B.
  gesundheitsrelevante Grenzwerte ermittelt werden. Deshalb wird mit Frequenzbewertung der
  Schall (Dauerschallpegel) an das wirkliche menschliche Hören angepasst.

  _Korrektur: 2 P._
]

#question[c) Welche Frequenzbewertungen bestehen konkret und warum wurden diese
  verschiedene Bewertungen ursprünglich eingeführt? (3 P)]
#answer[
  Es gibt mehrere Bewertungsmethoden: A-Bewertung für niedrige Lautstärken (phon),
  B-Bewertung, C- und D-Bewertung für immer höhere. Außerdem gibt es die Z-Bewertung, die
  eine unbewertete Darstellung bedeutet. Sie wurden eingeführt, um das menschliche
  Wahrnehmen bei verschiedenen Lautstärken darzustellen.

  _Korrektur: 3 P._
]

#question[d) Welche zwei Frequenzbewertungen werden heutzutage üblicherweise verwendet?
  Beschriften Sie diese beiden Bewertungskurven im rechten Diagramm von
  @fig-2023-05-10-diagramme. (3 P)]
#answer[
  Heutzutage werden hauptsächlich A- und C-Bewertung verwendet.

  _Korrektur: 2 P._
]

== Aufgabe 2: Schallemissionen (8 Punkte)
#qcounter.update(0)

#question[a) Zählen Sie wesentliche Anregungsmechanismen für die Schallentstehung bei der
  Reifen-Fahrbahn-Interaktion auf und beschreiben Sie einen dieser Anregungsmechanismen
  genauer. (5 P)]
#answer[
  - Mechanische Anregung: stick-slip, snap-slip, Radialvibration
  - Aerodynamische Anregung: air-pumping, Hohlraumresonanz

  Genauer, air-pumping: Beim air-pumping wird beim Rollen des Reifens Luft im Reifenprofil
  (void) komprimiert, die beim Abrollen stoßartig entweicht, wobei Luftvibrationen, also
  Schall, entsteht.

  _Korrektur (3,5 P): stick-slip und snap-slip sind nicht so wesentlich. Es fehlen
  tangentiale Schwingungen sowie Seitenwand- und Gürtelschwingungen._
]

#question[b) Nennen Sie drei Lärmschutzmaßnahmen, die den Oberbau von Eisenbahnstrecken
  betreffen. (3 P)]
#answer[
  - Dämpfung an Schienen (_Korrektur: Schienenstegdämpfer_)
  - Matten unter Kiesbett (_Korrektur: Unterschottermatten_)

  _Korrektur: 2 P, nur zwei Maßnahmen genannt._
]

== Aufgabe 3: Schallausbreitung (12 Punkte)
#qcounter.update(0)

#question[a) i) Schallreflexionen: Was sind glatte Oberflächen im Sinn der
  Schallreflexion? (1 P)]
#answer[
  Glatte Oberflächen sind Oberflächen, deren Unregelmäßigkeiten kleiner sind als die
  Wellenlängen des auftreffenden Schalls, weshalb dieser gerichtet reflektiert werden kann
  und nicht an den Unebenheiten in mehrere Richtungen reflektiert. Es gilt:
  Einfallswinkel $=$ Austrittswinkel.

  _Korrektur: 1 P._
]

#question[a) ii) Skizzieren Sie die Schallreflexion einer ebenen Welle an einer ebenen
  Fläche. Wie ist der Reflexionsgrad $rho$ definiert und wie hängen Reflexionsgrad $rho$
  und Absorptionsgrad $alpha$ zusammen? (3 P)]
#answer[
  #image("../figures/2023-05-10-reflexion.png", width: 70%)

  $ rho = I_r / I_e, $
  wobei $I_r$ die reflektierte und $I_e$ die einfallende Intensität ist.

  $rho + alpha = 1$: Der ganze Schall muss entweder reflektiert oder absorbiert werden.
  Wenn also ein Anteil (z.B. 40 %, $= alpha$) absorbiert wird, wird der Rest reflektiert
  (60 %, $= rho$), also $alpha + rho = "0,4" + "0,6" = 1$.

  _Korrektur: 3 P._
]

#question[a) iii) Welche wesentliche Eigenschaft zeichnet schallharte Flächen aus? Nennen
  Sie zudem drei Beispiele für schallharte Flächen. (2 P)]
#answer[
  Schallharte Flächen reflektieren den gesamten Schall, d.h. $rho = 1$ und $alpha = 0$.
  Beispiele: Beton, Asphalt, Metall.

  _Korrektur: 2 P._
]

#question[a) iv) Welche Reflexionseigenschaften weist poröser/lockerer Boden auf? (1 P)]
#answer[
  Poröser/lockerer Boden absorbiert einen Teil des Schalls, der Absorptionsgrad ist also
  hoch (z.B. nahe 1) und der Reflexionsgrad niedrig.

  _Korrektur: 1 P._
]

#question[b) i) Spiegelquellen: Erklären Sie die Methode der Spiegelquellen (inkl.
  Skizze). (3 P)]
#answer[
  #image("../figures/2023-05-10-spiegelquelle.png", width: 60%)

  Wenn der Schall(druckpegel) an einem Immissionspunkt bestimmt werden soll, dieser aber
  dazwischen reflektiert wird, kann eine gleich starke Spiegelquelle zur Berechnung
  hinzugezogen werden, die im gleichen Abstand zur Reflexionsfläche liegt wie die
  Originalquelle. Damit kann z.B. eine Absorption berücksichtigt werden.

  _Korrektur (2,5 P): gleich stark nur bei Totalreflexion; gespiegelt an der
  Reflexionsebene._
]

#question[b) ii) Wie ist die Spiegelquelle im Fall einer Totalreflexion bzw. Teilreflexion
  mit Hilfe des Absorptionsgrades $alpha$ unter der Voraussetzung inkohärenter Quellen zu
  dimensionieren? (2 P)]
#answer[
  Sie ist als $+10 dot lg(1 - alpha)$ zu dimensionieren. Das wird auf die Berechnung einer
  Schallquelle (z.B. Linienschallquelle) dazuaddiert, um eine etwaige Absorption zu
  berücksichtigen.

  _Korrektur: 2 P._
]

== Aufgabe 4: Schallberechnung (8 Punkte)
#qcounter.update(0)

#question[a) An einem Immissionsort in einer ruhigen Umgebung herrscht während der Nacht
  (22 bis 6 Uhr) ein Schalldruckpegel $L_(p,"Umg") = 40$ dB vor. Von Zeit zu Zeit ist
  jedoch lautes Hundegebell mit einem Schalldruckpegel $L_(p,"Hund") = 80$ dB zu hören.
  Wie hoch ist der äquivalente Dauerschallpegel $L_"eq"$ im Nachtzeitraum, wenn der Hund
  in einer Nacht insgesamt 15 min bellt (1 Nachkommastelle)? (3 P)]
#answer[
  Nacht: 8 h $= 28800$ s, Hund: 15 min $= 900$ s.

  $
    L_"eq" = 10 dot lg(1 / 28800 dot (28800 dot 10^4 + 900 dot 10^8))
    = "64,962" approx "65,0 dB"
  $

  _Korrektur: 3 P._
]

Ein leises Umgebungsgeräusch besitzt ein Terzspektrum mit näherungsweise gleichen
Bandpegeln von $L_(p,"Terz") = 40$ dB im Frequenzbereich von 400 Hz bis 1 kHz. Alle anderen
Terzbänder weisen deutlich geringere Bandpegel auf und können daher im Folgenden
vernachlässigt werden. @tab-2023-05-10-a-bewertung enthält die A-Bewertung für das
Terzspektrum.

#figure(
  table(
    columns: 6,
    align: right,
    table.header(
      [Terz in Hz],
      [A-Bew. in dB],
      [Terz in Hz],
      [A-Bew. in dB],
      [Terz in Hz],
      [A-Bew. in dB],
    ),
    [12,5], [-63,4], [125], [-16,1], [1250], [0,6],
    [16], [-56,7], [160], [-13,4], [1600], [1,0],
    [20], [-50,5], [200], [-10,9], [2000], [1,2],
    [25], [-44,7], [250], [-8,6], [2500], [1,3],
    [31,5], [-39,4], [315], [-6,6], [3150], [1,2],
    [40], [-34,6], [400], [-4,8], [4000], [1,0],
    [50], [-30,2], [500], [-3,2], [5000], [0,5],
    [63], [-26,2], [630], [-1,9], [6300], [-0,1],
    [80], [-22,5], [800], [-0,8], [8000], [-1,1],
    [100], [-19,1], [1000], [0,0], [10000], [-2,5],
  ),
  caption: [A-Bewertung für Terzbänder von 12,5 Hz bis 10 kHz aus der Angabe.],
) <tab-2023-05-10-a-bewertung>

#question[b) i) Berechnen Sie (auf 1 Nachkommastelle) den A-bewerteten Gesamtschallpegel
  $L_(p,A)$. (3 P)]
#answer[
  $
    L_(p,A) = 10 dot lg(10^("3,52") + 10^("3,68") + 10^("3,81") + 10^("3,92") + 10^4)
    = "45,168" approx "45,2 dB"
  $

  _Korrektur: 3 P._
]

#question[b) ii) Berechnen Sie (auf 1 Nachkommastelle) den unbewerteten Bandpegel der
  1-kHz-Oktave $L_(p,"Oktave,1kHz")$, sofern ein tonales Geräusch den 800-Hz-Terzbandpegel
  $L_(p,"Terz,800Hz")$ auf 52 dB anwachsen lässt. (2 P)]
#answer[
  $
    L_(p,"Oktave,1kHz") = 10 dot lg(10^4 + 10^("5,2") + 10^4)
    = "52,516" approx "52,5 dB"
  $

  _Korrektur (0,5 P): Der dritte Summand ist falsch, da in der 1,25-kHz-Terz ein
  vernachlässigbar geringer Bandpegel vorhanden ist._ Ohne diesen Summanden ergibt sich
  $10 dot lg(10^4 + 10^("5,2")) approx "52,3 dB"$.
]
