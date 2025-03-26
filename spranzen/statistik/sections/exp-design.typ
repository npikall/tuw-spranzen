#import "../common.typ":*
= Experimental design

== Grundlegende Aspekte der statistischen Versuchsplanung
Statistische Versuchsplanung ist die Formalisierung von Arbeitschritten zur Untersuchung einer Forschungsfrage.

- Reproduzierbarkeit gewährleisten
- passende Daten sammeln und passende statistische Methoden verwenden
- den individuellen Charakter der Frage berücksichtigen
- ökonomische Aspekte berücksichtigen und Kosten wenn möglich minimieren

Dazu wird wie folgt vorgegangen:
+ Klarifizieren bzw Ableiten einer Fragestellung
+ Übersetzung der Frage in ein fachspezifisches Modell und anschließend ein passendes statistisches Modell wählen
+ Detaillierte Festlegung des Versuchsplans
+ Festlegung der Datenbeschaffung oder Stichprobenerhebung
+ Detailierte Festlegung der statistischen Methoden
+ Ökonomische Optimierung der Versuchsplanung (zB optimaler stichprobenumfang)

== Varianzquellen in statistischen Experimenten
*Primärvarianz:* Anteil der Varabilität in Daten, der durch die
Variation der experimentellen Bedingungen erklärt werden kann

*Sekundärvarianz:* Anteil der Variabilität in Daten, der durch die
Wirkung von Störvariablen verursacht wird (Systematischer Fehler)

*Fehlervarianz:* Anteil der Variabilität in Daten, der durch zufällige
Unterschiede der Messungen oder durch zufällige, unsystematische
Einflüsse verursacht wird (Zufälliger Fehler)

Das Ziel der statistischen Versuchsplanung ist es, unter anderem, die
Primärvarianz zu maximieren, die Sekundärvarianz zu kontrollieren und die
Fehlervarianz zu minimieren.

== Prinzipien der statistischen Versuchsplanung
=== Arten von Störgrößen
- Eliminierbare Störgrößen
- Kontrollierbare Störgrößen
- Nicht kontrollierbare Störgrößen

=== Randomisierung
Randomisierung reduziert den Einfluss von Störgrößen in statistischen Experimenten, indem sie Gruppen und Bedingungen zufällig zuweist. Dadurch werden Störvariablen ausgeglichen, was statistische Zusammenhänge zuverlässiger macht. Sie ist besonders in der medizinischen Statistik verbreitet, funktioniert aber nur bei *großen Stichproben* gut.

=== Blockbildung
Blockbildung ist eine Alternative zur Randomisierung bei *kleinen Stichproben*, um den Einfluss von Störgrößen zu kontrollieren. Dabei wird die Stichprobe in Blöcke mit ähnlichen Eigenschaften eingeteilt, sodass Heterogenitäten berücksichtigt werden. Die Blöcke können in der Analyse separat betrachtet oder als erklärende Variable einbezogen werden. Eine Kombination mit Randomisierung innerhalb der Blöcke ist möglich.

=== Statistische Kontrolle von Störfaktoren
Die statistische Kontrolle von Störfaktoren integriert diese direkt in die Modellierung, um ihren Einfluss zu berücksichtigen. Sie hängt von der verwendeten Analysemethode ab und ist oft unvermeidbar, wenn Störgrößen nicht ausgeschlossen oder gesteuert werden können, z. B. in ökonomischen Studien.

=== Weitere Prinzipien
- Wiederholungen
- Kontrollgruppen
- Ökonomie

== Typen von Stichproben
=== Einfache Zufallsstichprobe
Eine einfache Zufallsstichprobe ist eine zufällige Auswahl von Elementen aus einer Population, bei der jedes Element die gleiche Chance hat, ausgewählt zu werden. Dabei werden Störfaktoren nicht berücksichtigt, und es wird angenommen, dass die Population homogen ist, sodass die Stichprobenwerte unabhängig und identisch verteilt sind.

=== Geschichtete Stichproben
Bei geschichteten Stichproben wird die Population in homogene Schichten unterteilt, um den Einfluss bestimmter Merkmale zu berücksichtigen. Jede Schicht wird separat beprobt und kann einzeln oder gemeinsam analysiert werden. Die Stichprobengröße sollte proportional zur Schichtgröße sein, um Verzerrungen zu vermeiden.

=== Klumpenstichproben
Bei einer Klumpenstichprobe wird die Population in natürliche Gruppen (Klumpen) unterteilt, aus denen zufällig einige ausgewählt oder vollständig analysiert werden. Sie ist kosteneffizient, berücksichtigt jedoch Störfaktoren nicht explizit. Im Gegensatz zur geschichteten Stichprobe wird angenommen, dass die Heterogenität innerhalb der Klumpen der Gesamtpopulation entspricht.

== Inverse Probleme der Stichprobengröße
Der minimale Stichprobenumfang, sodass ein Effekt mit einer vorgegebener Wahrscheinlichkeit durch den statistischen Versuch nachgewiesen werden kann,
beziehungsweise die statistische Schätzung einer Merkmalausprägung einer
vorgegebenen Genauigkeit genügt.

*Einstichproben t-Test:*
Beim Einstichproben-t-Test wird überprüft ob der Mittelwert einer
normalverteilten Zufallsvariablen signifikant von einem vorgegebenen Wert
abweicht, wobei die Varianz $sigma_x^2$
nicht bekannt ist.

$
T = (sqrt(n) dot (overline(X) - mu_0))/S
$

*Zweistichproben t-Test:*
Beim einem Zweistichproben-t-Test wird überprüft ob die Differenz des
Mittelwerts von zwei normalverteilten Zufallsvariablen signifikant von
einem vorgegebenen Wert (meistens 0) abweicht. Die Varianzen werden
nicht als bekannt vorausgesetzt.
