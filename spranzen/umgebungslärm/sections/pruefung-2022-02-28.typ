#import "@local/spranzen:0.1.0": *

= Prüfung vom 28. Februar 2022

Prüfung VO Umgebungslärm, LVA 230.054. Notenskala: $<20$ P: 5, $>=20$ P: 4, $>=26$ P: 3,
$>=32$ P: 2, $>=37$ P: 1. Auf jede Frage muss mit einem vollständigen Satz geantwortet
werden.

Die Antworten stammen teilweise aus den handschriftlichen, nicht korrigierten Notizen auf
dem Angabeblatt und wurden anhand der Vorlesungsfolien ergänzt.

== Aufgabe 1: Grundlagen (12 Punkte)
#qcounter.update(0)

#question[a) Nennen Sie 4 (nicht redundante) Größen, mit welchen der Zustand von Gasen
  beschrieben werden kann. (2 P)]
#answer[Der Zustand eines Gases kann durch Druck $p$, Volumen $V$, Temperatur $T$ und
  Masse $m$ beschrieben werden (die Dichte $rho = m / V$ ist dazu redundant).]

#question[b) Nennen Sie 2 Proportionalitäten zwischen diesen Größen und benennen Sie
  diesen Zustandsänderungen. (3 P)]
#answer[
  - Isotherme Zustandsänderung ($T$ const): $p dot V = "const"$ (Boyle-Mariotte)
  - Isobare Zustandsänderung ($p$ const): $V / T = "const"$ (Gay-Lussac)
  - (Isochore Zustandsänderung ($V$ const): $p / T = "const"$)
]

#question[c) Was zeichnet eine adiabatische Zustandsänderung aus und warum ist sie für
  die Schallausbreitung (im hörbaren Frequenzbereich) von Bedeutung. (3 P)]
#answer[Bei der adiabatischen Zustandsänderung findet kein Wärme- bzw. Energieaustausch
  mit der Umgebung statt ($p dot V^kappa = "const"$, $kappa = c_p / c_v approx "1,4"$ für
  Luft). Sie ist für die Schallausbreitung maßgebend, weil die Kompressionen und
  Expansionen im hörbaren Frequenzbereich so rasch ablaufen, dass keine Zeit für einen
  Temperaturausgleich durch Wärmeleitung bleibt; die Schallgeschwindigkeit ergibt sich
  daher aus der adiabatischen Zustandsgleichung zu $c = sqrt(kappa R T)$.]

#question[d) Um welche Art von Wellen handelt es sich bei Schallwellen in Gasen? (2 P)]
#answer[Schallwellen in Gasen sind Longitudinalwellen (Schwingungsrichtung der Teilchen
  in Ausbreitungsrichtung), da Gase keine Scherkräfte übertragen können und daher keine
  Transversalwellen möglich sind.]

#question[e) Wie verändert sich die Schallgeschwindigkeit mit steigender Temperatur
  (qualitativ)? (2 P)]
#answer[Die Schallgeschwindigkeit steigt mit zunehmender Temperatur, da $c = sqrt(
    kappa R
    T
  )$ proportional zur Wurzel der absoluten Temperatur ist (ca. $+"0,6"$ m/s je °C).]

== Aufgabe 2: Messtechnik (12 Punkte)
#qcounter.update(0)

Bei Kondensatormikrofonen existieren im Hinblick auf den linearisierten Frequenzgang
(Entzerrung) drei verschiedene Mikrofontypen.

#question[a) Nennen Sie die drei verschiedenen Mikrofontypen und beschreiben Sie die
  zugehörigen Schallfelder, für welche die Mikrofontypen ausgelegt sind. (6 P)]
#answer[
  - *Freifeldmikrofon*: ausgelegt für das freie Schallfeld, d.h. Direktschall ohne
    Reflexionen, der aus einer Richtung (in der Regel frontal, $0 degree$ zur Membran)
    einfällt. Die Schalldrucküberhöhung durch den Druckstau vor der Membran wird
    kompensiert, sodass der unbeeinflusste Schalldruck (ohne Mikrofon) angezeigt wird.
  - *Diffusfeldmikrofon*: ausgelegt für ein diffuses Schallfeld, in dem der Schall mit
    gleicher Wahrscheinlichkeit aus allen Richtungen einfällt (z.B. Hallraummessungen).
  - *Druckfeldmikrofon*: ausgelegt für ein Druckfeld, in dem an der Membran überall
    derselbe Schalldruck (gleiche Phase und Amplitude) herrscht, z.B. in Messrohren,
    Kupplern oder bei bündigem Einbau in eine Wand bzw. bei streifendem Schalleinfall.
]

#question[b) Welcher dieser Mikrofontypen wird im Allgemeinen für Schallmessungen im
  Bereich des Umgebungslärms eingesetzt? (2 P)]
#answer[Für Umgebungslärmmessungen werden im Allgemeinen Freifeldmikrofone eingesetzt
  (Standard, zum Teil in Regelwerken gefordert).]

