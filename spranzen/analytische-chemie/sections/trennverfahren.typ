#import "../common.typ":*

= Trennverfahren

== Chromatographie Grundlagen
Die Chromatographie kommt bei der Trennung von Stoffen vor, welche in miteinander nicht mischbaren Phasen vorliegen. Als Grundlage der Stofftrennung dient die *Adsorption*.

Verteilung einer Komponente eines Gemisches zwischen zwei nicht mischbaren Phasen: 
$
K = (a_"Analyt" ("Organ")) / (a_"Analyt" (H_2O)) = a_"II" /a_"I"
$
/ K: Verteilungunskoeffizient
/ $a_I (I I)$: Aktivität der Substanz
/ Phase I: Phase in der die Substanz zuerst vorliegt
/ Phase II: Phase des Extraktionsmittels

Diese einfache Gleichung gilt nur, wenn keine Dissoziation, Assoziation, Komplexbildung oder Säure-Basen Reaktion des Analyten vorliegt.

=== Einfache Verteilung
$
K = a_"II"/ a_"I" approx c_"II"/ c_"I" = m_"II"/ v_"II" dot m_"I"/ v_"I" = G/V
$
Diese Verteilung gilt für verdünnte Lösungen und in Abwesenheit von Nebenreaktionen.

=== Multiplikative Verteilung
Trennwirkung eines Systems in Bezug auf zwei Komponenten durch den Quotienten $alpha$ (= Trennfaktor) gegeben:
$
alpha = k_1/k_2
$
für $v_("II") = v_"I" arrow k_1 = (m_1("II"))/(m_1("I"))$ und $k_2 = (m_2("II"))/(m_2("I"))$

Für eine quantitative Trennung: $(m_2 ("II"))/(m_1 ("II")) <= 0.001$ 

wenn $c_1("I") = c_2("I")$\
#sym.arrow $alpha >= 1000$\
#sym.arrow in einem Trennschritt kaum zu erreichen

=== Gegenstromverteilung nach Craig
Trennung zweier Stoffe durch Verteilung zwischen zwei miteinander nicht mischbaren Phasen mittels einer Anzahl von n Scheide trichtern.

#figure(
  rect(image("../assets/gegenstromverteilung.png", width: 70%)),
)

#figure(
  table(
    columns: 3,
    table.hline(),
    table.header([mobile Phase], [stationäre Phase], [Verfahren]),
    table.hline(),
    [flüssig],[fest],[LSC],
    [flüssig],[flüssig],[LLC],
    [gas],[fest],[GSC],
    [gas],[flüssig],[GLC],
    table.hline(),
  ),caption: [Einteilung der chromatographischen Verfahren nach den verwendeten Phasensystemen.]
)

=== Informationsgehalt der Chromatographie
/ qualitative Informationen: diese stecken in der Zeit, zu der ein Peak mit seinem Maximum am Säulenende bzw. am Detektor ankommt.
/ quantitative Informationen: diese stecken in der Höhe oder in der Fläche des Signals, typischerweise der Gauß-Peak im Chromatogramm.

=== Kenngrößen in der Chromatographie

#figure(
  cetz.canvas({
    import draw: *
    import cetz-plot: *
  
    // Stil für Achsen und Legende setzen
    set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)),
              legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))
  
    plot.plot(size: (9, 5),
      x-label: [Zeit $t_R$],
      y-label: "Signalhöhe h",
      x-tick-step: none,
      y-tick-step: none,
      y-min: 0, y-max: 12,
      x-min:0, xmax: 20,
      {
        
        let f(x, sigma:calc.sqrt(1), mu:1, height:1) = 1/(sigma * calc.sqrt(2 * calc.pi)) * calc.exp(-0.5 * calc.pow((x - mu)/sigma, 2)) * height
        let domain = (0, 20)
  
        plot.add(x => f(x, mu:3, sigma:calc.sqrt(3), height:10), domain: domain,style: (stroke: black), samples:100)
        plot.add(x => f(x, mu:10, sigma:calc.sqrt(1), height:12), domain: domain,style: (stroke: black), samples:100)
        plot.add(x => f(x, mu:18, sigma:calc.sqrt(0.5), height:15), domain: domain,style: (stroke: black), samples:150)
        
        plot.add-vline(3, style:(stroke:red))
        plot.add-vline(10, style:(stroke:red))
        plot.add-vline(18, style:(stroke:red))

        plot.annotate({
          content((1.8,2.8), $t_m$)
          line((0,2.3), (3,2.3), mark:(end:"stealth"), stroke: blue)
        })
        plot.annotate({
          content((7,5.3), $t_("R2")$)
          line((0,4.8), (10,4.8), mark:(end:"stealth"), stroke: blue)
        })
        plot.annotate({
          content((14,8.9), $t_("R1")$)
          line((0,8.4), (18,8.4), mark:(end:"stealth"), stroke: blue)
        })
        plot.annotate({
          content((7,2), $t_("r2")$)
          line((3,1.5), (10,1.5), mark:(end:"stealth", start:"stealth"), stroke: green)
        })
        plot.annotate({
          content((14,3.5), $t_("r1")$)
          line((3,3), (18,3), mark:(end:"stealth", start:"stealth"), stroke: green)
        })
      }
    )
  })
)

/ $t_"R"$: Retentionszeit
/ $t_m$: Totzeit. Zeit, die eine nicht zurückgehaltene Komponente benötigt, um die Säule zu passieren.
/ $t_r$: $= t_"R" - t_m$ korrigierte Retentionszeit
/ v: Strömungsgeschwindigkeit der mobilen Phase [m/min]
/ $"v"_"R"$: Retentionsvolumen 
/ $"v"_"M"$: Totvolumen 
/ $"v"_"r"$: korrigiertes Retentionsvolumen 

=== Theoretische Grundlage der Chromatographie
Wechselwirkung der Komponente A mit der stationären bzw. moilen Phase.
#missing

== Grundlagen für die Trennung über die Gasphase
Als Grundlage dient das Henry'sche Gesetz
$
p_1 = p_1^* dot x_1
$
bzw. das Rault'sche Gesetz
$
p_1 = p_1^* dot x_1 dot gamma_(1,3)
$
/ $p_1$: Dampfdruck der Komponente 1 übr der Mischung
/ $p_1^*$: Dampfdruck der reinen Komponente
/ $x_1$: Molenbruch der Komponente 1 in der Mischung
/ $gamma_(1,3)$: Aktivitätskoeffizient

Das Rault'sche Gesetz besagt, dass der Dampfdruck einer Lösung direkt proportional zum Molenbruch des Lösungsmittels in dieser Lösung ist. Also je mehr Lösungsmittel vorhanden ist, desto höher ist der Dampfdruck der lösung. 
Für eine Trennung ist notwendig:
$
(p_1 \/ x_1)/(p_2 \/ x_2) = (p_1^* dot gamma_(1,3))/(p_2^* dot gamma_(2,3)) approx t_"R2" / t_"R1"
$

=== Theoretische Trennstufen:
Analogie zu einer diskreten Verteilungstufe der flüssig/flüssig Extraktion nach Craig oder zu einem theoretischen Boden in der Destillation.
#missing

== Gaschromatographie
== Flüssigkeitschromatographie
== Papier- und Dünnschichtchromatographie
== Säulenchromatographie

