#import "../common.typ": *

= Altfragen 03.09.2020
== Kirchhoff'scher Satz
#frage[
  Leiten Sie den KIRCHHOFF’schen Satz für die Reaktionsenthalpie $Delta H_"Reaktion"$ und die
  Reaktionsenergie $Delta U_"Reaktion"$ unter Zuhilfenahme der Reaktionslaufzahl $xi$ und der
  Definitionen der isobaren und isochoren Wärmekapazitäten her.
]
#missing[]

#frage[
  Zur Herstellung von Synthesegas eignet sich mitunter die Dampfreformierung, eine bei
  Raumtemperatur ($T_1$) endotherme Gasphasenreaktion:
  $ ce("CH4 + H2O <=> CO + 3H2") $
  Stellen Sie einen formalen Zusammenhang für die Berechnung jener Temperatur $T_2$ auf, bei der
  $Delta H_"Reak" (T_2) = Delta H^0_"Bildung" (H_2)$ ist. In der Literatur finden Sie folgende
  temperatur- abhängige molare isobare Wärmekapazitäten (in #unit("J mol^-1 K^-1")), wobei Ihnen die
  darin enthaltenen konstanten Faktoren 𝐴 und 𝐵 bekannt sind.
  $
    C_"p,m" (ce("CH4")) = 2 A + 3 B dot T\
    C_"p,m" (ce("H2O")) = A - B dot T\
    C_"p,m" (ce("CO")) = 1/2 B dot T\
    C_"p,m" (ce("H2")) = 3 A + 1/2 B dot T\
  $
]
#missing[]

== Kreisprozess
#frage[
  Gegeben sei ein reversibler Kreisprozess, bei welchem ein ideales einatomiges Gas im ersten
  Schritt isentrop komprimiert, im zweiten Schritt isobar erwärmt, im dritten Schritt isotherm
  entspannt und schließlich isochor abgekühlt wird, sodass sich der Ausgangszustand einstellt.
  Zeichnen Sie ein p/V-Diagramm und geben Sie die Laufrichtung des Zyklus an. Beschriften Sie jeden
  Schritt mit jenem formalen Zusammenhang, der den entsprechenden Verlauf im p/V-Diagramm
  wiedergibt. Wie können Sie aus dem Diagramm graphisch die Prozessarbeit $W_"gesamt"$ ablesen?
]

#missing[]

#frage[
  Zeigen Sie formelmäßig, wie Sie die Größen des Ersten Hauptsatzes der Thermodynamik, sowie die
  Enthalpieänderung $Delta H$ ermitteln können. Fassen Sie Ihre Ergebnisse für jeden einzelnen
  Schritt sowie den gesamten Zyklus zusammen, indem Sie die zu erwartenden Größenordnungen (> 0, <
  0, = 0) in folgende Tabelle eintragen:
]
#show table.cell.where(y: 0): strong
#figure(table(
  columns: 6,
  stroke: 1pt,
  table.header(
    [], [1 #sym.arrow 2], [2 #sym.arrow 3], [3 #sym.arrow 4], [4 #sym.arrow 1], [Gesamt]
  ),
  [$Delta U$], [], [], [], [], [],
  [$Q_"rev"$], [], [], [], [], [],
  [$W_"rev"$], [], [], [], [], [],
  [$Delta H$], [], [], [], [], [],
))
#missing[]

#frage[
  Stellen Sie eine Formel für die Berechnung des thermodynamischen Wirkungsgrads 𝜂 auf, wobei Sie
  die unter b) gefundenen formalen Zusammenhänge für $Q_"rev"$ bzw. $W_"rev"$ einsetzen.
]

#missing[]

#frage[
  Wie müssten Sie den Kreisprozess anpassen, wenn die isochore Abkühlung entfallen würde und Sie
  direkt nach der isobaren Erwärmung durch Expansion zum Ausgangszustand gelangen würden, damit
  weiterhin eine Wärmezu- und -abfuhr gegeben ist?
]

#missing[]
== Phasenlehre
#frage[
  Stellen Sie den Verlauf des chemischen Potentials $mu (T)$ und der Entropie $S(T)$ beim Erstarren
  von unterkühltem Wasser bei −10 °C und 1 bar dar, wobei Sie nur die flüssige und feste Phase
  berücksichtigen und sämtlichen Kurven den passenden formalen Zusammenhang zuordnen.
]

