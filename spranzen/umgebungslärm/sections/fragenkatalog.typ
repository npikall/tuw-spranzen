#import "@local/spranzen:0.1.0": *

= Grundlagen der Akustik und Luftschall
#qcounter.update(0)

#question[Welche Größen beschreiben den Zustand von Gasen?]
#answer[
  - Druck
  - Volumen
  - Temperatur
  - Dichte / Masse

  (Druck, Volumen, Temperatur und Masse genügen; die Dichte $rho = m / V$ ist redundant.)
]

#question[Welche Proportionalitäten bestehen zwischen diesen Zustandsgrößen und wie
  heißen die zugehörigen Zustandsänderungen?]
#answer[
  - Isotherme Zustandsänderung ($T$ const, Energieaustausch): $p dot V = "const"$
  - Isobare Zustandsänderung ($p$ const): $V / T = "const"$
  - Isochore Zustandsänderung ($V$ const): $p / T = "const"$

  Zusammengefasst in der allgemeinen Gasgleichung $p V = m R T$.
]

#question[Was zeichnet eine adiabatische Zustandsänderung aus?]
#answer[Bei der adiabatischen Zustandsänderung findet kein Wärme- bzw. Energieaustausch mit der
  Umgebung statt. Es gilt $p dot V^kappa = "const"$ mit $kappa = c_p / c_v approx "1,4"$ für
  Luft. Sie tritt vor allem bei kurzen, raschen Zustandsänderungen auf.]

#question[Warum ist die adiabatische Zustandsänderung für die Schallausbreitung im
  hörbaren Frequenzbereich wichtig?]
#answer[Im hörbaren Frequenzbereich laufen Kompression und Expansion so schnell ab, dass keine
  Zeit für einen Temperaturausgleich durch Wärmeleitung bleibt; die adiabatische
  Zustandsänderung ist daher vorherrschend. Aus der (linearisierten) adiabatischen
  Zustandsgleichung folgt die Schallgeschwindigkeit $c = sqrt(kappa p_0 / rho_0) =
  sqrt(kappa R T)$ (z.B. ca. 339 m/s bei 286 K).]

#question[Um welche Art von Wellen handelt es sich bei Schallwellen in Gasen?]
#answer[Schallwellen in Gasen sind Longitudinalwellen (Schwingungsrichtung in
  Ausbreitungsrichtung), da Gase keine Scherkräfte übertragen; in Luft sind ausschließlich
  Longitudinalwellen möglich.]

#question[Wie verändert sich die Schallgeschwindigkeit mit steigender Temperatur
  qualitativ?]
#answer[Die Schallgeschwindigkeit steigt mit der Temperatur, da $c = sqrt(kappa R T)
  tilde sqrt(T)$ (absolute Temperatur); näherungsweise $c approx "331,5" + "0,6" dot
  theta$ in m/s mit $theta$ in °C.]

#question[Aus welchen Anteilen setzt sich der Luftdruck im Schallfeld zusammen?]
#answer[Der Luftdruck im Schallfeld setzt sich aus dem statischen Luftdruck (Ruhegröße $p_0$)
  und dem überlagerten Wechselanteil, dem Schalldruck $tilde(p)$, zusammen:
  $p_"ges" = p_0 + tilde(p)$.]

#question[Welche Größenordnungen haben diese Luftdruckanteile bei lauten Geräuschen?]
#answer[Der statische Luftdruck beträgt ca. $10^5$ Pa (1013 hPa), der Schalldruck selbst bei
  sehr lauten Geräuschen nur einige Pa bis einige 10 Pa (Effektivwert, z.B. 2 Pa bei
  100 dB, 20 Pa bei 120 dB). Der Wechselanteil ist also um ca. 4 bis 5 Zehnerpotenzen
  kleiner als der statische Druck.]

#question[Welcher Anteil des Luftdrucks ist gemeint, wenn vom Schalldruck gesprochen
  wird?]
#answer[Mit Schalldruck ist der Wechselanteil des Luftdrucks gemeint (meist als Effektivwert),
  nicht der statische Luftdruck.]

#question[Was versteht man unter der Schallschnelle?]
#answer[Die Schallschnelle $v$ ist die Wechselgeschwindigkeit, mit der die Luftteilchen um ihre
  Ruhelage schwingen ($v = (partial xi) / (partial t)$, Geschwindigkeit der Auslenkung). Sie
  ist nicht mit der Schallgeschwindigkeit $c$ (Ausbreitungsgeschwindigkeit der Welle) zu
  verwechseln.]

#question[In welcher Größenordnung liegt die Schallschnelle bei lauten Geräuschen?]
#answer[Bei lauten Geräuschen (z.B. 100 dB, $tilde(p) approx 2$ Pa) liegt die Schallschnelle bei
  $v = tilde(p) / (rho c) approx 2 / 410 approx 5 dot 10^(-3)$ m/s, also im Bereich weniger
  mm/s.]

#question[Welcher mathematische Zusammenhang besteht bei ebenen Wellen zwischen
  Schallschnelle und Schalldruck?]
#answer[Für ebene Wellen gilt $p = rho_0 c dot v$ bzw. $v = p / (rho_0 c)$; Schalldruck und
  Schallschnelle sind in Phase und zueinander proportional.]

#question[Wie heißt der Proportionalitätsfaktor aus Schallgeschwindigkeit und
  stationärer Dichte des Mediums?]
#answer[Das Produkt $Z = rho_0 c$ heißt Wellenwiderstand bzw. akustische Impedanz
  (Feldimpedanz, Kennimpedanz) mit der Einheit $"N s/m"^3$ (für Luft bei 25 °C ca.
  $410 "N s/m"^3$).]

#question[Was beschreibt dieser Proportionalitätsfaktor?]
#answer[Der Wellenwiderstand ist eine Eigenschaft des Ausbreitungsmediums und beschreibt den
  Widerstand, den das Medium der Wellenausbreitung entgegensetzt (Verhältnis von Schalldruck
  zu Schallschnelle).]

#question[Welche Größe erhält man bei einer ebenen Welle aus Schallschnelle ·
  Schallgeschwindigkeit · Dichte?]
#answer[Man erhält den Schalldruck: $p = v dot c dot rho_0$.]

#question[Welche Größenordnung haben Schallschnelle und Auslenkung bei Geräuschen im
  mittleren Frequenzbereich?]
#answer[Bei lauten Geräuschen (ca. 100 dB) beträgt die Schallschnelle einige mm/s (ca.
  5 mm/s). Die Auslenkung $xi = v / omega$ liegt bei 1 kHz bei
  $5 dot 10^(-3) / (2 pi dot 1000) approx 1 mu"m"$, also im Bereich von Mikrometern oder
  darunter.]

#question[Erklären Sie den Unterschied zwischen Lärm und Schall.]
#answer[Schall bezeichnet physikalisch die mechanischen Schwingungen eines elastischen Mediums
  (Druckschwankungen in Luft) und ist objektiv messbar. Lärm ist Schall, der als störend,
  belästigend oder gesundheitsschädlich empfunden wird; ob Schall zu Lärm wird, hängt von der
  subjektiven Wahrnehmung ab (z.B. Gebirgsbach vs. Asphaltsäge bei ähnlichem Pegel).]

#question[Welcher Verkehrsträger wird am häufigsten als Hauptlärmquelle wahrgenommen und
  warum?]
#answer[Am häufigsten wird der Straßenverkehr als Hauptlärmquelle genannt (Mikrozensus 2023:
  ca. 40,6 % der durch Lärm Gestörten, gegenüber Flug 4,7 % und Schiene 3,1 %). Gründe sind
  das sehr dichte Straßennetz (ca. 128 000 km gegenüber ca. 5600 km Schiene), die Nähe zu
  nahezu allen Wohngebäuden, hohe Verkehrsmengen und die zeitlich nahezu durchgehende
  Belastung.]

#question[Welche unterschiedlichen Prägungen bzw. regionalen Unterschiede gibt es in der
  Wahrnehmung von Ruhe bzw. Lärm?]
#answer[Die Lärmstörung ist abhängig vom Urbanisierungsgrad: In Städten bzw. dicht besiedelten
  Gebieten fühlen sich deutlich mehr Menschen gestört als in ländlichen Gebieten, und auch
  die dominierenden Lärmquellen unterscheiden sich (Stadt: Straßenverkehr, Nachbarn, Gewerbe;
  Land: eher Einzelquellen). Zudem gibt es Unterschiede nach Altersklassen, und die
  Erwartungshaltung an Ruhe ist von Prägung und Wohnumfeld abhängig.]

#question[Warum wird Lärm als subjektiv empfundener, störender oder
  gesundheitsschädlicher Schall beschrieben?]
#answer[Ob ein Geräusch als Lärm empfunden wird, ist nicht allein vom Schallpegel abhängig,
  sondern auch von Tageszeit, Tätigkeit, Einstellung zur Quelle, Informationsgehalt,
  Vorbelastung und persönlicher Empfindlichkeit. Daher ist Lärm subjektiv; da er aber auch
  objektiv nachweisbare gesundheitliche Wirkungen hat (Schlafstörung, Herz-Kreislauf), wird
  er als störender oder gesundheitsschädlicher Schall definiert.]

#question[Welche drei idealisierten Schallquellentypen werden zur Modellierung realer
  Schallquellen verwendet?]
#answer[Verwendet werden die Flächenschallquelle, die Linienschallquelle und die
  Punktschallquelle.]

#question[Welche geometrischen Formen weisen Flächen-, Linien- und Punktschallquellen
  auf?]
#answer[Die Flächenschallquelle ist eine (unendlich) ausgedehnte Ebene, die Linienschallquelle
  eine (unendlich) ausgedehnte Linie und die Punktschallquelle ein Punkt.]

#question[Wie breiten sich Flächen-, Linien- und Punktschallquellen im dreidimensionalen
  Raum aus?]
#answer[Die Flächenquelle erzeugt ebene Wellen (Energietransport senkrecht zur Fläche), die
  Linienquelle zylinderförmige Wellen (radial senkrecht zur Linie) und die Punktquelle
  kugelförmige Wellen (radial in alle Richtungen).]

#question[Erläutern Sie den Begriff Energiefluss allgemein.]
#answer[Der Energiefluss ist die Energiemenge, die pro Zeiteinheit senkrecht durch eine
  betrachtete Fläche strömt (Einheit W). Bezieht man ihn auf die Fläche, erhält man die
  Schallintensität $I$ (Energieflussdichte, $"W/m"^2$). Ohne Verluste bleibt der gesamte
  Energiefluss durch jede Hüllfläche um die Quelle gleich der Schallleistung $P$.]

#question[Veranschaulichen Sie die Flächen konstanten Energieflusses bei Flächen-,
  Linien- und Punktschallquellen anhand von Skizzen.]
#answer[
  - Flächenquelle: parallele Ebenen zur Quelle, durch Teilflächen $S$ fließt in jedem
  Abstand derselbe Energiefluss ($I = P / S = "const"$).
  - Linienquelle: koaxiale Zylindermäntel um die Linie, Fläche je Länge $2 pi r$
    ($I = P' / (2 pi r)$).
  - Punktquelle: konzentrische Kugelschalen, Fläche $4 pi r^2$ ($I = P / (4 pi r^2)$).
]

#question[Wie verhält sich der Schalldruck p in Abhängigkeit von der Entfernung r im
  Fernfeld bei Flächen-, Linien- und Punktschallquellen?]
#answer[Im Fernfeld gilt $I tilde p^2$:
  - Flächenquelle: $p = "const"$ (kein Pegelabfall),
  - Linienquelle: $p tilde 1 / sqrt(r)$ ($-3$ dB je Abstandsverdopplung),
  - Punktquelle: $p tilde 1 / r$ ($-6$ dB je Abstandsverdopplung).
]

#question[Ab welcher Entfernung r kann von Fernfeldbedingungen ausgegangen werden?]
#answer[Fernfeldbedingungen liegen vor, wenn der Abstand groß gegenüber der Wellenlänge
  ($r >> lambda / (2 pi)$ bzw. $k r >> 1$) und groß gegenüber der maximalen Abmessung $d$
  der Quelle ist ($r >> d$). In der Praxis wird eine Punktquellennäherung bereits bei
  wenigen Wellenlängen und einigen Quellabmessungen Abstand verwendet; bei
  Umgebungslärmfragen ist die Fernfeldbedingung in der Regel erfüllt.]

#question[Welche Rolle spielt die Wellenlänge bei der Beurteilung, ob
  Fernfeldbedingungen vorliegen?]
#answer[Im Nahfeld sind Schalldruck und Schnelle nicht in Phase und der Pegelabfall folgt nicht
  den einfachen Abstandsgesetzen. Erst bei Abständen, die groß gegenüber der Wellenlänge
  sind, gilt wie bei der ebenen Welle $Z = rho c$. Da tiefe Frequenzen große Wellenlängen
  haben, ist die Fernfeldbedingung für die tiefste relevante Frequenz zu prüfen.]

= Kenngrößen, Pegel und Bewertungen
#qcounter.update(0)

#question[Was ist der äquivalente Dauerschallpegel?]
#answer[Der (energie)äquivalente Dauerschallpegel $L_"eq"$ (Mittelungspegel) ist jener konstante
  Pegel, der bei ununterbrochener Andauer über den betrachteten Zeitraum $T$ die gleiche
  Schallenergie enthält wie das tatsächliche, schwankende Geräusch.]

#question[Wie wird der äquivalente Dauerschallpegel aus einem gegebenen
  Schalldruckverlauf berechnet?]
#answer[$
    L_"eq,T" = 10 dot lg(1 / T integral_0^T p^2(t) / p_0^2 dif t) quad "bzw." quad
    L_"eq,T" = 10 dot lg(1 / T integral_0^T 10^(L(t) / 10) dif t)
  $
  mit $p_0 = 2 dot 10^(-5)$ Pa; bei diskreten Abschnitten
  $L_"eq" = 10 dot lg(1 / T sum_i T_i dot 10^(L_i / 10))$. Eine Zeitbewertung ist nicht
  erforderlich; für $L_"Aeq"$ wird der A-bewertete Schalldruck verwendet.]

#question[Welche Bedeutung hat der äquivalente Dauerschallpegel?]
#answer[Der äquivalente Dauerschallpegel ist die zentrale Kenngröße zur Beurteilung von
  zeitlich schwankenden Geräuschen (z.B. Verkehrslärm) und Basis der Lärmindizes
  ($L_"day"$, $L_"evening"$, $L_"night"$, $L_"den"$) sowie vieler Grenzwerte. Er
  berücksichtigt die Gesamtenergie, also Pegel und Dauer bzw. Häufigkeit von Ereignissen.]

#question[Was bedeuten Maximalpegel und Spitzenpegel?]
#answer[
  - *Maximalpegel* („max“): höchster Wert des zeitbewerteten Schallpegels im betrachteten
  Zeitraum (meist Zeitbewertung Fast, Frequenzbewertung A, z.B. $L_(A F,max)$).
  - *Spitzenpegel* („peak“): höchster Pegelwert ohne Zeitbewertung, d.h. aus dem höchsten
    Momentanwert (Betrag) des Schalldrucks, z.B. $L_(C,"peak")$; Maß für die mechanische
    Gehörbelastung (Arbeitnehmerschutz), oft mit A- oder C-Bewertung.
]