#question[c) Erläutern Sie die zwei wesentlichen Ursachen für eine Richtungsabhängigkeit
  der Mikrofonempfindlichkeit im mittleren und oberen Frequenzbereich? (4 P)]
#answer[
  - *Druckstau/Reflexion am Mikrofon*: Sobald die Wellenlänge in die Größenordnung der
    Mikrofonabmessungen kommt (bei 1/2"-Mikrofon ab ca. 1 kHz), wird der Schall nicht
    mehr um das Mikrofon gebeugt, sondern vor der Membran reflektiert. Es entsteht ein
    frequenz- und richtungsabhängiger Druckstau, der bei Normaleinfall ($0 degree$) am
    größten ist und bei schrägem, streifendem ($90 degree$) und rückwärtigem
    ($180 degree$) Einfall abnimmt bzw. in einen Druckabfall übergeht.
  - *Phasenunterschiede über die Membranfläche*: Die Membranauslenkung wird von der
    Gesamtkraft (Flächenintegral des Drucks) bestimmt. Bei schrägem Einfall erreicht die
    Welle die einzelnen Membranbereiche zeitversetzt; bei kleinen Wellenlängen heben sich
    die Druckanteile teilweise auf, sodass die Gesamtkraft stets kleiner als bei
    Normaleinfall ist. Der Effekt nimmt mit der Frequenz zu.
]

== Aufgabe 3: Schallausbreitung (10 Punkte)
#qcounter.update(0)

#question[a) Erklären Sie das Huygensche Prinzip und nennen Sie jenes
  Ausbreitungsphänomen, welches durch dieses Prinzip erklärt werden kann. (5 P)]
#answer[Nach dem Huygensschen Prinzip ist jeder Punkt, der von einer Wellenfront getroffen
  wird, Ausgangspunkt einer neuen, elementaren Kugelwelle mit gleicher Wellenlänge und
  gleicher Ausbreitungsgeschwindigkeit. Durch die Überlagerung (Superposition) dieser
  Elementarwellen ergibt sich wiederum die sich ausbreitende Wellenfront. Damit lässt sich
  die Beugung (Diffraktion) erklären, also das Eindringen von Schall in den Schattenbereich
  hinter Hindernissen (z.B. hinter einer Lärmschutzwand oder durch eine Wandöffnung).]

#question[b) Erläutern Sie, was die Begriffe Abschirmmaß ($D_z$) und Einfügedämmmaß
  ($D_e$) einer Wand bedeuten (qualitative Beschreibung, inkl. Skizze) und wodurch sie
  sich unterscheiden. (5 P)]
#answer[
  Skizze: Quelle S und Immissionspunkt R, dazwischen eine dünne Wand, die die
  Sichtverbindung unterbricht; Direktweg $d$ (gestrichelt, durch die Wand) und Weg über die
  Beugekante $A + B$.

  - Das *Abschirmmaß* $D_z$ ist die frequenzabhängige Schalldruckpegelminderung in R durch
    die reine Abschirmwirkung (Beugung) der Wand unter Freifeldbedingungen, ohne
    Berücksichtigung von Rand- und Umgebungsbedingungen (Boden, Reflexionen, Witterung).
  - Das *Einfügedämmmaß* $D_e$ ist die tatsächliche Pegeldifferenz in R vor und nach dem
    Einbau der Wand in einer konkreten Ausbreitungssituation; es enthält zusätzlich
    Umgebungseinflüsse wie den Wegfall bzw. die Änderung der Bodendämpfung, Reflexionen,
    Transmission und meteorologische Effekte.
  - Unterschied: $D_z$ ist eine idealisierte, reine Wandkenngröße, $D_e$ gilt für die
    konkrete Situation und ist wegen der zusätzlichen Umgebungseinflüsse meist kleiner
    als $D_z$.
]

== Aufgabe 4: Schallberechnung (6 Punkte)
#qcounter.update(0)

#question[Eine eindimensionale, harmonische Schallwelle ist gegeben durch
  $ p(x, t) = "0,283 Pa" dot cos("1570,8 s"^(-1) t - "4,689 m"^(-1) x). $
  Berechnen Sie den Schalldruckpegel $L_p$, die Frequenz $f$, die Wellenlänge $lambda$
  und die Ausbreitungsgeschwindigkeit $c$ der Schallwelle (exakte Rechnung, aber
  Ergebnisse auf 1 Kommastelle gerundet). (6 P)]
#answer[
  Aus $p(x, t) = hat(p) cos(omega t - k x)$ folgt $hat(p) = "0,283"$ Pa,
  $omega = "1570,8 s"^(-1)$, $k = "4,689 m"^(-1)$.

  $
    tilde(p) = hat(p) / sqrt(2) = "0,2001 Pa", quad
    L_p = 20 dot lg(tilde(p) / (2 dot 10^(-5) "Pa")) = "80,0 dB"
  $
  $
    f = omega / (2 pi) = "250,0 Hz", quad
    lambda = (2 pi) / k = "1,3 m", quad
    c = omega / k = lambda dot f = "335,0 m/s"
  $
]