#missing[]
#frage[
  Zeigen Sie formelmäßig, wie Sie die molare Schmelzentropie $Delta S_"Schmelz"$ für den gegebenen
  irreversiblen Phasenübergang berechnen können, wenn Ihnen die molare Standardschmelzenthalpie
  $Delta H^0_"Schmelz"$ sowie die molaren isobaren Wärmekapazitäten $C^"flüssig"_"p,m"$ und
  $C^"Eis"_"p,m"$ ($C^"flüssig"_"p,m"$ > $C^"Eis"_"p,m"$) bekannt wären.
]
#missing[]
== Heterogenes Gleichgewicht: Kalzination
#frage[
  Die technische Herstellung von reinem #ce("CaCO3") beginnt mit dem Brennen von Kalkstein, dessen
  Hauptkomponente #ce("CaCO3") ist, im Kalkofen:
  $ ce("CaCO3(s) <=> CaO_(s) + CO2(g)") $
  Man nennt diesen Vorgang, welcher für viele vergleichbare Prozesse namensgebend ist,
  „Kalzination“. Nehmen Sie an, dass Ihnen bei der Temperatur $T_1$ die
  Gleichgewichtszusammensetzung und bei $T_2$ die Gleichgewichtskonstante bezüglich der
  Stoffmengenanteile $K_x$ bekannt ist ($T_2 > T_1$).

  \
  Wie groß ist der Stoffmengenanteil $x(ce("CO2"))$, wenn man die Temperatur von $T_1$ auf
  $T_2$erhöht? _Hinweis_: Leiten Sie eine Berechnungsformel für den Formelumsatz 𝑦 her.
]
#missing[]
#frage[
  Zeigen Sie, wie Sie die Freie Standardreaktionsenthalpie $Delta G^0_"Reak"$ bei $T_2$ ermitteln
  würden. Geben Sie an, warum man das Vorzeichen der Standardreaktionsentropie $Delta S^0_"Reak"$
  bereits anhand der Reaktionsgleichung voraussagen könnte.
]
#missing[]

== Joule-Thomson Effekt
#frage[
  Der JOULE-THOMSON-Koeffizient sei gegeben durch:
  $
    mu_"J-T" = 1/C_p dot ((2a)/(R dot T) - b)
  $
  Darin sind a und b VAN-DER-WAALS-Parameter, $C_p$ ist die isobare Wärmekapazität, R die allgemeine
  Gaskonstante, T die absolute Temperatur.

  \
  Bestimmen Sie die Berechnungsformel für die Inversionstemperatur $T_i$
]
#missing[]
#frage[
  Stellen Sie den Verlauf von $T_i$ für He und #ce("N2") qualitativ in einem p/T-Diagramm dar und
  zeichnen Sie ein, wo $mu_"J-T" > 0$ und $mu_"J-T" < 0$ ist, indem Sie die zugehörigen Flächen
  entsprechend schraffieren.
]
#missing[]
#frage[
  Erklären Sie, wie Sie vorgehen müssen, um auf Grundlage des LINDE-Verfahrens He zu verflüssigen.
  Beziehen Sie sich dabei auf ihr p/T-Diagramm.
]
#missing[]
== Chemische Kinetik
#frage[
  Gegeben sei folgende Reaktion in flüssiger Phase, de bei Raumtemperatur ($T_1$) abläuft:
  $
    ce("CH2O + H2O2 -> HCOOH + H2O")
  $
  Die partiellen Reaktionsordnungen bezüglich #ce("CH2O") und #ce("H2O2") betragen jeweils 1. Mischt
  man gleiche Volumina einer #qty(1, "M") #ce("CH2O") und #qty(1, "M") #ce("H2O2")
  (Dichteunterschiede sind vernachlässigbar), so beträgt die Stoffkonzentration von #ce("HCOOH")
  #qty(0.3, "mol l^-1") nach #qty(3, "h").

  \
  Leiten Sie eine Formel für die Berechnung der Geschwindigkeitskonstante $k_1$ her und setzen Sie
  die passenden Zahlenwerte und Dimensionen ein, um die Dimension von $k_1$ anzugeben.
]
#missing[]
#frage[
  Sie führen die obige Reaktion bei höherer Temperatur ($T_2 > T_1$) durch und erhalten eine größere
  Geschwindigkeitskonstante ($k_2 > k_1$). Zeigen SAie formelmäßig, wie Sie die Aktivierungsenergie
  $E_A$ bestimmen können. Welches Vorzeichen hat $E_A$?
]
#missing[]
#frage[
]
#missing[]
#frage[
]