#question[Wodurch unterscheiden sich Maximalpegel und Spitzenpegel?]
#answer[Der Maximalpegel basiert auf zeitbewerteten Effektivwerten (exponentielle Mittelung über
  die Zeitkonstante), der Spitzenpegel auf den Momentanwerten des Schalldrucks ohne
  Zeitbewertung.]

#question[Welcher der beiden Pegel liefert bei Geräuschen stets höhere Werte und warum?]
#answer[Der Spitzenpegel liefert stets höhere Werte, da der höchste Momentanwert immer größer
  oder gleich dem zeitbewerteten Effektivwert ist (bei einem Sinus ist der Spitzenwert um
  den Faktor $sqrt(2)$, d.h. 3 dB, höher; zudem dämpft die Zeitbewertung kurze Spitzen).]

#question[Was ist der Basispegel?]
#answer[Der Basispegel (Index „95“, z.B. $L_(A F,95)$) ist der Pegel, der in 95 % der Messzeit
  überschritten wird; er beschreibt das Hintergrundgeräusch.]

#question[Was ist der mittlere Spitzenpegel?]
#answer[Der mittlere Spitzenpegel (Index „1“ bzw. „01“, z.B. $L_(A F,1)$) ist der Pegel, der in
  1 % der Messzeit überschritten wird; er beschreibt die regelmäßig auftretenden
  Pegelspitzen.]

#question[Welche Definitionen, Indizes und Bewertungen gehören zu Basispegel und
  mittlerem Spitzenpegel?]
#answer[Beide werden aus der Pegelstatistik (Summenhäufigkeit des zeitbewerteten Pegels)
  ermittelt. Basispegel: Index 95, mittlerer Spitzenpegel: Index 1 (bzw. 01). Es ist eine
  Zeitbewertung erforderlich (im Allgemeinen Fast), meist mit A-Bewertung, z.B.
  $L_(A F,95)$ und $L_(A F,1)$.]

#question[Warum ist es in der Akustik oft notwendig, Frequenzspektren statt nur
  Einzahlwerte zu betrachten?]
#answer[Viele akustische Effekte sind frequenzabhängig (Luftabsorption, Beugung bzw.
  Abschirmung, Absorption von Materialien, Wahrnehmung) und können durch einen Einzahlwert
  nicht abgebildet werden. Im Frequenzbereich sind solche Effekte nachvollziehbar und mit
  geringem Aufwand berechenbar (Prognosemodelle), außerdem lassen sich Töne und Störgeräusche
  identifizieren.]

#question[Welche zwei Beispiele zeigen, warum Spektren gegenüber Einzahlwerten wichtig
  sind?]
#answer[
  - Luftabsorption: Hohe Frequenzen werden über große Entfernungen viel stärker gedämpft
  als tiefe.
  - Schallabschirmung (Beugung): Das Abschirmmaß einer Lärmschutzwand steigt mit der
    Frequenz.
  - (Absorptionsvermögen von Materialien, das bei porösen Absorbern zu tiefen Frequenzen
    stark abnimmt.)
]

#question[Welche zwei Arten von Spektren werden üblicherweise für Umgebungslärm und
  Prognoserechnung verwendet?]
#answer[Terzbandspektren und Oktavbandspektren (gefilterte Spektren mit konstanter relativer
  Bandbreite nach EN 61260).]

#question[Was ist die Motivation hinter der Anwendung einer Frequenzbewertung?]
#answer[
  da menschliches Gehör unterschiedlich Sensitiv zu Laerm ist und Umgebungslärm ja
  Lärm = Schall, der als störend oder gesundheitsschädlich empfunden wird definiert ist,
  es also um die Wahrnehmung des Schalls und nicht den tatsächlichen Schalldruckpegel
  geht -> z.B. gesundheitsrelevante Grenzwerte ermittelt

  deshalb mittels frequenzbewertung des schall (dauerschallpegel) an das menschliche
  gehör angepasst -> wahrnehmung simuliert.
]

#question[Welche Frequenzbewertungen gibt es?]
#answer[
  - A-Bewertung
  - B-Bewertung
  - C-Bewertung
  - D-Bewertung

  - Z-Bewertung
]

#question[Warum wurden verschiedene Frequenzbewertungen ursprünglich eingeführt?]
#answer[Die Kurven gleicher Lautstärkewahrnehmung haben je nach Lautstärke eine unterschiedliche
  Form (bei niedrigen Pegeln ist das Gehör für tiefe Frequenzen deutlich unempfindlicher als
  bei hohen Pegeln). Daher wurden ursprünglich verschiedene Bewertungen eingeführt, die
  jeweils grob dem Kehrwert der Kurven für einen Lautstärkebereich entsprechen: A für
  niedrige (20–40 phon), B für mittlere (50–70 phon), C für hohe (80–90 phon) und D für sehr
  hohe Lautstärken (Fluglärm).]

#question[Welche zwei Frequenzbewertungen werden heute üblicherweise verwendet?]
#answer[Heute werden üblicherweise die A-Bewertung und die C-Bewertung verwendet (quantitativ
  festgelegt in ÖNORM EN 61672-1).]

#question[Wie sind Kurven gleicher Lautstärkewahrnehmung zu erläutern?]
#answer[Die Kurven gleicher Lautstärkewahrnehmung (Isophonen) verbinden Kombinationen aus
  Frequenz und Schalldruckpegel, die als gleich laut empfunden werden. Sie wurden in
  Hörversuchen ermittelt: Probanden wurde ein 1-kHz-Referenzton mit bestimmtem Pegel
  vorgespielt und sie stellten den Pegel eines zweiten Tons anderer Frequenz so ein, dass
  beide gleich laut wirkten; variiert wurden die Frequenz des zweiten Tons und der Pegel des
  Referenztons. Der Lautstärkepegel in phon entspricht dem Schalldruckpegel des gleich laut
  empfundenen 1-kHz-Tons. Das Gehör ist im Bereich 2–5 kHz am empfindlichsten und zu tiefen
  Frequenzen hin (besonders bei niedrigen Pegeln) deutlich unempfindlicher.]

#question[Welche beiden gebräuchlichen Zeitbewertungen gibt es?]
#answer[Gebräuchlich sind die Zeitbewertungen Fast (F) und Slow (S); die Impulse-Bewertung (I)
  wurde aus der ÖNORM EN 61672-1 entfernt.]

#question[Welche Zeitkonstanten haben die gebräuchlichen Zeitbewertungen?]
#answer[Fast: $tau = 125$ ms, Slow: $tau = 1$ s (Impulse: 35 ms für den Pegelanstieg und 1,5 s
  für den Pegelabfall).]

#question[Wie unterscheiden sich die Wirkungen der Zeitbewertungen bei fluktuierenden
  Geräuschen?]
#answer[Die Fast-Bewertung folgt Schalldruckänderungen rascher und zeigt mehr Details sowie
  höhere Spitzen. Die Slow-Bewertung reagiert träger, wirkt als stärkerer Tiefpass und
  liefert einen glatteren, weniger detailreichen Verlauf; Pegelspitzen kurzer Impulse werden
  stärker gedämpft.]

#question[Welche Kenngrößen für akustische Signale erfordern eine Zeitbewertung?]
#answer[Eine Zeitbewertung erfordern der Maximalpegel ($L_(A F,max)$), der kennzeichnende
  Spitzenpegel ($L_"Sp"$, Fast) und die Kenngrößen der Pegelstatistik, also Basispegel
  ($L_(A F,95)$) und mittlerer Spitzenpegel ($L_(A F,1)$). Nicht erforderlich ist sie bei
  $L_"eq"$, SEL und Spitzenpegel (peak).]

#question[Wie verändern sich Signalverläufe bei Anwendung der gebräuchlichen
  Zeitbewertungen?]
#answer[Durch die exponentielle Zeitbewertung werden rasche Pegeländerungen geglättet: Anstiege
  werden verzögert, Abfälle verlaufen abgeflacht (exponentiell abklingend) und kurze
  Pegelspitzen erscheinen niedriger. Je größer die Zeitkonstante (Slow), desto glatter und
  verzögerter der Verlauf und desto niedriger die angezeigten Spitzen.]

#question[Wie nennt man die akustische Kenngröße, die auch als SEL bezeichnet wird?]
#answer[Der SEL (Sound Exposure Level) heißt Schallereignispegel bzw.
  Schallexpositionspegel.]

#question[Woran erkennt man bei Formelzeichen in üblicher Schreibweise, dass es sich um
  einen SEL handelt?]
#answer[Am Index „E“ im Formelzeichen, z.B. $L_E$ bzw. $L_"AE"$ (A-bewertet).]

#question[Erklären Sie die physikalische Definition des Schallereignispegels bzw.
  Schallexpositionspegels SEL.]
#answer[Der SEL ist jener Pegel, der den gesamten Energieinhalt eines Schallereignisses
  beliebiger Dauer auf eine Bezugsdauer von $T_0 = 1$ s bezieht:
  $ L_E = 10 dot lg(1 / T_0 integral_(t_1)^(t_2) p^2(t) / p_0^2 dif t) $
  Er ermöglicht den Vergleich von Ereignissen unterschiedlicher Dauer.]

#question[Wie hängt der SEL mit dem äquivalenten Dauerschallpegel und der Ereignisdauer
  zusammen?]
#answer[$ L_E = L_"eq,T" + 10 dot lg(T / T_0) $ mit der Ereignisdauer $T$ und $T_0 = 1$ s.]

#question[Liefert eine 60 s dauernde Zugvorbeifahrt mit niedrigerem Vorbeifahrtspegel
  oder eine 5 s dauernde Zugvorbeifahrt mit höherem Vorbeifahrtspegel den höheren SEL?
  Begründen Sie.]
#answer[Es kommt auf die Pegeldifferenz an: Wegen $L_E = L_"eq" + 10 dot lg(T / "1 s")$ hat die
  60-s-Vorbeifahrt einen Dauerbonus von $10 dot lg(60 / 5) = "10,8 dB"$ gegenüber der
  5-s-Vorbeifahrt. Ist der Vorbeifahrtspegel der kurzen Fahrt um weniger als 10,8 dB höher,
  liefert die lange Vorbeifahrt den höheren SEL, bei mehr als 10,8 dB die kurze; bei genau
  10,8 dB sind beide gleich.]

#question[Worauf ist bei der Ermittlung des SEL von sehr kurzen Zugvorbeifahrten zu
  achten?]
#answer[Bei sehr kurzen Vorbeifahrten muss das Integrationsintervall den gesamten maßgeblichen
  und zuordenbaren Energieinhalt umfassen, also auch An- und Abklingen des Pegels (z.B. bis
  der Pegel 10 dB unter dem Maximum liegt). Wird nur die reine Vorbeifahrtsdauer (über
  Puffer) verwendet, wird ein Teil der Energie abgeschnitten und der SEL unterschätzt.
  Gleichzeitig darf das Intervall nicht so lang sein, dass Hintergrundgeräusche oder andere
  Quellen maßgeblich beitragen.]

#question[Warum muss die betrachtete Messdauer bei SEL-Berechnungen den maßgeblichen
  Energiegehalt des Ereignisses vollständig abdecken?]
#answer[Der SEL beschreibt die Gesamtenergie des Ereignisses. Wird ein Teil davon nicht
  erfasst, ist der SEL zu niedrig, und daraus berechnete Mittelungspegel (z.B. über
  Zugzahlen) werden unterschätzt; der SEL muss unabhängig von der gewählten Messdauer sein,
  solange das Ereignis vollständig erfasst ist.]

= Messtechnik und Messgeräte
#qcounter.update(0)

#question[Warum werden Kondensatormikrofone häufig als Messmikrofone in
  Schallpegelmessern verwendet?]
#answer[Kondensatormikrofone sind der einzige Mikrofontyp, der die Genauigkeitsanforderungen der
  Normung erfüllen kann: Sie haben einen sehr linearen, breiten Frequenzgang, eine hohe
  Langzeitstabilität und einen großen Dynamikbereich. Sie werden daher in geeichten
  Schallpegelmessern und genauen Messgeräten verwendet.]

#question[Welche Nachteile haben Kondensatormikrofone gegenüber anderen
  Mikrofonbauformen?]
#answer[Sie sind aufwändig in der Herstellung und damit teuer, mechanisch empfindlich (dünne
  Membran, Luftspalt von wenigen Zehntel Mikrometern) und feuchteempfindlich, und sie
  benötigen eine Polarisationsspannung und einen Vorverstärker.]

#question[Wie verändern sich Empfindlichkeit und erfassbarer Schalldruckbereich mit dem
  Mikrofondurchmesser?]
#answer[Mit größerem Durchmesser steigt die Empfindlichkeit (Übertragungsfaktor, z.B. 1/2":
  12,5 mV/Pa, 1": 50 mV/Pa), gleichzeitig sinken der minimal und der maximal erfassbare
  Schalldruck und die obere Frequenzgrenze (1": bis ca. 18 kHz, 1/2": bis 40 kHz). Kleine
  Mikrofone erfassen hohe Pegel und Frequenzen, große leise Geräusche.]

#question[Welche Mikrofonbaugröße hat sich bei Umgebungslärmmessungen als Standard
  etabliert?]
#answer[Als Standard hat sich das 1/2"-Mikrofon (12,7 mm Durchmesser) etabliert.]

#question[Warum hat sich diese Mikrofonbaugröße etabliert?]
#answer[Es bietet einen guten Kompromiss: Es erfasst das gesamte hörbare Spektrum (ca.
  4 Hz bis 40 kHz), hat einen großen Dynamikbereich (ca. 22–160 dB(A)), eine ausreichende
  Empfindlichkeit und ist klein genug, um das Schallfeld nur gering zu stören.]

#question[Welche drei Mikrofontypen gibt es hinsichtlich des linearisierten
  Frequenzgangs bzw. der Entzerrung?]
#answer[Freifeldmikrofone, Diffusfeldmikrofone und Druckfeldmikrofone.]

#question[Für welche Schallfelder sind diese Mikrofontypen ausgelegt?]
#answer[
  - Freifeldmikrofon: freies Schallfeld (Direktschall aus einer Richtung, meist frontal,
  ohne Reflexionen), kompensiert die Druckerhöhung vor der Membran.
  - Diffusfeldmikrofon: diffuses Schallfeld (Schalleinfall gleichmäßig aus allen
    Richtungen, z.B. Hallraum).
  - Druckfeldmikrofon: Druckfeld (gleicher Schalldruck an der gesamten Membran, z.B.
    Messrohre, Kuppler, Wandmontage bzw. streifender Einfall).
]

#question[Welcher Mikrofontyp wird allgemein für Umgebungslärmmessungen eingesetzt?]
#answer[Für Umgebungslärmmessungen wird das Freifeldmikrofon eingesetzt.]

