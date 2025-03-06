#import "../universal.typ":*

= Thermoanalytische Analyseverfahren
Oberbegriff für Methoden, bei denen physikalische und chemische Eigenschaften eines Stoffes, eines Subsatzgemisches oder von Reaktionsgemischen als Funktion der Temperatur gemessen werden, wobei die Probe einem kontrollierten Temperaturprogramm unterzogen wird.

Arten der thermoanalytischen Verfahren:
- Thermogravimetrie
- Thermische Analyse
- Kalorimetrische Verfahren

== Thermogravimetrie

/ Messprinzip: beruht auf Massenänderung der Probe in Abhängigkeit von der Temperatur.
/ Messanordnung: Empfindliche Waage, Ofen für Temperaturprogramm, Vorrichtung für inerte oder reaktiven Atmosphäre.
#figure(
  cetz.canvas({
    import draw:*
    import cetz-plot: *
  
    let p1 = ((0,6),(7,6))
    let p2 = ((0,5.7),(0.4,5.2),(1,5),(7,5))
    let p3 = ((0,4.7),(2,4.7),(2.8,4),(7,4))
    let p4 = ((0,4),(1,4),(1.5,3.5),(3,3.5),(3.5,3),(7,3))
    // let p5 = ((0,3),(1.5,3),(2,2.8),(3,2.2),(4,1.2),(5,0.9),(6,0.8),(7,0.7))
    
    plot.plot(
      size:(5,4),
      x-tick-step:none,
      y-tick-step:none,
      x-min:0, x-max:7,
      y-min:2, y-max:6,
      x-label:"T",y-label:"y",
      axis-style:"school-book",
    {
      plot.add(p1, label:"thermostabile Substanz")
      plot.add(p2, label:"Trocknung")
      plot.add(p3, label:"zwei stabile Formen")
      plot.add(p4, label:"drei stabile Formen")
      // plot.add(p5, label:"thermisch instabile Substanz")
    })
  }), caption: [Thermogravimetrische Kurven]
)<fig-thermogravimetrie>

== Differenz-Thermoanalyse (DTA)

/ Messprinzip: beruht auf Messung der Temperaturdifferenz zwischen Probe und einer inerten Referenzverbindung in Abhängigkeit von der Temperatur.

#missing

== Differential Scanning Calorimetry (DSC)

#missing