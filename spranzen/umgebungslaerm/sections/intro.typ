/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *

= Altfragen 10. Okt 2023

== Messtechnik
#frage[Erlautern sie den Basis- und mittleren Spitzenpegel (inkl. Definition, Index,
  Bewertungen)?]
#antwort[
  *Basispegel ($L_B$)*: Der Basispegel ist der Hintergrundgeraeuschpegel, der waehrend
  eines Messzeitraums ueberwiegend vorhanden ist. Er wird typischerweise als unteres
  Perzentil (z.B. L_90 oder L_95) der Pegelverteilung definiert - d.h. dieser Pegel wird
  in 90% bzw. 95% der Messzeit ueberschritten.

  *Mittlerer Spitzenpegel ($L_S$)*: Der mittlere Spitzenpegel ist der arithmetische
  Mittelwert aller Pegelspitzen, die deutlich ueber dem Basispegel liegen. Er
  charakterisiert die auftretenden Maximalpegel von Einzelereignissen (z.B.
  Vorbeifahrten von Fahrzeugen).

  *Index*:
  - $L_B$ fuer Basispegel
  - $L_S$ fuer mittleren Spitzenpegel

  *Bewertungen*:
  - Die Differenz zwischen Spitzenpegel und Basispegel ($L_S$ - $L_B$) gibt Aufschluss
    ueber die Schwankungsstaerke des Geraeusches
  - Grosse Differenzen deuten auf stark fluktuierenden Laerm hin, der als störender
    empfunden werden kann
  - Diese Kenngroessen werden insbesondere bei der Bewertung von Verkehrslaerm
    herangezogen
  - Sie dienen der Charakterisierung von Laermsituationen und der Planung von
    Laermschutzmassnahmen
]

#frage[Warum ist es in der Akustik haeufig erforderlich, nicht nur Einzahlwerte von
  Schalldruckpegeln, sondern Frequenzspektren zu betrachten (inkl. 2 Beispiele)?]
#antwort[
  Einzahlwerte wie der A-bewertete Gesamtpegel ($L_A$) geben nur eine summarische
  Information ueber den Schallpegel, beruecksichtigen aber nicht die frequenzabhaengige
  Zusammensetzung des Schalls. Frequenzspektren sind aus folgenden Gruenden
  erforderlich:

  *Gruende*:
  - Das menschliche Gehoer nimmt Frequenzen unterschiedlich wahr (tiefe und hohe
    Frequenzen werden bei gleichem physikalischem Pegel unterschiedlich laut empfunden)
  - Verschiedene Frequenzbereiche haben unterschiedliche Wirkungen auf den Menschen
    (z.B. Tieffrequenzlaerm kann als drueckend empfunden werden)
  - Geraeuschquellen haben charakteristische Frequenzmuster, die zur Identifikation
    beitragen
  - Laermschutzmassnahmen wirken frequenzabhaengig unterschiedlich
  - Bestimmte Frequenzen koennen zu Resonanzen oder Transmissionseffekten fuehren

  *Beispiele*:
  1. *Tieffrequenter Laerm*: Ein Geraeusch mit hohem Tieffrequenzanteil (z.B. von
    Heizungsanlagen oder Windkraftanlagen) kann bei gleichem A-bewerteten Pegel als
    stoerender empfunden werden als ein Geraeusch mit mittleren Frequenzen, da
    Tieffrequenzen schlechter gedaempft werden und durch Bauteile leichter uebertragen
    werden.

  2. *Tonhaltigkeit*: Ein Geraeusch mit ausgepraegten Tonkomponenten (z.B. ein Pfeifen
    oder Brummen bei einer bestimmten Frequenz) wird als unangenehmer empfunden als
    breitbandiges Rauschen gleichen Gesamtpegels. Dies wird durch Spektralanalyse
    erkennbar und bei der Bewertung durch Zuschlaege beruecksichtigt.
]

#frage[Welche 2 Arten von Spektren werden ueblicherweise fuer Umgebungslaerm und die
  Prognoserechnung verwendet?]
#antwort[
  - *Oktavspektren*: Unterteilen den Frequenzbereich in Oktavbaender, bei denen die
    obere Grenzfrequenz jeweils doppelt so hoch ist wie die untere. Typische
    Mittenfrequenzen sind 63 Hz, 125 Hz, 250 Hz, 500 Hz, 1000 Hz, 2000 Hz, 4000 Hz und
    8000 Hz.
  - *Terzspektren*: Bieten eine feinere Frequenzaufloesung, indem jede Oktave in drei
    Baender unterteilt wird. Dies ermoeglicht eine detailliertere Darstellung des
    Frequenzgangs und wird insbesondere bei Umgebungslaermbewertungen und
    Prognoserechnungen verwendet.

  Beide Spektraltypen sind in Normen standardisiert und entsprechen gut der
  frequenzabhaengigen Wahrnehmung des menschlichen Gehoers.
]

== Schallausbreitung

#frage[Nennen Sie die prinzipiellen Moeglichkeiten bei der Planung, um die
  Abschirmwirkung von Laermschutzwaenden zu steigern.]
#frage[Erlaeutern sie zwei dieser Moeglichkeiten im Detail (inkl. etwaiger Vor- und
  Nachteile, etwaiger Limitierungen und Skizze.)]

== Schallimmissionen
*Eine wesentliche Saeule der Umgebungslaermrichtlinie sind Laermkarten. erlautern Sie
den Begriff anhand folgender Fragen*
#frage[Zu welchem Zweck ist in der Richtlinie die Erstellung dieser Karten vorgesehen?]
#frage[Wie haufig sind laermkarten zu erstellen?]
#frage[Wie kann von diesen Groessen ein Bezug zu der Wirkung auf Menschen hergestelllt
  werden und welche Wirkungen werden in der aktuellen fassung der richtlinie
  betrachtet?]
#frage[Welche Bereiche und welche Verursacher sind bei der Kartierung zu
  beruecksichtigen?]
#frage[Wem und in welcher Form stehen die erstellten Laermkarten (in Oesterreich) zur
  verfuegung?]

== Schallberechnung
#frage[Eine Schallquelle emittiert im Wesentlichen zwei Toene, welche in einer
  Entfernung $x_1 = 10m$ im $100 "Hz"$ und im $1000 "Hz"$ Terzband die beiden
  Schalldruckbandpegeln $L_"p,100,x2"$ und $L_"p,1000,x2"$ sowie den Gesamtpegel
  $L_"p,x2"$ in einer Entfernung $x_2 = 2 "km"$ zur Schallquelle, wenn eine
  Lufttemperatur $upsilon$ von $20 degree C$ und eine Luftfeuchtigkeit $phi$ von $70%$
  sowie Windstille vorherrscht.

  Gehen Sie von freier Schallausbreitung aus und modellieren Sie die Schallquelle als
  Punktquelle ueber ideal absorbierendem Gelaende. Beruecksichtigen Sie dabei zunaechst
  die geometrische Ausbreitungdaempfung und anschliessend die Luftabsorption
  (Absorptionskoeffizienten $alpha$ finden Sie in nachfolgender Tabelle). Runden Sie die
  Ergebnisse auf 1 Nachkommastelle.]