#question[Welche Ursachen führen im mittleren und oberen Frequenzbereich zu einer
  Richtungsabhängigkeit der Mikrofonempfindlichkeit?]
#answer[
  - Druckstau bzw. Reflexion vor der Membran: Ab Wellenlängen in der Größenordnung der
  Mikrofonabmessungen wird der Schall nicht mehr um das Mikrofon gebeugt; der Druckstau ist
  bei Normaleinfall am größten und nimmt bei schrägem, streifendem und rückwärtigem Einfall
  ab.
  - Unterschiedliche Phasenlage über die Membranfläche bei schrägem Einfall: Die Gesamtkraft
    (Flächenintegral des Drucks) ist kleiner als bei Normaleinfall, umso stärker, je höher
    die Frequenz.
]

#question[Wann ist bei eichpflichtigen Schallpegelmessern eine Nacheichung
  erforderlich?]
#answer[Eine Nacheichung ist nach Ablauf der Nacheichfrist erforderlich, die für akustische
  Messgeräte 2 Jahre beträgt.]

#question[Wer ist für die Nacheichung verantwortlich?]
#answer[Verantwortlich ist, wer das eichpflichtige Messgerät verwendet oder bereithält
  (§ 7 Maß- und Eichgesetz).]

#question[Wer darf eine Nacheichung durchführen?]
#answer[Die Nacheichung dürfen nur das Bundesamt für Eich- und Vermessungswesen (BEV) bzw. dazu
  ermächtigte oder akkreditierte Eichstellen durchführen.]

#question[Woran erkennt man einen Schallpegelmesser mit gültiger Eichung?]
#answer[An der Kennzeichnung (Stempelung bzw. Eichmarke mit Jahreszahl) gemäß der Festlegung bei
  der Gerätezulassung; die Nacheichfrist darf nicht abgelaufen und die Stempel dürfen nicht
  verletzt sein.]

#question[Was ist vor jeder Messung mit einem geeichten Schallpegelmesser
  durchzuführen?]
#answer[Vor jeder Verwendung ist eine Justierung mit einer geeichten Prüfschallquelle
  (Kalibrator, z.B. 94 dB bei 1 kHz) durchzuführen; auch nach der Messung wird die Anzeige
  kontrolliert.]

#question[Wie nennt man diese Überprüfung vor der Messung?]
#answer[Diese Überprüfung bzw. Justierung nennt man Kalibrierung.]

#question[Warum wird bei modernen Schallpegelmessern eine Abtastung durchgeführt?]
#answer[Moderne Schallpegelmesser arbeiten digital; für die digitale Signalverarbeitung
  (Frequenz- und Zeitbewertung, Effektivwert, Spektren, Mittelungspegel, Speicherung) muss
  das analoge Mikrofonsignal in ein zeitdiskretes Signal überführt werden.]

#question[Was gibt die Abtastfrequenz an?]
#answer[Die Abtastfrequenz $f_S$ (Samplingrate) gibt an, wie viele Momentanwerte pro Sekunde
  erfasst werden; ihr Kehrwert ist der zeitliche Abstand der Abtastungen.]

#question[Wie ist die Abtastfrequenz zu wählen, wenn ein Frequenzbereich von 50 Hz bis
  16 kHz erfasst werden soll?]
#answer[Nach dem Nyquist-Shannon-Abtasttheorem muss $f_S$ mehr als das Doppelte der höchsten
  Signalfrequenz betragen: $f_S > 2 dot "16 kHz" = "32 kHz"$, praktisch z.B. 48 kHz (bzw.
  44,1 kHz), um Aliasing zu vermeiden.]

#question[Mit welchem zeitlichen Abstand erfolgt die Abtastung bei der gewählten
  Abtastfrequenz?]
#answer[$Delta t = 1 / f_S$, bei 48 kHz also ca. 20,8 µs (bei 32 kHz 31,25 µs).]

#question[Was bedeutet Quantisierung?]
#answer[Quantisierung ist die Darstellung der abgetasteten Momentanwerte durch digitale Werte mit
  endlicher Auflösung (abhängig von der Bit-Anzahl bzw. Wortbreite); das zeitdiskrete Signal
  wird damit auch wertdiskret.]

#question[Warum entsteht Quantisierungsrauschen?]
#answer[Jeder Momentanwert wird auf die nächstgelegene Quantisierungsstufe gerundet. Der
  Rundungsfehler ist von Abtastwert zu Abtastwert zufällig verteilt und wirkt wie ein dem
  Signal überlagertes Rauschen.]

#question[Wie kann der Quantisierungsfehler klein gehalten werden?]
#answer[Durch eine große Wortbreite (viele Bit, je Bit ca. 6 dB Dynamik) und eine gute
  Aussteuerung, d.h. einen an den Signalpegel angepassten Messbereich ohne Übersteuerung.]

#question[In welchen Fällen ist eine Nacheichung eines Schallpegelmessers zusätzlich zur
  regulären Nacheichfrist erforderlich?]
#answer[Zusätzlich ist eine Nacheichung erforderlich nach Reparaturen oder Eingriffen am Gerät,
  bei Beschädigung oder verletzten Eichstempeln bzw. wenn das Gerät die Fehlergrenzen nicht
  mehr einhält, z.B. bei Abweichungen bei der Kalibrierung.]

#question[Welche Funktion hat ein Kalibrator bzw. eine Prüfschallquelle vor der
  Messung?]
#answer[Der Kalibrator erzeugt einen definierten Schalldruckpegel (z.B. 94 dB bei 1 kHz). Damit
  wird die gesamte Messkette (Mikrofon, Vorverstärker, Gerät) vor der Messung überprüft und
  justiert, sodass Empfindlichkeitsänderungen erkannt bzw. korrigiert werden.]

#question[Welche Bedeutung hat ein wetterfester Windschutz bei Umgebungslärmmessungen?]
#answer[Luftströmungen verursachen am Mikrofon tieffrequente Störgeräusche (bis zu mehreren
  hundert Hertz). Ein Windschutz vermindert diese wirkungsvoll. Ein wetterfester
  Mikrofonschutz ermöglicht zusätzlich Dauermessungen im Freien (Regen, Vögel, Feuchte),
  erfordert aber eine vertikale Mikrofonanordnung und beeinflusst das Nutzsignal.]

#question[Warum kann ein Windschutz die Richtungsabhängigkeit bzw. den Schalleinfall am
  Mikrofon beeinflussen?]
#answer[Ein wetterfester Mikrofonschutz verlangt eine vertikale Ausrichtung, sodass horizontal
  einfallender Schall streifend ($90 degree$) statt frontal auf die Membran trifft; zudem
  beugt und reflektiert der Schutz selbst den Schall. Das verändert den Frequenzgang
  richtungsabhängig und muss durch eine Entzerrung oder Korrektur berücksichtigt werden. Ein
  einfacher Schaumstoff-Windschutz beeinflusst das Nutzsignal dagegen kaum.]

= Straßenverkehrslärm und Reifen-Fahrbahn-Interaktion
#qcounter.update(0)

#question[Welche zwei Gruppen standardisierter Methoden stehen zur Lärmmessung an
  Straßen zur Verfügung?]
#answer[Zur Verfügung stehen Fernfeld-Methoden (Messung an einem festen Ort neben der Straße,
  z.B. SPB) und Nahfeld-Methoden (Messung im Nahbereich eines abrollenden Prüfrades, z.B.
  CPX).]

#question[Worin unterscheiden sich diese Methoden im Wesentlichen?]
#answer[Fernfeldmethoden erfassen das Gesamtgeräusch (Roll- und Antriebsgeräusch) realer
  Fahrzeuge an einem Querschnitt in einer Entfernung mit Schallausbreitung. Nahfeldmethoden
  erfassen nur das Reifen-Fahrbahn-Geräusch unmittelbar am Entstehungsort, ohne
  Schallausbreitung zum Immissionsort, eignen sich dafür aber zur Bewertung ganzer
  Messstrecken (Homogenität). Die Ergebnisse beider Methoden korrelieren nicht direkt.]

#question[Beschreiben Sie eine Methode zur Lärmmessung an Straßen im Detail.]
#answer[*Statistische Vorbeifahrtsmessung (SPB)*: An einem festen Querschnitt wird für eine
  statistisch ausreichende Anzahl von Fahrzeugen je Kategorie (ca. 100; Pkw, leichte bzw.
  schwere Lkw) der maximale Schalldruckpegel der Vorbeifahrt in 7,5 m Entfernung und 1,2 m
  Höhe (bei Leitschienen ggf. höher) samt Geschwindigkeit erfasst. Voraussetzungen sind freie
  Schallausbreitung im Umkreis von 20 m (sonst Backing Board), trockene Fahrbahn,
  Lufttemperatur von 5 bis 30 °C und Wind unter 5 m/s. Die Genauigkeit beträgt ca. 1,5 dB.

  (Alternative: *CPX*: gedämmter Anhänger mit Messreifen P bzw. H, Mikrofone in ca. 30 cm
  Abstand unter 45° am Reifenein- und -auslauf, Fahrt mit 50, 80 oder 110 km/h, Mittelung
  über 20-m-Abschnitte.)]

#question[Wie ist Straßenverkehrslärm definiert?]
#answer[Straßenverkehrslärm ist der Lärm von Fahrzeugen auf öffentlichen Straßen bei
  sachgemäßem Betrieb.]

#question[Welche Schallemissionen können Fahrzeugen zugeordnet werden, zählen aber nicht
  zum Straßenverkehrslärm?]
#answer[Nicht dazu zählen Geräusche von Fahrzeugen auf Betriebsgeländen, im Anlieferbereich
  von Verkaufseinrichtungen einschließlich der Parkplätze, auf privatem Gelände sowie
  Geräusche durch unsachgemäßen Betrieb: lautes Hupen, laute Autoradios, unnützes Hin- und
  Herfahren, Laufenlassen von Motoren, Geschwindigkeitsüberschreitungen und Manipulationen
  am Fahrzeug (z.B. Abgasanlage).]

#question[Welche vier Schallquellen an motorisierten Fahrzeugen können unterschieden
  werden?]
#answer[Rollgeräusch (Reifen-Fahrbahn-Geräusch), Motorengeräusch, Auspuffgeräusch und
  Strömungsgeräusch (aerodynamisches Geräusch).]

#question[Was ist die Crossover-Geschwindigkeit?]
#answer[Die Crossover-Geschwindigkeit ist die Geschwindigkeit, oberhalb der das Rollgeräusch
  (Reifen-Fahrbahn-Interaktion) gegenüber dem Antriebsgeräusch überwiegt.]

#question[In welchem Geschwindigkeitsbereich liegt die Crossover-Geschwindigkeit bei
  modernen Pkw und Lkw bei konstanter Fahrgeschwindigkeit?]
#answer[Bei konstanter Fahrt liegt sie bei modernen Pkw bei ca. 30–40 km/h (zum Teil darunter)
  und bei Lkw bei ca. 50–70 km/h (typische Literaturwerte); in Ortsgebieten ist also
  häufig, außerorts praktisch immer das Rollgeräusch maßgebend.]

#question[Welche Anregungsmechanismen führen bei der Reifen-Fahrbahn-Interaktion zur
  Schallentstehung?]
#answer[
  - Mechanisch: radiale und tangentiale Schwingungen des Reifens (Profilblockanschlag),
  Seitenwand- und Gürtelschwingungen, Reibschwingungen (Stick-Slip), Adhäsion
  (Stick-Snap).
  - Aerodynamisch: Air-Pumping, Helmholtzresonanzen, Röhrenresonanzen,
    Hohlraumresonanzen.
  - Verstärkung der Abstrahlung: Horneffekt (Trichter zwischen Reifen und Fahrbahn),
    akustische Eigenschaften der Oberfläche.
]

#question[Beschreiben Sie einen Anregungsmechanismus der Reifen-Fahrbahn-Interaktion
  genauer.]
#answer[*Air-Pumping*: Beim Einlaufen in die Aufstandsfläche werden die Profilrillen und
  -hohlräume (und Hohlräume der Fahrbahntextur) zusammengedrückt, die eingeschlossene Luft
  wird komprimiert und ausgepresst; beim Auslaufen dehnen sie sich wieder aus und saugen Luft
  an. Diese schnellen Druckschwankungen (Modell: Händeklatschen bzw. Blasebalg mit hoher
  Frequenz) erzeugen Schall vor allem über 1000 Hz. Offenporige Deckschichten vermindern den
  Effekt.

  (Alternative: *radiale und tangentiale Schwingungen*: Die Profilblöcke schlagen beim
  Einlaufen auf die Fahrbahn wie ein Gummihammer, angeregt durch Fahrbahntextur und Profil,
  ca. 800–1200 Hz; ein variiertes Profil vermindert sich wiederholende, tonale Muster.)]

#question[Welche Zielkonflikte bestehen bei der Reifenentwicklung von Kfz?]
#answer[Lärmarme Reifen stehen im Zielkonflikt mit anderen Anforderungen: Nassgriff bzw.
  Bremsweg und Aquaplaningsicherheit, Rollwiderstand (Kraftstoffverbrauch, CO#sub[2]),
  Abrieb bzw. Lebensdauer, Fahrverhalten und Komfort sowie Kosten. Eine Verbesserung einer
  Eigenschaft verschlechtert oft eine andere.]

#question[Welche Entwicklungsziele stehen bei Reifen miteinander in Konkurrenz?]
#answer[Sicherheit (Nassgriff, Bremsweg, Aquaplaning), Rollwiderstand bzw.
  Energieverbrauch, Lebensdauer bzw. Verschleiß und Rollgeräusch.]

#question[Beschreiben Sie ein konkretes Beispiel eines Zielkonflikts in Bezug auf das
  Rollgeräusch.]
#answer[Ein grobes Profil mit breiten, tiefen Längs- und Querrillen verbessert die
  Wasserverdrängung (Aquaplaning, Nassgriff), verstärkt aber Air-Pumping und
  Profilblockanschläge und damit das Rollgeräusch. Ebenso verbessert eine weichere
  Gummimischung den Grip und mindert Schwingungen, erhöht aber Abrieb und Rollwiderstand;
  breitere Reifen verbessern den Grip, erhöhen aber Air-Pumping und Horneffekt.]

#question[Wie groß ist ungefähr das Potenzial, Schallemissionen im Straßenverkehr durch
  Reifenvariation zu beeinflussen?]
#answer[Einzelne Reifenparameter beeinflussen die Emission jeweils um bis zu ca. 3–4 dB, bei
  Lkw bis zu ca. 6 dB (Pkw ca. 2,5 dB); insgesamt liegt das Potenzial der Reifenvariation
  bei einigen dB.]

#question[Wie groß ist ungefähr das Potenzial, Schallemissionen durch Variation der
  Straßendeckschicht zu beeinflussen?]
#answer[Die Deckschicht beeinflusst die Emission um bis zu ca. 5–6 dB (z.B. PA 8 gegenüber
  Gussasphalt ca. $-"5,5"$ dB, offenporiger Asphalt allgemein $-2$ bis $-4$ dB gegenüber
  Asphaltbeton); zwischen sehr lauten Belägen (z.B. Beton mit Querrillen) und
  offenporigem Asphalt liegen bei hohen Geschwindigkeiten bis zu ca. 10 dB.]

#question[Welche Vor- und Nachteile haben offenporige Asphaltbeläge?]
#answer[Vorteile: geringere Lärmemissionen (Reduktion von Air-Pumping und Horneffekt, höhere
  Absorption) und direkte Wasserableitung, d.h. keine Sprühfahnen und kein Aquaplaning.

  Nachteile: geringere Lebensdauer (ca. max. 10 Jahre statt 15 Jahre bei dichten Belägen),
  aufwändiger Winterdienst (keine Splittstreuung, keine präventive Salzstreuung), Verstopfen
  der Poren besonders bei niedrigen Geschwindigkeiten und dadurch akustische Alterung (ca.
  0,5–2 dB pro Jahr) sowie höhere Kosten.]

#question[Welche Lärmschutzmaßnahmen gibt es im Straßenverkehr allgemein?]
#answer[Nach der Hierarchie im Lärmschutz:
  + Maßnahmen in der Planungsphase (Trassierung, Raumplanung, Abstand),
  + Maßnahmen an der Quelle (lärmarme Fahrzeuge und Reifen, Geschwindigkeitsreduktion,
    Verkehrsstärke bzw. Lkw-Anteil, lärmarme Fahrbahnbeläge),
  + Ausbreitungsverhinderung (Lärmschutzwände, -wälle, Einschnitts- und Troglagen,
    Teil- und Vollabdeckungen),
  + Immissionsschutz (Lärmschutzfenster und -türen, Schalldämmlüfter).
]

#question[Was ist der Unterschied zwischen aktiven und passiven Lärmschutzmaßnahmen?]
#answer[Aktive Lärmschutzmaßnahmen wirken an der Quelle oder auf dem Ausbreitungsweg und
  mindern die Immissionen im gesamten geschützten Bereich, auch im Freien. Passive
  (objektseitige) Maßnahmen wirken erst am Immissionsort, also am Gebäude, und schützen nur
  die Innenräume (bei geschlossenen Fenstern).]

#question[Nennen Sie jeweils Beispiele für aktive und passive Lärmschutzmaßnahmen.]
#answer[Aktiv: Lärmschutzwände und -wälle, lärmarme Fahrbahnbeläge, Geschwindigkeitsreduktion,
  Einschnitts- bzw. Troglagen, Einhausungen, Schienenstegdämpfer. Passiv:
  Lärmschutzfenster und -türen, Schalldämmlüfter, Dämmung von Fassaden und Dächern.]

#question[Welche konkreten Reifeneigenschaften beeinflussen die Schallemissionen im
  Straßenverkehr?]
#answer[Profilgeometrie (Profilmuster, Rillenvolumen, Profiltiefe, variierte Teilung),
  Reifenbreite und -durchmesser, Gummihärte bzw. Gummimischung, Karkassen- und
  Gürtelsteifigkeit, Reifenluftdruck sowie Radlast.]

#question[Welche konkreten Eigenschaften von Straßendeckschichten beeinflussen die
  Schallemissionen?]
#answer[Deckschichttyp (dicht, semidicht, offenporig; Asphalt oder Beton), Rezeptur (Größtkorn,
  Kornform, Bindemittel), Oberflächentextur (Rauigkeitstiefe, Rauigkeitswellenlänge,
  Gestaltfaktor; optimal „Plateau mit Schluchten“), Schallabsorption (Hohlraumgehalt,
  Schichtdicke, Strömungswiderstand), Nachgiebigkeit (Steifigkeit, Verlustfaktor) sowie
  Alterung bzw. Zustand.]

#question[Welche Rolle spielen Profilgeometrie, Luftdruck, Radlast und Gummihärte beim
  Reifen-Fahrbahn-Geräusch?]
#answer[
  - Profilgeometrie: bestimmt Air-Pumping (Rillenvolumen) und Profilblockanschläge; eine
  variierte Profilteilung vermeidet tonale Komponenten.
  - Luftdruck: ein höherer Druck macht den Reifen steifer, sodass mehr Schwingungen
    übertragen werden; ein zu niedriger Druck vergrößert Aufstandsfläche und Air-Pumping.
  - Radlast: eine höhere Last vergrößert die Aufstandsfläche und die Verformung und erhöht
    die Emission (relevant bei Lkw).
  - Gummihärte: härtere Gummimischungen (z.B. durch Alterung oder Kälte) dämpfen weniger
    und erhöhen das Rollgeräusch.
]

#question[Welche Rolle spielen Deckschichttyp, Geschwindigkeit und Hohlraumgehalt bei
  Straßendeckschichten?]
#answer[
  - Deckschichttyp: offenporige und semidichte Beläge sind leiser als dichte; Beton ist
  meist lauter als Asphalt.
  - Geschwindigkeit: die Emission steigt mit dem Logarithmus der Geschwindigkeit
    ($L = A + B dot lg(v)$); offenporige Beläge wirken bei hohen Geschwindigkeiten besonders
    gut (Selbstreinigung).
  - Hohlraumgehalt: ein höherer Hohlraumgehalt (PA bis 25 %) erhöht die Absorption und
    mindert Air-Pumping und Horneffekt.
]

#question[Warum können offenporige Asphaltbeläge bei niedrigen Geschwindigkeiten oder
  mit zunehmender Alterung an Wirkung verlieren?]
#answer[Mit der Zeit verstopfen die Hohlräume durch Schmutz und Abrieb und es kommt zu
  Kornausbrüchen, wodurch die Schallabsorption abnimmt (ca. 0,5–2 dB pro Jahr). Bei
  niedrigen Geschwindigkeiten fehlt die Selbstreinigung durch den Reifensog, sodass dieser
  Effekt stärker auftritt; zudem dominiert dort eher das Antriebsgeräusch, das von der
  Deckschicht weniger beeinflusst wird.]

= Schienenverkehrslärm
#qcounter.update(0)

#question[Was versteht man unter Schienenrauheit?]
#answer[Schienenrauheit bezeichnet die mikroskopischen Unebenheiten der Schienenfahrfläche in
  Längsrichtung (Höhenprofil, Wellenlängen von wenigen mm bis einige dm). Sie wird z.B.
  taktil nach EN 15610 gemessen und als Rauheitspegel (Bezug 1 µm) über der Wellenlänge
  dargestellt; ein Extremfall sind Schlupfwellen im Bogen.]

#question[Warum ist Schienenrauheit für Schallemissionen von Bedeutung?]
#answer[Rad- und Schienenrauheit regen im Rad-Schiene-Kontakt Schwingungen von Rad, Schiene
  und Oberbau an, die als Rollgeräusch abgestrahlt werden. Die Rauheit ist damit die
  zentrale Anregungsgröße des Rollgeräusches, das auf freier Strecke dominiert.]

#question[Wie beeinflussen Radrauheiten die Bedeutung der Schienenrauheit?]
#answer[Rad- und Schienenrauheit werden energetisch zur effektiven Gesamtrauheit addiert, daher
  dominiert die jeweils höhere Rauheit. Bei rauen Rädern (GG-gebremste Güterwagen) bringt
  eine Senkung der Schienenrauheit kaum etwas; erst bei glatten Rädern (K-/LL-Sohlen,
  Scheibenbremsen) wird die Schienenrauheit maßgebend.]

#question[Was ist die Schienenabklingrate?]
#answer[Die Schienenabklingrate (Gleisabklingrate) beschreibt, wie stark die Schwingungen der
  Schiene mit zunehmender Entfernung vom Anregungspunkt abnehmen, d.h. die Dämpfung der
  Körperschallausbreitung entlang der Schiene. Sie wird nach EN 15461 am unbelasteten Gleis
  mit Impulshammer getrennt für horizontale und vertikale Schwingungen gemessen.]

#question[Welche Bedeutung hat die Schienenabklingrate für Schallemissionen?]
#answer[Je stärker die Schwingungen gedämpft werden, desto kürzer ist der schwingende
  Schienenabschnitt, desto kleiner die abstrahlende Fläche und desto geringer die
  Schallemission der Schiene. Sie wird u.a. durch die Zwischenlagensteifigkeit bestimmt
  (steifere Zwischenlagen ergeben eine höhere TDR). Die EN ISO 3095 fordert für
  Fahrzeugmessungen ausreichend hohe Abklingraten.]

#question[Welche Einheit und englische Bezeichnung hat die Schienenabklingrate?]
#answer[Einheit dB/m (als Frequenzspektrum), englisch track decay rate (TDR).]

#question[Welcher qualitative Zusammenhang besteht zwischen Schienenabklingrate und
  Schallemissionen?]
#answer[Je höher die Schienenabklingrate, desto geringer sind die Schallemissionen der Schiene
  (Oberbauanteil am Rollgeräusch); niedrige Abklingraten (weiche Zwischenlagen) führen zu
  höheren Emissionen, vor allem im mittleren Frequenzbereich (Unterschiede von wenigen
  dB(A)).]

#question[Was sind Flachstellen?]
#answer[Flachstellen sind abgeflachte Bereiche bzw. lokale Laufflächendefekte an der
  Radlauffläche (Radunrundheit).]

#question[Wie entstehen Flachstellen?]
#answer[Sie entstehen, wenn ein Rad beim Bremsen blockiert und über die Schiene gleitet, statt zu
  rollen; dabei wird an der Kontaktstelle Material abgetragen.]

#question[Warum wird vermutet, dass Flachstellengeräuschen zukünftig größere Bedeutung
  zukommen wird?]
#answer[Durch die Umrüstung der Güterwagen auf leise Bremssohlen sinkt das Rollgeräusch stark.
  Impulshaltige Flachstellengeräusche, die bisher von den hohen Emissionen GG-gebremster
  Wagen maskiert wurden, werden dadurch hörbar und gewinnen relativ an Bedeutung.]

#question[Welche drei Fahrgeräusche dominieren die Gesamtschallemissionen von Zügen je
  nach Geschwindigkeit?]
#answer[Antriebsgeräusch, Rollgeräusch und aerodynamisches Geräusch.]

#question[In welchen Geschwindigkeitsbereichen überwiegen diese Fahrgeräusche jeweils?]
#answer[Grob: Antriebsgeräusch bei niedrigen Geschwindigkeiten (bis ca. 50–60 km/h),
  Rollgeräusch im mittleren Bereich (ca. 60 bis 250–300 km/h), aerodynamisches Geräusch bei
  sehr hohen Geschwindigkeiten (ab ca. 250–300 km/h).]

#question[Nennen Sie für jedes Fahrgeräusch ein typisches Beispiel aus dem Streckennetz,
  wo es dominiert.]
#answer[Antriebsgeräusch: Bahnhofsbereiche (Anfahren, Stillstand); Rollgeräusch: freie Strecke;
  aerodynamisches Geräusch: Hochgeschwindigkeitsstrecken.]

#question[Was sind Flüsterbremsen bzw. leise Bremssohlen?]
#answer[Flüsterbremsen sind Klotzbremsen mit leisen Bremssohlen aus Verbundstoff statt
  Grauguss: K-Sohlen (Komposit, seit 2003 zugelassen, erfordern einen Umbau der
  Bremsanlage) und LL-Sohlen („low noise, low friction“, seit 2013 zugelassen, mit
  ähnlichem Reibwert wie GG, daher Tausch ohne Anpassung der Bremsanlage möglich).]

#question[Warum mindert die Umrüstung von Grauguss-Bremssohlen auf K- oder LL-Sohlen die
  Schallemissionen?]
#answer[Grauguss-Bremsklötze rauen die Radlauffläche beim Bremsen auf. Verbundstoffsohlen rauen
  die Lauffläche kaum auf; die Radrauheit und damit die effektive Gesamtrauheit sinken und
  somit das Rollgeräusch (A-bewertet um bis zu ca. 8–10 dB).]

#question[In welcher Größenordnung liegt die Emissionsminderung bei Umrüstung aller
  Güterfahrzeuge eines Zuges?]
#answer[Bei Umrüstung aller Güterwagen eines Zuges liegt die Minderung bei ca. 8–10 dB(A)
  (10 dB entsprechen einer subjektiven Halbierung der Lautstärke).]

#question[Warum ist für die Schallminderung ein hoher Anteil an Fahrzeugen mit K- oder
  LL-Sohlen im Zugverband wesentlich?]
#answer[Wegen der energetischen Addition dominieren die lauten, GG-gebremsten Wagen den
  Gesamtpegel („Fluch der Akustik“). Bei 10 dB Wirkung je Wagen bringt eine Umrüstung von
  50 % nur $-"2,6"$ dB und von 80 % nur $-"5,5"$ dB; erst bei nahezu vollständiger
  Umrüstung wird das volle Potenzial erreicht.]

#question[Welche Folgen hatte die Einführung der TSI-Noise für den
  Schienengüterverkehr?]
#answer[Seit 2006 (TSI Fahrzeuge – Lärm) müssen neu gebaute Güterwagen leise sein (i.d.R.
  K-Sohlen). Wegen der langen Nutzungsdauer (bis 40 Jahre) wurde mit der TSI 2019 zusätzlich
  festgelegt, dass auf „quieter routes“ ab Ende 2024 auch Bestandswagen (Baujahr vor 2006)
  leise sein müssen, was de facto einem GG-Verbot gleichkommt. Folgen waren großflächige
  Umrüstungen auf K- oder LL-Sohlen (gefördert z.B. durch lärmabhängige Trassenpreise;
  in Österreich Ende 2022 ca. 90 % umgerüstet), höhere Kosten für Bremssohlen,
  Radverschleiß und Instandhaltung, Probleme mit der Bremsleistung im Winter und das
  Hörbarwerden von Flachstellen.]

#question[Welche Lärmschutzmaßnahmen betreffen den Oberbau von Eisenbahnstrecken?]
#answer[
  - Akustisches Schienenschleifen (Senkung der Schienenrauheit)
  - Schienen(steg)dämpfer (Erhöhung der TDR, ca. 2 dB)
  - Schienen(steg)abschirmungen (ca. 3 dB)
  - Steifere elastische Zwischenlagen (höhere TDR)
  - Lichtraumnahe, niedrige Lärmschutzwände
  - Unterschottermatten (vor allem gegen Körperschall bzw. Erschütterungen)
]

#question[Welche Gründe erschweren im Güterverkehr die Einführung moderner
  emissionsarmer Drehgestelle mit radialer Einstellbarkeit und Scheibenbremsen?]
#answer[Im Güterverkehr herrscht hoher Kostendruck; fahrzeugseitige Maßnahmen sind teuer in
  Anschaffung und Instandhaltung, Güterwagen haben eine lange Nutzungsdauer (bis 40 Jahre),
  die Investition kommt nicht dem Halter, sondern den Anrainern zugute, und Wagen verkehren
  international (Zulassung, Interoperabilität). Zudem erschweren Bauformen wie Schürzen die
  Sichtkontrolle von Bremsen und die Heißläuferortung.]

#question[Warum hat das Rollgeräusch von Schienenfahrzeugen eine hohe Bedeutung in der
  Prognoserechnung?]
#answer[Das Rollgeräusch dominiert auf freier Strecke über den gesamten üblichen
  Geschwindigkeitsbereich und damit auf dem größten Teil des Netzes. Es hängt zudem von
  Fahrzeug (Radrauheit, Bremsbauart) und Oberbau (Schienenrauheit, TDR) ab, weshalb es in der
  Prognose detailliert modelliert wird.]

#question[Welche Eingangsparameter besitzt das Rollgeräuschmodell nach RVE 04.01.02?]
#answer[Schienenrauheit $L_(r,"tr")$, Radrauheit $L_(r,"veh")$, Kontaktfilter $A_3$
  (abhängig von Radlast und Raddurchmesser), Übertragungsfunktionen für Fahrzeug
  $L_(H,"veh")$, Aufbauten $L_(H,"sup")$ und Oberbau $L_(H,"tr")$, Achszahl $N_a$ und
  Zuggeschwindigkeit $v$ (zusätzlich ggf. fiktive Stoßrauheit für impulshaltige
  Geräusche).]

#question[Zur Nachbildung welchen Effekts wird der Parameter des grün umrandeten Feldes
  im Rollgeräuschmodell benötigt?]
#answer[(Abbildung nicht im Katalog.) Ist der Kontaktfilter $A_3$ gemeint, so bildet er nach,
  dass die endliche Kontaktfläche zwischen Rad und Schiene kurzwellige Rauheiten mittelt
  (last- und radabhängige Tiefpasswirkung). Kurzwellige Rauheiten, die kleiner als die
  Kontaktfläche sind, regen daher weniger an; der Effekt wirkt ab ca. 50–100 mm Wellenlänge
  und ist bei höheren Radlasten und größeren Rädern stärker.]

#question[Welche Bedeutung hat die Größe $L_(r,"tot") (f)$ im Rollgeräuschmodell?]
#answer[$L_(r,"tot")(f)$ ist die effektive Gesamtrauheit (energetische Summe aus Rad- und
  Schienenrauheit, mit dem Kontaktfilter gefiltert und über die Geschwindigkeit
  $f = v / lambda$ in den Frequenzbereich transformiert). Sie ist die alleinige Größe für die
  Schwingungsanregung des Rollgeräusches; mit den Übertragungsfunktionen ergeben sich daraus
  die Schallleistungen von Fahrzeug, Aufbauten und Oberbau.]

#question[Durch welche Art von Quellen werden Schallemissionen einzelner
  Schienenfahrzeuge modelliert?]
#answer[Durch Linienschallquellen: Die einzelnen Fahrzeuge sind zwar bewegte Punktquellen, über
  den Verkehrsfluss werden sie aber zu gerichteten Linienquellen gemittelt.]

#question[Wo werden diese Ersatzschallquellen angeordnet?]
#answer[Für jedes Gleis werden zwei Ersatzschallquellen mittig über der Gleisachse angeordnet:
  Quelle A 0,5 m und Quelle B 4,0 m über Schienenoberkante (SOK).]

#question[Welche Geräuschkategorien werden in der RVE berücksichtigt?]
#answer[Rollgeräusche, Antriebsgeräusche, aerodynamische Geräusche, impulsartige Geräusche
  (Kreuzungen, Weichen, Schienenstöße), Bogengeräusche (Kurvenkreischen und -quietschen) und
  zusätzliche Einflussfaktoren (Brücken bzw. Brückendröhnen).]

#question[Durch welche Ersatzschallquellen werden die Geräuschkategorien in der
  Prognoserechnung berücksichtigt?]
#answer[
  - Quelle A (0,5 m über SOK): Rollgeräusch, impulsartige Geräusche, Bogengeräusche,
  Brückengeräusche sowie Anteile von Antriebs- und aerodynamischem Geräusch (Getriebe,
  Motoren auf Achshöhe, untere Abdeckungen).
  - Quelle B (4,0 m über SOK): Antriebsgeräusche (Lüftungsgitter, Auspuffe auf Dachhöhe) und
    aerodynamische Geräusche (Dachaggregate, Stromabnehmer).
]

#question[Wie hoch ist das Minderungspotenzial der Schallemissionen von Güterzügen bei
  teilweiser Umrüstung von Grauguss-Bremssohlen auf leise Bremssohlen?]
#answer[Bei 10 dB Wirkung je Wagen ergibt sich $Delta L = 10 dot lg((1 - a) + a dot 10^(-1))$
  mit Umrüstungsanteil $a$: 50 % → $-"2,6"$ dB, 80 % → $-"5,5"$ dB, 100 % → $-10$ dB.]

#question[Warum wird das volle Minderungspotenzial erst bei hohen Umrüstungsgraden
  innerhalb eines Zugverbandes ausgeschöpft?]
#answer[Wegen der energetischen Pegeladdition bestimmen die verbleibenden lauten GG-Wagen den
  Gesamtpegel; schon wenige laute Wagen heben den Pegel deutlich an. Erst wenn ihr Anteil
  sehr klein wird, nähert sich der Zugpegel dem der leisen Wagen.]

#question[Welche Rolle spielen Radrauheit und Schienenrauheit gemeinsam für die Anregung
  des Rollgeräusches?]
#answer[Rad- und Schienenrauheit werden (bandweise) energetisch zur effektiven Gesamtrauheit
  addiert, die das Rollgeräusch anregt und gleichermaßen auf Fahrzeug- und Oberbauemissionen
  wirkt. Die höhere der beiden Rauheiten dominiert, daher hat eine Minderung der höheren
  Rauheit den größten Effekt.]

#question[Warum können Flachstellengeräusche bei zunehmend leiseren Zügen relativ
  wichtiger werden?]
#answer[Bei leisen Zügen fehlt die Maskierung durch das breitbandige Rollgeräusch rauer Räder.
  Die impulshaltigen Schläge der Flachstellen heben sich deutlich vom (niedrigeren)
  Grundgeräusch ab, sind daher auffällig und werden als besonders störend empfunden.]

#question[Welche typischen Ursachen führen zu Flachstellen an Rädern von
  Schienenfahrzeugen?]
#answer[Blockierende Räder beim Bremsen durch schlechten Kraftschluss (Laub, Nässe, Eis,
  Schmierfilm), zu hohe Bremskräfte, „feste Bremsen“ (nicht gelöste Bremsen) oder fehlenden
  bzw. defekten Gleitschutz.]

= Schallausbreitung, Reflexion, Refraktion und Abschirmung
#qcounter.update(0)

#question[Was versteht man unter Refraktion an einem Übergang zwischen zwei Medien?]
#answer[Refraktion (Schallbrechung) ist die Richtungsänderung einer Schallwelle beim Übergang
  zwischen Medien mit unterschiedlicher Schallgeschwindigkeit. Beim Übergang in ein Medium mit
  geringerer Schallgeschwindigkeit wird die Welle zum Lot hin gebrochen (und umgekehrt); bei
  kontinuierlicher Änderung der Schallgeschwindigkeit entsteht eine gekrümmte Ausbreitung.]

#question[Welche Größen sind bei der Refraktion relevant?]
#answer[Relevant sind die Schallgeschwindigkeiten $c_1$ und $c_2$ der beiden Medien sowie
  Einfalls- und Ausfallswinkel $theta_1$ und $theta_2$ (zum Lot); im Freien bestimmen
  Temperatur und Wind (effektive Schallgeschwindigkeit) die Refraktion.]

#question[Welche mathematischen Zusammenhänge beschreiben die Refraktion?]
#answer[Brechungsgesetz der Akustik (Snellius):
  $ (sin theta_1) / c_1 = (sin theta_2) / c_2 $
  Es erfüllt das Fermat'sche Prinzip (zeitlich kürzester Weg). Im Freien ist die effektive
  Schallgeschwindigkeit $c_"eff"(z) = c(T(z)) + u(z) dot cos phi$ (vektorielle Addition
  von Schall- und Windgeschwindigkeit).]

#question[Welche Auswirkungen hat Refraktion auf die Schallausbreitung im Freien bei
  Wind?]
#answer[Da die Windgeschwindigkeit mit der Höhe zunimmt, ändert sich die effektive
  Schallgeschwindigkeit mit der Höhe. Bei Mitwind (Wind von der Quelle zum Immissionsort)
  wird der Schall zum Boden hin gebrochen, mit Mehrfachreflexionen, großen Reichweiten und
  höheren Pegeln am Immissionsort. Bei Gegenwind wird der Schall vom Boden weg gebrochen und
  es entsteht ein Schallschatten mit niedrigeren Pegeln. Ab ca. 100–250 m Entfernung sind die
  Effekte bedeutend (in 200 m bis ca. 15 dB); die Berechnung nach RVS bzw. ÖAL geht von
  Mitwind (günstigen Ausbreitungsbedingungen) aus.]

#question[Was besagt das Huygenssche Prinzip?]
#answer[Jeder Punkt, der von einer Wellenfront getroffen wird, ist Ausgangspunkt einer neuen,
  elementaren Kugelwelle mit gleicher Wellenlänge und gleicher Ausbreitungsgeschwindigkeit;
  die Überlagerung (Superposition) dieser Elementarwellen ergibt wiederum die sich
  ausbreitende Wellenfront.]

#question[Welches Ausbreitungsphänomen kann durch das Huygenssche Prinzip erklärt
  werden?]
#answer[Die Beugung (Diffraktion), also das Eindringen von Schall in den Schattenbereich hinter
  Hindernissen bzw. die Ausbreitung hinter Öffnungen.]

#question[Was ist das Abschirmmaß $D_z$ einer Wand?]
#answer[Das Abschirmmaß $D_z$ ist die frequenzabhängige Schalldruckpegelminderung in einem
  Immissionspunkt durch die reine Abschirmwirkung (Beugung) der Wand unter
  Freifeldbedingungen, ohne Berücksichtigung von Rand- und Umgebungsbedingungen.]

#question[Was ist das Einfügedämmmaß $D_e$ einer Wand?]
#answer[Das Einfügedämmmaß $D_e$ ist die Pegeldifferenz im Immissionspunkt ohne und mit Wand in
  einer konkreten Ausbreitungssituation, inkl. aller Umgebungseinflüsse (Boden, Reflexionen,
  Transmission, Witterung).]

#question[Wodurch unterscheiden sich Abschirmmaß und Einfügedämmmaß?]
#answer[$D_z$ ist eine idealisierte Kenngröße der reinen Beugung, $D_e$ gilt für die konkrete
  Situation. Wegen zusätzlicher Umgebungseinflüsse (z.B. Reflexionen, Wegfall der
  Bodendämpfung) ist $D_e$ meist kleiner als $D_z$.]

#question[Was ist der Schirmwert $delta$?]
#answer[Der Schirmwert $delta$ (auch Umweg oder Wegdifferenz) ist die Differenz zwischen dem
  Schallweg über die Beugekante und dem direkten Weg zwischen Quelle und Empfänger; er ist
  die maßgebende Größe für das Abschirmmaß.]

#question[Wie wird der Schirmwert bei einer dünnen Wand mit unterbrochener
  Sichtverbindung zwischen Quelle und Empfänger bestimmt?]
#answer[$ delta = A + B - d $
  mit $A$ = Abstand Quelle–Beugekante, $B$ = Abstand Beugekante–Empfänger und $d$ = direkter
  Abstand Quelle–Empfänger. Damit folgt mit der Fresnel-Zahl $N = 2 delta / lambda$
  näherungsweise $D_z approx 10 dot lg(3 + 20 N)$ bzw. für große Umwege (Umweggesetz)
  $D_z approx 10 dot lg(20 N)$.]

#question[Wie verändert sich die Berechnung des Schirmwertes bei mehreren Hindernissen
  zwischen Quelle und Empfänger?]
#answer[Bei mehreren Hindernissen bzw. ausgedehnten Hindernissen (Mehrfachbeugung) wird der Weg
  über alle Beugekanten als Summe der Wegsegmente gebildet:
  $delta = A + e + B - d$ (mit $e$ = Weg zwischen den Beugekanten); das Abschirmmaß wird
  analog zur Einfachbeugung abgeschätzt.]

#question[Welchen Einfluss hat eine Veränderung der Frequenz auf das Abschirmmaß?]
#answer[Mit steigender Frequenz (kürzerer Wellenlänge) steigt die Fresnel-Zahl $N = 2 delta /
  lambda$ und damit das Abschirmmaß; tiefe Frequenzen werden schlechter abgeschirmt, da sie
  stärker gebeugt werden.]

#question[Welchen Einfluss hat eine Veränderung des Beugungswinkels auf das
  Abschirmmaß?]
#answer[Mit steigendem Beugungswinkel (größerer Umweg $delta$) steigt das Abschirmmaß. Der
  Beugungswinkel wächst mit der Wandhöhe, mit geringerem Abstand zwischen Wand und Quelle und
  sinkt mit zunehmender Quell- und Immissionspunkthöhe.]

#question[Welche prinzipiellen Möglichkeiten gibt es, die Abschirmwirkung von
  Lärmschutzwänden zu steigern?]
#answer[Verschiebung der Beugekante: Annäherung der Wand an die Quelle, Abwinkelung bzw.
  Krümmung des Wandkopfes, Aufsatzelemente und Erhöhung der Wand; zusätzlich ausreichende
  Wandlänge, absorbierende Oberfläche und Mittelwände bei mehreren Fahrstreifen bzw.
  Gleisen.]

#question[Erläutern Sie zwei Möglichkeiten zur Steigerung der Abschirmwirkung von
  Lärmschutzwänden im Detail.]
#answer[
  - *Annäherung an die Quelle*: Bei gleicher Höhe ergeben sich ein größerer Beugungswinkel
  und eine höhere Schirmwirkung. Limitiert an der Straße durch Pannenstreifen und
  Leitschiene, an der Schiene durch Lichtraumprofil und dynamische Druck-Sog-Belastungen;
  in der Praxis wird meist die nächste mögliche Position realisiert.
  - *Höhere Wand*: Ein größerer Beugungswinkel wirkt auch gegen höher liegende Quellen;
    üblich sind maximal ca. 4–6 m wegen steigender Wind- und Druck-Sog-Lasten, aufwändiger
    Statik und Fundamente, Landschaftsbild und Kosten.
  - (*Wandabwinkelung*: wirkt wie eine gerade, gleich hohe Wand an der Beugekantenposition,
    nur bei der Straße möglich. *Aufsatzelemente*: z.B. Oktaeder oder Dreieck, nachträglich
    einbaubar, aber begrenzte Wirkung und wenig verbreitet.)
]

#question[Welche Vor- und Nachteile bzw. Limitierungen haben diese Möglichkeiten?]
#answer[
  - Annäherung: + große Wirkung ohne Mehrhöhe; − Platz- und Sicherheitsgrenzen
  (Pannenstreifen, Lichtraum, Druck-Sog), meist schon ausgeschöpft.
  - Abwinkelung: + Wirkung wie höhere Wand bei geringerer Bauhöhe; − bei der Bahn wegen
    Lichtraumprofil und Oberleitung nicht möglich.
  - Aufsatzelemente: + nachträglich einbaubar; − Wirkung stärker begrenzt, wenig verbreitet.
  - Höhere Wand: + einfach und wirksam; − Lasten, Statik, Landschaftsbild, Kosten, max.
    ca. 4–6 m.
]

#question[Welche Eigenschaften, Vor- und Nachteile haben Lärmschutzwälle gegenüber
  Lärmschutzwänden?]
#answer[Lärmschutzwälle haben poröse, begrünte Oberflächen mit hoher Absorption und schrägen
  Einfallswinkeln, daher gibt es kaum Einbußen durch die Keilform. Vorteile: Landschaftsbild
  und Vegetation, Instandhaltung (keine Verwitterung, keine Materialermüdung), oft
  Verwertung von Aushub. Nachteile: großer Platzbedarf und Grünraumpflege; da die Beugekante
  weiter von der Quelle entfernt ist, ist für dieselbe Wirkung eine größere Höhe nötig.
  Kombinationen mit Wänden sind möglich.]

#question[Wie unterscheiden sich Lärmschutzwälle und Lärmschutzwände bei vergleichbarer
  Abschirmwirkung in Anordnung und Dimensionierung?]
#answer[Wegen der Böschungsneigung liegt die Krone eines Walls weiter von der Quelle entfernt als
  die einer Wand am Fahrbahn- bzw. Gleisrand. Für vergleichbare Abschirmwirkung muss der
  Wall daher höher sein und benötigt eine deutlich größere Grundfläche; die Wand kann
  schlanker und quellnäher angeordnet werden.]

#question[Warum werden Lärmschutzwände auf der dem Verkehrsweg zugewandten Seite
  hochabsorbierend ausgeführt?]
#answer[Reflektierende Wandinnenflächen verursachen Mehrfachreflexionen zwischen Wand und
  Fahrzeugseitenwänden (große Fahrzeuge mit schallharten Seitenwänden), die den effektiven
  Beugungswinkel verringern und die Schirmwirkung senken. Zudem wird Schall auf die
  gegenüberliegende Seite reflektiert, wodurch die Immission dort steigt. Absorbierende
  Ausführungen (z.B. Mineralwolle hinter Lochblech, Faserbeton) vermeiden dies (Bahn:
  Schallabsorption ≥ 8 dB gefordert).]

#question[Was sind glatte Oberflächen im Sinne der Schallreflexion?]
#answer[Glatte Oberflächen sind Flächen, deren Unebenheiten klein gegenüber der Wellenlänge des
  auftreffenden Schalls sind; der Schall wird gerichtet (spiegelnd) reflektiert, d.h.
  Einfallswinkel gleich Ausfallswinkel.]

#question[Wie verläuft die Schallreflexion einer ebenen Welle an einer ebenen Fläche?]
#answer[Die einfallende Welle wird an der Fläche gespiegelt reflektiert: Einfallswinkel gleich
  Ausfallswinkel (zum Lot), einfallender und reflektierter Strahl liegen in einer Ebene mit
  dem Lot. Ein Teil der Energie wird absorbiert (bzw. transmittiert), der Rest reflektiert;
  die Amplitude wird mit dem Reflexionsfaktor $r$ abgeschwächt.]

#question[Wie ist der Reflexionsgrad definiert?]
#answer[Der Reflexionsgrad ist das Verhältnis der reflektierten zur einfallenden
  Schallintensität: $rho = I_r / I_e = |r|^2$ (mit dem Reflexionsfaktor $r$ für die
  Amplituden).]

#question[Wie hängen Reflexionsgrad und Absorptionsgrad zusammen?]
#answer[$rho + alpha = 1$, also $alpha = 1 - rho = 1 - |r|^2$: Der gesamte vom Objekt aufgenommene
  (nicht reflektierte) Schall gilt als absorbiert (inkl. Transmission und Körperschall).]

#question[Welche wesentliche Eigenschaft haben schallharte Flächen?]
#answer[Schallharte Flächen reflektieren den Schall nahezu vollständig ($r approx 1$,
  $rho approx 1$, $alpha approx 0$).]

#question[Nennen Sie Beispiele für schallharte Flächen.]
#answer[Beton, Asphalt, fester Boden, Glas, Hartholzbretter, Wasserflächen.]

#question[Welche Reflexionseigenschaften weist poröser bzw. lockerer Boden auf?]
#answer[Poröser bzw. lockerer Boden ist nahezu nicht reflektierend: $r approx 0$,
  $rho approx 0$, $alpha approx 1$ (ebenso Schnee, faserige Materialien, offenzellige
  Schäume).]

#question[Was ist die Methode der Spiegelquellen?]
#answer[Der reflektierte Schall wird durch eine Spiegelquelle nachgebildet, die spiegelsymmetrisch
  zur reflektierenden Fläche angeordnet ist (gleicher Abstand hinter der Fläche). Die
  reflektierende Fläche entfällt dann, und für Quelle und Spiegelquelle wird getrennt die
  Ausbreitung zum Immissionsort berechnet; die Anteile werden (bei inkohärenter Betrachtung)
  energetisch addiert. Bei Mehrfachreflexionen werden mehrere Spiegelquellen verwendet, in
  der Prognose meist nur 1. Ordnung. (Skizze: Quelle S über dem Boden, Spiegelquelle S'
  gleich tief unter dem Boden, Gerade S'–R schneidet den Boden im Reflexionspunkt.)]

#question[Wie wird eine Spiegelquelle bei Totalreflexion dimensioniert?]
#answer[Bei Totalreflexion hat die Spiegelquelle dieselbe Schallleistung bzw. dasselbe
  Quellverhalten wie die Originalquelle ($L_(W,"Sp") = L_W$).]

#question[Wie wird eine Spiegelquelle bei Teilreflexion mithilfe des Absorptionsgrades
  dimensioniert?]
#answer[Bei Teilreflexion wird die Quellleistung um den absorbierten Anteil verringert (inkohärente
  Quellen): $L_(W,"Sp") = L_W + 10 dot lg(1 - alpha) = L_W + 10 dot lg(rho)$.]

#question[Wodurch entsteht Luftabsorption?]
#answer[Durch die verlustbehaftete Bewegungsanregung der Luftmoleküle durch das Schallfeld:
  Schallenergie wird in Wärme umgewandelt (molekulare Relaxation von Sauerstoff und
  Stickstoff, dazu innere Reibung und Wärmeleitung).]

#question[Wie nennt man diese Art der Absorption?]
#answer[Molekulare Absorption.]

#question[Welche Größen beeinflussen die Luftabsorption wesentlich?]
#answer[Frequenz, Lufttemperatur und Luftfeuchtigkeit (gering auch der Luftdruck).]

#question[Durch welche Größe wird Luftabsorption mathematisch beschrieben?]
#answer[Durch den Dämpfungskoeffizienten $alpha$ (bzw. $alpha_"atm"$); die Dämpfung ist
  $A_"atm" = alpha dot d$ (Werte nach ISO 9613-1).]

#question[Welche Einheit hat diese Größe?]
#answer[dB/km (bzw. dB/m).]

#question[Wie verändert sich ein Spektrum in größerer Entfernung gegenüber dem
  Quellspektrum, wenn die Quellpegel in den Terzbändern gleich sind?]
#answer[Hohe Frequenzen werden stärker gedämpft als tiefe; das Spektrum fällt in größerer
  Entfernung zu hohen Frequenzen hin ab, tiefe Frequenzen dominieren und das Geräusch klingt
  dumpfer.]

#question[Wodurch unterscheiden sich lichtraumnahe und konventionelle Lärmschutzwände?]
#answer[Konventionelle Wände stehen weiter vom Gleis entfernt (außerhalb von Randweg bzw.
  Lichtraum, ca. 3–4 m von der Gleisachse) und sind ca. 2–4 m hoch über SOK. Lichtraumnahe
  Wände stehen direkt am Lichtraumprofil (ca. 1,7 m von der Gleisachse), sind niedrig
  (≤ 1 m über SOK) und nutzen die Nähe zu Rad und Schiene. Sie verbessern das
  Landschaftsbild, wirken aber kaum gegen höher liegende Quellen; Instandhaltung,
  Schneeräumung und Arbeitnehmerschutz sind abzuklären, und bei mehrgleisigen Strecken sind
  Mittelwände sinnvoll.]

#question[Zeichnen Sie beide Arten von Lärmschutzwänden in einer Querschnittsskizze
  einer Eisenbahnstrecke.]
#answer[Querschnitt: Gleis auf Schotterbett, Rad mit Quelle A (0,5 m über SOK); unmittelbar
  neben dem Schwellenende die niedrige, lichtraumnahe Wand (≤ 1 m über SOK); weiter außen,
  hinter dem Randweg, die hohe konventionelle Wand (2–4 m über SOK); jeweils Schallstrahl
  von der Quelle über die Beugekante zum Immissionspunkt.]

#question[Welche Vorteile und Nachteile hat eine Erhöhung einer bestehenden
  Lärmschutzwand?]
#answer[Vorteile: einfaches, sehr wirksames Prinzip (größerer Beugungswinkel), wirkt auch gegen
  höher liegende Quellen. Nachteile: höhere Wind- und Druck-Sog-Lasten erfordern eine
  stärkere Statik bzw. Fundamente (bestehende Wand muss dafür ausgelegt sein), hohe Kosten,
  Landschaftsbild, Verschattung; übliche Maximalhöhen ca. 4–6 m.]

#question[Welche Vorteile und Nachteile haben Aufsatzelemente auf Lärmschutzwänden?]
#answer[Vorteile: nachträglicher Einbau auf bestehenden Wänden möglich, geringere Mehrhöhe und
  Lasten, verschiedene Formen (Oktaeder, Dreieck, T-Form). Nachteile: Wirkung stärker
  begrenzt als bei anderen Ansätzen, Kosten, Instandhaltung, wenig verbreitet.]

#question[Warum ist die Wirkung von Aufsatzelementen oft begrenzter als die Wirkung
  anderer baulicher Maßnahmen?]
#answer[Die Wirkung beruht auf zusätzlicher Beugung bzw. Absorption an der Krone, verschiebt die
  effektive Beugekante aber nur wenig. Der Beugungswinkel und damit der Umweg $delta$ steigen
  kaum gegenüber einer Erhöhung oder Annäherung der Wand.]

#question[Welche Bedeutung hat der Beugungswinkel für die Wirksamkeit einer höheren
  Lärmschutzwand?]
#answer[Mit der Wandhöhe vergrößert sich der Beugungswinkel bzw. Umweg $delta$ und damit die
  Fresnel-Zahl und das Abschirmmaß. Der Zugewinn ist umso größer, je näher Quelle oder
  Immissionspunkt an der Wand liegen; bei hoch gelegenen Immissionspunkten oder weit
  entfernten Wänden ist er geringer.]

#question[Warum kann die statische Ausführung eine Limitierung bei der Erhöhung von
  Lärmschutzwänden darstellen?]
#answer[Mit zunehmender Höhe steigen die Wind- sowie Druck- und Sogbelastungen durch
  vorbeifahrende Fahrzeuge (vor allem bei hohen Geschwindigkeiten) überproportional; Pfosten,
  Fundamente und bestehende Konstruktionen müssen dafür ausgelegt sein, was Erhöhungen
  aufwändig oder unmöglich macht.]

#question[Wann sind aktive Lärmschutzmaßnahmen zweckmäßig?]
#answer[Aktive Maßnahmen sind zweckmäßig, wenn größere Bereiche oder mehrere Gebäude (inkl.
  Freiflächen) geschützt werden sollen und sie technisch realisierbar sowie wirtschaftlich
  vertretbar sind, also eine ausreichende Wirkung (z.B. ≥ 5 dB an schutzwürdigen Gebäuden)
  erzielen.]

#question[Wann sind passive Lärmschutzmaßnahmen zweckmäßig?]
#answer[Passive Maßnahmen sind zweckmäßig, wenn aktive Maßnahmen technisch nicht realisierbar
  sind (z.B. an Straßenfronten im bebauten Gebiet) oder unverhältnismäßig teuer wären
  (Kosten aktiver Maßnahmen mehr als das Dreifache passiver Maßnahmen), bei Einzelgebäuden
  oder hoch gelegenen Geschoßen, bei denen Wände wenig wirken.]

#question[Warum werden aktive Maßnahmen grundsätzlich bevorzugt, wenn sie technisch und
  wirtschaftlich realisierbar sind?]
#answer[Aktive Maßnahmen schützen auch Außenbereiche (Gärten, Balkone) und Wohnungen bei
  geöffneten Fenstern, wirken für alle Betroffenen gleichzeitig und bekämpfen den Lärm näher
  an der Ursache. Daher sind sie in den Regelwerken vorrangig vorgesehen (BStLärmIV,
  SchIV).]

#question[Welche Rolle spielen Kosten, technische Umsetzbarkeit und Schutzwürdigkeit von
  Gebäuden bei der Wahl zwischen aktivem und passivem Lärmschutz?]
#answer[Kosten: Aktive Maßnahmen sind zu bevorzugen, solange ihre Kosten nicht das Dreifache
  der objektseitigen Maßnahmen übersteigen (Kostenverhältnis LSW zu Fenster ca. 1:3 Straße
  bzw. 1:6 Bahn). Technische Umsetzbarkeit: Platz, Lichtraum, Statik und erreichbare
  Wirkung. Schutzwürdigkeit: nur Gebäude mit Hauptwohnsitz bzw. Wohn- und Schlafräumen und
  aufrechter Baubewilligung (z.B. vor Errichtung des Verkehrswegs bzw. vor 1993 bei der
  Bahn) haben Anspruch.]

= Prognoserechnung, Richtlinien und Lärmkarten
#qcounter.update(0)

#question[Was ist der dreistufige Ansatz zur Lärmbekämpfung der
  Umgebungslärmrichtlinie?]
#answer[Artikel 1 der Umgebungslärmrichtlinie (2002/49/EG):
  + Ermittlung der Belastung durch Umgebungslärm anhand von Lärmkarten nach gemeinsamen
    Bewertungsmethoden,
  + Information der Öffentlichkeit über Umgebungslärm und seine Auswirkungen,
  + Annahme von Aktionsplänen auf Grundlage der Lärmkarten, um Umgebungslärm (insbesondere
    bei gesundheitsschädlichen Belastungen) zu verhindern und zu mindern und ruhige Gebiete
    zu erhalten.
]

#question[Welchen Zusammenhang stellen Dosis-Wirkungsrelationen her?]
#answer[Sie stellen den Zusammenhang zwischen der Lärmbelastung (Lärmindizes $L_"den"$,
  $L_"night"$) und dem Anteil der Menschen her, die eine bestimmte gesundheitsschädliche
  Wirkung erfahren (z.B. % stark Belästigte).]

#question[Wie werden Dosis-Wirkungsrelationen erhoben?]
#answer[Durch Feldstudien: Studienteilnehmer werden in ihrer natürlichen Umgebung untersucht bzw.
  befragt, die gesuchten Auswirkungen (Belästigung, Schlafstörung, Erkrankungen) werden
  erhoben und den akustischen Deskriptoren (häufig $L_"den"$ und $L_"night"$) am Wohnort
  zugeordnet. Wegen unterschiedlicher Geräuschcharakteristika erfolgt die Auswertung getrennt
  nach Quellenart; Metaanalysen (z.B. WHO 2018) fassen die Studien zusammen.]

#question[Was ist eine Lärmkarte im Sinne der Umgebungslärmrichtlinie?]
#answer[Eine (strategische) Lärmkarte ist die Darstellung der Lärmbelastung in einem Gebiet
  anhand von Lärmindizes ($L_"den"$, $L_"night"$), getrennt nach Quellenart. Sie wird
  berechnet (nicht gemessen) und dient zur Gesamtbewertung der Lärmbelastung, inkl.
  Überschreitungen von Schwellenwerten und der Anzahl betroffener Personen.]

#question[Zu welchem Zweck ist die Erstellung von Lärmkarten vorgesehen?]
#answer[Lärmkarten dienen der Ermittlung der Lärmbelastung nach einheitlichen Methoden, der
  Information der Öffentlichkeit und als Grundlage für Aktionspläne zur Lärmminderung sowie
  zur Ermittlung der Betroffenenzahlen.]

#question[Wie häufig sind Lärmkarten zu erstellen?]
#answer[Mindestens alle 5 Jahre.]

#question[Welche Größen werden in Lärmkarten dargestellt?]
#answer[Die Lärmindizes $L_"den"$ und $L_"night"$ (A-bewertete äquivalente Dauerschallpegel für
  ein durchschnittliches Jahr), getrennt nach Quellenart in 4 m Höhe (Straße zusätzlich
  1,5 m).]

#question[Wie kann aus diesen Größen ein Bezug zur Wirkung auf Menschen hergestellt
  werden?]
#answer[Über Dosis-Wirkungs-Relationen (Anhang III der Richtlinie bzw. Richtlinie 2020/367): Aus
  den Lärmindizes und der Anzahl der Bewohner wird der Anteil bzw. die Anzahl der
  Betroffenen für die einzelnen Wirkungen berechnet.]

#question[Welche Wirkungen werden in der aktuellen Fassung der Richtlinie betrachtet?]
#answer[Starke Belästigung (HA), starke Schlafstörung (HSD) und ischämische Herzkrankheiten
  (IHD, nur Straßenverkehr).]

#question[Welche Bereiche sind bei der Kartierung zu berücksichtigen?]
#answer[Hauptverkehrsstraßen (> 3 Mio. Kfz pro Jahr), Haupteisenbahnstrecken (> 30 000 Züge pro
  Jahr), Großflughäfen (> 50 000 Bewegungen pro Jahr) und Ballungsräume (> 100 000
  Einwohner, auch über mehrere Gemeinden, z.B. Wien, Graz, Linz).]

#question[Welche Verursacher sind bei der Kartierung zu berücksichtigen?]
#answer[Straßenverkehr, Schienenverkehr (inkl. Straßenbahn), Flugverkehr und industrielle
  Tätigkeiten (Industrie bzw. Gewerbe); in Ballungsräumen alle diese Quellen.]

#question[Wem stehen Lärmkarten in Österreich zur Verfügung?]
#answer[Der gesamten Öffentlichkeit (sowie Behörden und der Europäischen Kommission).]

#question[In welcher Form stehen Lärmkarten in Österreich zur Verfügung?]
#answer[Frei zugänglich online als interaktive Karten auf www.laerminfo.at, inkl.
  Betroffenenzahlen und Aktionsplänen.]

#question[Welche Eigenschaften müssen Emissionsquellen aufweisen, damit eine
  Ausbreitungsrechnung nach ÖAL 28 durchgeführt werden kann?]
#answer[Es muss sich um bodengebundene (bodennahe) Quellen handeln, die als Punktquellen bzw. in
  Punktquellen segmentierbare Linien- und Flächenquellen mit gerichteter Schallleistung im
  Oktavbandspektrum (63 Hz bis 8 kHz) beschrieben werden können (Straße, Schiene,
  Industrie).]

#question[Welche Verkehrsmittelarten können deshalb nicht mit ÖAL 28 berechnet werden?]
#answer[Der Flugverkehr (Luftfahrzeuge im Flug als hoch liegende Quellen) kann nicht mit ÖAL 28
  berechnet werden; dafür gibt es eigene Bewertungsmethoden (Fluglärm).]

#question[Was versteht man unter Quellensegmentierung?]
#answer[Linienquellen (und Flächenquellen) werden durch eine Reihe von Punktquellen ersetzt; jede
  Punktquelle repräsentiert ein Segment der Länge $l_S$ mit der Schallleistung
  $L_W = L_(W') + 10 dot lg(l_S)$.]

#question[Wie wird in ÖAL 28 die Ausbreitungsrechnung im dreidimensionalen Raum
  vereinfacht?]
#answer[Der 3D-Raum wird in einzelne Ausbreitungswege in vertikalen Ebenen zwischen jeder
  Punktquelle und dem Empfänger zerlegt. Für jeden Weg erfolgt eine isolierte
  2D-Ausbreitungsrechnung (mit mittlerer Bezugsebene und äquivalenten Höhen); die Anteile aller
  Wege und Quellen werden energetisch addiert. Statt Wellen werden Schallstrahlen
  betrachtet.]

#question[Wie unterscheiden sich verdichteter Rasen, Ackerfläche und Asphaltfläche
  hinsichtlich erwarteter Immissionsstärke?]
#answer[Asphalt ist schallhart ($G = 0$) und reflektiert, daher ist dort die höchste Immission zu
  erwarten. Verdichteter Rasen ist teilweise absorbierend (ca. $G approx "0,7"$) und liegt
  dazwischen. Ackerfläche bzw. lockerer Boden ist absorbierend ($G = 1$), dort ist die
  niedrigste Immission zu erwarten.]

#question[Welche Fahrzeugklassen sind in der RVS für Straßenverkehrslärm relevant?]
#answer[Klasse 1: leichte Kfz; Klasse 2: mittelschwere Kfz; Klasse 3: schwere Kfz; Klasse 4:
  zweirädrige Kfz (4a Kleinkraftrad ≤ 50 cm³, 4b sonstige Krafträder); Klasse 5: offene
  Klasse (derzeit in Österreich nicht relevant).]

#question[Nennen Sie je ein Beispiel für die relevanten Fahrzeugklassen nach RVS.]
#answer[Klasse 1: Pkw, Lieferwagen ≤ 3,5 t; Klasse 2: Bus oder Lieferwagen > 3,5 t mit 2 Achsen
  und Doppelbereifung hinten; Klasse 3: Sattelzug bzw. Lkw mit 3 oder mehr Achsen; Klasse 4:
  Moped (4a) bzw. Motorrad (4b).]

#question[Durch welche Art von Quellen werden Schallemissionen einzelner
  Straßenfahrzeuge modelliert?]
#answer[Einzelne Fahrzeuge sind bewegte Punktquellen; der Verkehrsfluss wird durch
  Linienschallquellen mit mittlerer längenbezogener Schallleistung modelliert.]

#question[Wo werden diese Ersatzschallquellen angeordnet?]
#answer[Idealerweise je eine Linienquelle mittig in jedem Fahrstreifen (knapp über der
  Fahrbahn). Vereinfachungen: bei Straßen mit Gegenverkehr eine Emissionslinie in
  Straßenmitte, bei mehrstreifigen Straßen eine Linie je Richtungsfahrbahn im äußeren
  Fahrstreifen.]

#question[Wie wird die maßgebende Geschwindigkeit von Fahrzeugklassen in der Regel
  gewählt?]
#answer[In der Regel die zulässige Höchstgeschwindigkeit gemäß StVO bzw. für die
  Fahrzeugklasse; begründete Abweichungen sind möglich (z.B. Messungen bei Steigungen,
  temporäre Beschränkungen). Unter 20 km/h werden 20 km/h angesetzt.]

#question[Aus welchen beiden Anteilen setzt sich die gerichtete Schallleistung eines
  Fahrzeugs zusammen?]
#answer[Aus Rollgeräusch $L_(W R,m)(v_m)$ und Antriebsgeräusch $L_(W P,m)(v_m)$ (bei Klasse 4
  nur Antriebsgeräusch).]

#question[Wie werden diese beiden Anteile mathematisch verknüpft?]
#answer[Durch energetische Addition:
  $ L_(W,m) = 10 dot lg(10^(L_(W R,m) / 10) + 10^(L_(W P,m) / 10)) $
  mit $L_(W R,m) = A_(R,m) + B_(R,m) dot lg(v_m / v_"ref") + Delta L_(W R,m)$ und
  $L_(W P,m) = A_(P,m) + B_(P,m) dot (v_m - v_"ref") / v_"ref" + Delta L_(W P,m)$,
  $v_"ref" = 70$ km/h.]

#question[Erläutern Sie den Begriff der maßgebenden Verkehrsstärke Q#sub[m]]
#answer[Die maßgebende Verkehrsstärke $Q_m$ ist die mittlere stündliche Anzahl der Fahrzeuge der
  Klasse $m$ (Fahrzeuge/h) im Jahresdurchschnitt, getrennt für Tag-, Abend- und
  Nachtzeitraum. Sie geht in die längenbezogene Schallleistung ein:
  $L_(W',m) = L_(W,m) + 10 dot lg(Q_m / ("1000" dot v_m))$.]

#question[Welche Verkehrsdaten werden zur Ermittlung der maßgebenden Verkehrsstärke
  benötigt?]
#answer[Die Verkehrsstärke je Fahrzeugklasse und Zeitraum aus Verkehrsuntersuchungen
  (Dauerzählstellen, Zählungen, Verkehrsmodelle); oft nur der JDTV samt Straßentyp, aus dem
  mit Faktoren ($k_L$, $q_s$, $l_s$, $z_s$, $x_s$) die Klassenanteile abgeschätzt werden.]

#question[Was bedeutet der Begriff JDTV und in welcher Einheit wird er angegeben?]
#answer[JDTV ist die jahresdurchschnittliche tägliche Verkehrsstärke, angegeben in Kfz/24 h.]

#question[Wie wird die maßgebende Verkehrsstärke Q#sub[m] abgeschätzt, wenn lediglich
  der JDTV zur Verfügung steht?]
#answer[Über tabellierte (oder erhobene) Faktoren abhängig vom Straßentyp $S$ und Zeitraum $T$:
  stündliche Gesamtverkehrsstärke $Q = "JDTV" dot k_L$. Klasse 2 und 3:
  $Q_2 = Q dot q_s dot l_s$ bzw. $Q_3 = Q dot q_s dot (1 - l_s)$; Klasse 4:
  $Q_4 = Q dot z_s$ (aufgeteilt mit $x_s$ in 4a und 4b); Klasse 1 als Rest:
  $Q_1 = Q - Q_2 - Q_3 - Q_4$.]

#question[Welche Faktoren werden bei der Abschätzung der maßgebenden Verkehrsstärke
  berücksichtigt?]
#answer[Bemessungsfaktor $k_L$ (Umrechnung JDTV auf stündliche Verkehrsstärke je Zeitraum),
  Schwerverkehrsanteil $q_s$ (Klasse 2 + 3), Aufteilung $l_s$ zwischen Klasse 2 und 3, Anteil
  $z_s$ der Klasse 4 und Aufteilung $x_s$ zwischen 4a und 4b, jeweils abhängig vom
  Straßentyp und Zeitraum.]

#question[Inwiefern nimmt Fahrzeugklasse 1 bei der Abschätzung der maßgebenden
  Verkehrsstärke eine Sonderstellung ein?]
#answer[Für Klasse 1 gibt es keinen eigenen Faktor; sie ergibt sich als Rest aus der
  Gesamtverkehrsstärke abzüglich der Klassen 2, 3 und 4.]

#question[Warum kann die Fahrzeugklasse 1 nicht einfach wie die übrigen Klassen über
  Multiplikation mit Faktoren bestimmt werden?]
#answer[Die Faktoren beschreiben jeweils Anteile der Gesamtverkehrsstärke für die Klassen 2–4;
  der Anteil der Klasse 1 ist der verbleibende Rest $1 - q_s - z_s$. Würde man ihn separat
  multiplizieren, müsste die Summe aller Anteile konsistent 100 % ergeben.]

#question[Wie werden Verkehrsuntersuchungen, Verkehrszählungen und Verkehrsmodelle zur
  Bestimmung der Verkehrsstärke genutzt?]
#answer[Grundsätzlich ist die maßgebende Verkehrsstärke im Rahmen einer Verkehrsuntersuchung
  (Analyse des Verkehrsgeschehens) zu ermitteln: Verkehrszählungen (Dauerzählstellen,
  5-jährliche UN-ECE-Zählungen) liefern Bestandsdaten, Verkehrsmodelle die Prognose
  (Prognosehorizont 15 Jahre). Ist dies nicht möglich, sind Abschätzungen (z.B. aus JDTV
  mit Faktoren) zulässig.]

= Rechenaufgaben und typische Aufgabenstämme
#qcounter.update(0)

#question[Berechnung des Schalldruckpegels eines sinusförmigen Signals mit gegebener
  Amplitude und Frequenz.]
#answer[$tilde(p) = hat(p) / sqrt(2)$, $L_p = 20 dot lg(tilde(p) / p_0)$ mit
  $p_0 = 2 dot 10^(-5)$ Pa. Die Frequenz geht nicht in den Pegel ein (nur bei Frequenz-
  bewertung oder Wellenlänge relevant). Beispiel: $hat(p) = "0,283"$ Pa → $tilde(p) =
  "0,2"$ Pa → 80,0 dB.]

#question[Berechnung von Schalldruckpegel, Frequenz, Wellenlänge und
  Ausbreitungsgeschwindigkeit aus einer eindimensionalen harmonischen Schallwelle
  $p(x, t)$.]
#answer[Aus $p(x, t) = hat(p) cos(omega t - k x)$: $L_p = 20 dot lg(hat(p) / (sqrt(2) p_0))$,
  $f = omega / (2 pi)$, $lambda = 2 pi / k$, $c = omega / k = lambda f$. Beispiel
  (Prüfung 28.02.2022): 80,0 dB, 250,0 Hz, 1,3 m, 335,0 m/s.]

#question[Berechnung der Terzbandpegel und des Gesamtpegels einer Punktschallquelle mit
  zwei Tönen in 100-Hz- und 1000-Hz-Terzbändern unter Berücksichtigung geometrischer
  Ausbreitung und Luftabsorption.]
#answer[Je Terz: geometrische Dämpfung der Punktquelle $20 dot lg(x_2 / x_1)$ und Luftabsorption
  $alpha(f, theta, phi) dot (x_2 - x_1)$ abziehen; Gesamtpegel durch energetische Addition
  der beiden Terzpegel. Beispiel (Prüfung 10.10.2023, 100 dB in 10 m, 2 km, 20 °C, 70 %):
  53,5 dB (100 Hz), 44,1 dB (1 kHz), gesamt 54,0 dB.]

#question[Berechnung des Pegels bei vier identischen Schallquellen, wenn nur eine bzw.
  zwei der Quellen aktiv sind.]
#answer[Gleiche inkohärente Quellen: $L_n = L_1 + 10 dot lg(n)$. Mit Gesamtpegel $L_4$ aller vier
  Quellen: eine Quelle $L_1 = L_4 - 10 dot lg 4 = L_4 - "6,0"$ dB, zwei Quellen
  $L_2 = L_4 - 10 dot lg 2 = L_4 - "3,0"$ dB.]

#question[Berechnung des energieäquivalenten Dauerschallpegels einer Zugvorbeifahrt mit
  Pegelanteilen aus graugussgebremsten und K-/LL-gebremsten Wagen.]
#answer[Energetische Mittelung über die Vorbeifahrtsdauer gewichtet nach Wagenanzahl bzw.
  Längenanteil:
  $
    L_"eq" = 10 dot lg(n_"GG" / n dot 10^(L_"GG" / 10) + n_"K/LL" / n dot 10^(L_"K/LL" / 10))
  $
  (bei unterschiedlichen Zeitanteilen $T_i / T$ als Gewichte).]

#question[Berechnung des Schalldruckpegels eines Güterzuges als Linienschallquelle.]
#answer[Linienquelle im Fernfeld: $L_p = L_(W') - 10 dot lg(2 pi r)$ (freie Ausbreitung,
  Zylinderwelle) bzw. $L_(W') - 10 dot lg(pi r)$ über reflektierender Unterlage, mit
  $r = sqrt(x^2 + (h_R - h_S)^2)$. Bei teilweiser Bodenreflexion: Spiegelquelle mit
  $L_(W') + 10 dot lg(1 - alpha)$ und energetische Addition. Vorher Fernfeld und
  $r < l / pi$ prüfen.]

#question[Berechnung des Schalldruckpegels einer Motorsäge als Punktschallquelle in
  größerer Entfernung.]
#answer[Punktquelle im Fernfeld: $L_p = L_W - 10 dot lg(4 pi r^2) = L_W - 20 dot lg(r) - 11$
  (frei) bzw. $L_W - 20 dot lg(r) - 8$ (Halbraum), oder relativ aus einem bekannten Pegel:
  $L_p(r_2) = L_p(r_1) - 20 dot lg(r_2 / r_1)$; ggf. zusätzlich Luftabsorption.]

#question[Energetische Addition von Zug- und Motorsägengeräusch.]
#answer[Inkohärente Quellen: $L_"ges" = 10 dot lg(10^(L_"Zug" / 10) + 10^(L_"Säge" / 10))$.
  Faustregeln: gleiche Pegel ergeben +3 dB, 10 dB Differenz ergeben +0,4 dB.]

#question[Berechnung des Schalldruckpegels eines Glockenturms als Punktschallquelle ohne
  Reflexionen.]
#answer[Punktquelle mit freier Ausbreitung: $L_p(r) = L_W - 10 dot lg(4 pi r^2)$ bzw. aus
  Referenzpegel $L_p(r_2) = L_p(r_1) - 20 dot lg(r_2 / r_1)$, mit
  $r = sqrt(x^2 + Delta h^2)$ (Höhe des Glockenturms beachten).]

#question[Berechnung der Pegelerhöhung durch Reflexionen an einem asphaltierten
  Veranstaltungsplatz.]
#answer[Bodenreflexion über Spiegelquelle (unter dem Platz gespiegelt). Asphalt ist schallhart
  ($alpha approx 0$), also gleich starke Spiegelquelle; Pegel der Spiegelquelle mit dem
  längeren Weg $r'$ berechnen und energetisch addieren. Bei $r' approx r$ beträgt die
  Erhöhung knapp +3 dB.]

#question[Berechnung des mittleren Schalldruckpegels am Tag bei zeitweise läutenden
  Glocken und zusätzlichem Hintergrundgeräusch.]
#answer[Energetische Mittelung über den Tageszeitraum (z.B. 13 h bzw. 16 h):
  $
    L_"eq" = 10 dot lg(
      1 / T (T_"Glocke" dot 10^(L_"Glocke+HG" / 10) + (T - T_"Glocke")
        dot 10^(L_"HG" / 10))
    )
  $
  wobei während des Läutens Glocke und Hintergrund energetisch addiert werden.]

#question[Berechnung der Pegeldifferenz zwischen GG- und LL-gebremsten Güterzügen anhand
  von Vorbeifahrtspegeln.]
#answer[Aus den Vorbeifahrtspegeln (gleiche Geschwindigkeit, gleiche Messposition):
  $Delta L = L_"GG" - L_"LL"$, bei mehreren Messungen die energetischen Mittelwerte
  $overline(L) = 10 dot lg(1 / n sum 10^(L_i / 10))$ je Gruppe vergleichen.]

#question[Berechnung von stündlichen Mittelungspegeln für mehrere Zugvorbeifahrten mit
  und ohne Industriegeräusch.]
#answer[$
    L_"eq,1h" = 10 dot lg(
      1 / "3600 s" (sum_i T_i dot 10^(L_i / 10)
        + T_"Rest" dot 10^(L_"HG" / 10))
    )
  $
  bzw. mit SEL: $L_"eq,1h" = 10 dot lg(sum_i 10^(L_(E,i) / 10)) - 10 dot lg(3600)$. Ein
  Industriegeräusch wird während der gesamten Stunde (bzw. seiner Dauer) energetisch
  addiert.]

#question[Berechnung des Schalldruckpegels einer fahrenden Schnellbahn, modelliert als
  Linienschallquelle über der Gleisachse.]
#answer[Siehe Prüfung 30.03.2023: Linienquelle über der Gleisachse, Fernfeld prüfen
  ($r >> lambda_max$, $r < l / pi$), Direktschall $L_(W') - 10 dot lg(2 pi r_1)$,
  Spiegelquelle unter SOK mit $10 dot lg(1 - alpha)$ und $r_2$, energetische Addition
  (Ergebnis dort: 78,1 dB).]

#question[Prüfung der Fernfeldbedingung bei einer Linienschallquelle.]
#answer[Fernfeld, wenn der Abstand groß gegenüber der größten Wellenlänge ist ($r >> lambda_max =
  c / f_min$) und groß gegenüber der Quellabmessung quer zur Linie. Zusätzlich darf eine
  endliche Linie der Länge $l$ nur bei $r < l / pi$ als (unendliche) Linienquelle
  betrachtet werden, bei $r >> l$ als Punktquelle.]

#question[Berechnung des äquivalenten Dauerschallpegels im Nachtzeitraum bei
  kurzzeitigem Hundebellen.]
#answer[$L_"eq" = 10 dot lg(
    1 / T (T_"Hund" dot 10^(L_"Hund" / 10) + (T - T_"Hund") dot
      10^(L_"Umg" / 10))
  )$. Beispiel (Prüfung 10.05.2023): 40 dB Umgebung, 80 dB Hund für
  15 min in 8 h ergibt 65,0 dB.]

#question[Berechnung eines A-bewerteten Gesamtpegels aus einem Terzspektrum.]
#answer[A-Bewertung je Terz addieren ($L_(A,i) = L_i + A_i$) und energetisch summieren:
  $L_A = 10 dot lg(sum_i 10^((L_i + A_i) / 10))$. Beispiel: 400 Hz bis 1 kHz mit je 40 dB
  ergibt 45,2 dB(A).]

#question[Berechnung eines unbewerteten Oktavbandpegels aus mehreren Terzbändern.]
#answer[Energetische Summe der drei Terzen der Oktave (z.B. 1-kHz-Oktave: 800, 1000 und
  1250 Hz): $L_"Okt" = 10 dot lg(10^(L_1 / 10) + 10^(L_2 / 10) + 10^(L_3 / 10))$. Drei gleiche
  Terzpegel ergeben $L_"Terz" + "4,8"$ dB.]

#question[Berechnung von Oktavbandpegeln bei rosa Rauschen über fünf Oktavbänder.]
#answer[Rosa Rauschen hat gleiche Energie je Oktave, also gleiche Oktavbandpegel $L_"Okt"$. Der
  Gesamtpegel über 5 Oktaven ist $L_"ges" = L_"Okt" + 10 dot lg 5 = L_"Okt" + 7$ dB, also
  $L_"Okt" = L_"ges" - 7$ dB.]

#question[Berechnung von Terzbandpegeln innerhalb gegebener Oktavbänder.]
#answer[Bei gleicher Aufteilung (rosa Rauschen) sind die drei Terzen einer Oktave gleich:
  $L_"Terz" = L_"Okt" - 10 dot lg 3 = L_"Okt" - "4,8"$ dB; bei weißem Rauschen sind die
  Terzpegel proportional zur Bandbreite (obere Terz am höchsten).]

#question[Berechnung des Schalldruckpegels während eines tonalen Geräusches innerhalb
  eines Hintergrundspektrums.]
#answer[Energetische Addition des Tonpegels zum Bandpegel des betroffenen Terzbandes (bzw. zum
  Gesamtpegel des Hintergrundspektrums): $L = 10 dot lg(
    10^(L_"HG" / 10) +
    10^(L_"Ton" / 10)
  )$; der Gesamtpegel ergibt sich aus der Summe aller Bänder.]

#question[Berechnung der Änderung des mittleren Dauerschallpegels im Nachtzeitraum mit
  und ohne tonales Geräusch.]
#answer[$L_"eq"$ mit Ton aus energetischer Mittelung über die Nacht (Zeitanteil des Tons mit dem
  erhöhten Pegel, Rest mit Hintergrund), $L_"eq"$ ohne Ton = Hintergrundpegel; Änderung
  $Delta L = L_"eq,mit" - L_"eq,ohne"$.]

#question[Berechnung von $L_("eq,day")$ und $L_("eq,night")$ für eine Schnellbahnstrecke
  mit vorgegebenem Fahrplan.]
#answer[Aus Fahrplan Zugzahlen je Zeitraum ermitteln, je Vorbeifahrt SEL bzw.
  $L_"eq" + 10 dot lg(T_i)$:
  $ L_"eq,day" = 10 dot lg(1 / T_"day" sum_i n_i dot T_i dot 10^(L_i / 10)) $
  (Tag 6–22 Uhr bzw. 6–19 Uhr, Nacht 22–6 Uhr, $T$ in s).]

#question[Berechnung von $L_("eq,day")$ und $L_("eq,night")$ mit zusätzlichem konstantem
  Hintergrundgeräusch.]
#answer[Wie oben, zusätzlich der Hintergrund während der restlichen Zeit (bzw. energetisch
  über den ganzen Zeitraum addiert):
  $L_"eq" = 10 dot lg(10^(L_"eq,Zug" / 10) + 10^(L_"HG" / 10))$, sofern der Hintergrund
  während der Vorbeifahrten vernachlässigbar ist.]

#question[Berechnung von $L_"night"$ und $L_"den"$ aus vereinfachten Tagesverläufen des
  Schalldruckpegels.]
#answer[Aus den Tagesverläufen $L_"day"$ (6–19 Uhr, 13 h), $L_"evening"$ (19–22 Uhr, 3 h) und
  $L_"night"$ (22–6 Uhr, 8 h) energetisch mitteln, dann
  $
    L_"den" = 10 dot lg(
      1 / 24 (13 dot 10^(L_"day" / 10) + 3 dot 10^((L_"evening" + 5) / 10)
        + 8 dot 10^((L_"night" + 10) / 10))
    )
  $]

#question[Berechnung von Immissionspegeln bei Vorbeifahrten, Linienquellen,
  Punktquellen, Bodenabsorption und Reflexionen.]
#answer[Vorgehen: Quellentyp festlegen (Linie: $-10 dot lg(2 pi r)$, Punkt:
  $-10 dot lg(4 pi r^2)$), Fernfeld prüfen, Abstände über Pythagoras, Bodenreflexion über
  Spiegelquelle mit $10 dot lg(1 - alpha)$ (ideal absorbierend: keine Spiegelquelle; schallhart:
  gleich starke Spiegelquelle), Luftabsorption ggf. abziehen, alle inkohärenten Anteile
  energetisch addieren.]

#question[Berechnung bzw. Vergleich des SEL zweier Zugvorbeifahrten mit
  unterschiedlicher Dauer und unterschiedlichem Vorbeifahrtspegel.]
#answer[$L_E = L_"eq,T" + 10 dot lg(T / "1 s")$ für beide Fahrten berechnen und vergleichen; die
  längere Fahrt gewinnt, solange der Pegelunterschied kleiner als $10 dot lg(T_1 / T_2)$ ist
  (z.B. 60 s gegen 5 s: 10,8 dB).]

#question[Prüfung, ob die gewählte Messdauer bei einer sehr kurzen Zugvorbeifahrt den
  relevanten Energieanteil vollständig erfasst.]
#answer[Prüfen, ob der Pegelverlauf am Anfang und Ende des Messintervalls um mindestens ca. 10 dB
  unter das Maximum abgefallen ist bzw. das Hintergrundniveau erreicht hat. Der SEL darf sich
  bei Verlängerung des Intervalls nicht mehr nennenswert ändern; andernfalls ist das
  Intervall zu verlängern.]

#question[Berechnung des Pegelabfalls bzw. Schalldruckverhaltens für Flächen-, Linien-
  und Punktschallquellen über die Entfernung.]
#answer[Flächenquelle: $L_p$ konstant ($Delta L = 0$). Linienquelle: $Delta L = 10 dot lg(
    r_2 /
    r_1
  )$ ($-3$ dB je Verdopplung). Punktquelle: $Delta L = 20 dot lg(r_2 / r_1)$ ($-6$ dB je
  Verdopplung); jeweils im Fernfeld.]

#question[Prüfung von Fernfeldbedingungen anhand von Entfernung und Wellenlänge.]
#answer[$lambda_max = c / f_min$ berechnen und mit dem Abstand vergleichen ($r >> lambda / (2 pi)$,
  praktisch einige Wellenlängen); außerdem $r >> d$ (größte Quellabmessung).]

#question[Abschätzung der maßgebenden Verkehrsstärke Qm aus JDTV und
  Umrechnungsfaktoren.]
#answer[$Q = "JDTV" dot k_L$ (je Zeitraum), $Q_2 = Q dot q_s dot l_s$,
  $Q_3 = Q dot q_s dot (1 - l_s)$, $Q_4 = Q dot z_s$, $Q_1 = Q - Q_2 - Q_3 - Q_4$, mit den
  Faktoren aus RVS 04.02.11 je Straßentyp (Beispiel: JDTV = 20 000 Kfz/24 h,
  Hauptstraße innerorts, Klasse 2 abends).]

#question[Berechnung bzw. Abschätzung von Emissionsminderungen bei teilweiser Umrüstung
  von Güterzügen auf leise Bremssohlen.]
#answer[Mit Umrüstungsanteil $a$ und Minderung $Delta L_0$ je umgerüstetem Wagen:
  $ Delta L = 10 dot lg((1 - a) + a dot 10^(-Delta L_0 / 10)) $
  z.B. $Delta L_0 = 10$ dB: 50 % ergibt $-"2,6"$ dB, 80 % ergibt $-"5,5"$ dB.]
