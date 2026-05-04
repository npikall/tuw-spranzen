#import "@local/spranzen:0.1.0": *
= Zeitlich periodische Bewegungen: Schwingungen
#fragen-counter.update(0)
== Gedämpfte Schwingung
#frage[Wie lautet die Schwingungsgleichung der gedämpften Schwingung? Wie wird sie aufgestellt und
  was bedeuten ihre einzelnen Terme?]

#let schwingung-plot = {
  let beta = 0.07
  let A = 2
  let omega = 1
  let xs = lq.linspace(1, 30, num: 100)
  let ys = xs.map(t => calc.exp(-beta * t) * A * calc.sin(omega * 1 / t + t))

  lq.diagram(
    lq.plot(xs, ys),
  )
}

$
  x(t) = e^(-beta t) dot A dot sin(omega *) // TODO: Formel
$

#figure(schwingung-plot)

#frage[Geben Sie einen Lösungsansatz an und zeigen Sie, dass er die Schwingungsgleichung erfüllt]
#missing[]
#frage[Diskutieren Sie die verschiedenen Lösungen die sich ergeben und skizzieren Sie die
  Bewegungsabläufe]
#missing[]
#frage[Betrachten Sie den Fall einer horizontal schwingenden Masse an einer Feder die durch die Luft
  gedämpft wird. Wie lautet die Schwingungsgleichung (Erläutere die einzelnen Terme)?]
$
  m x^4 + b x' + k x = 0
$

#frage[Diskutieren Sie die verschiedenen Lösungen und zeichnen Sie die Weg-Zeit Diagramme der
  Bewegungsabläufe]
#missing[]
#frage[Was ist das logarithmische Dekrement?]
Das logarithmische Dekrement ist ein Mass fuer das Daempfungsverhalten in frei schwingenden Schwingungssystemen.

== Ungedaempfte Schwingung
#frage[Lösen Sie die Bewegungsgleichung eines eindimensionalen ungedämpften Masse/Feder Systems]
$
  (dif^2 x(t))/(dif t^2) + c_F/m x = 0
$

Ansatz:
$
                    x(t) & = "const" dot e^(alpha t) \
      (dif x(t))/(dif t) & = alpha "const" dot e^(alpha t) \
  (dif^2 x(t))/(dif^2 t) & = alpha^2 "const" dot e^(alpha t) \
                         \
                         & ==> alpha^2 + c_F / m = 0
$

#frage[Welche Bedingungen muss die rückwirkende Kraft erfüllen?]
$
  arrow(F) = m dot (dif^2 x(t))/(dif t^2) dot arrow(e_x) = - c_F dot x(t) dot arrow(e_x)
$
(2. Newtonsches Axiom = Federkraft Hook'sches Gesetz)

Rueckweirkende Federkraft muss so gross sein wie 2. Newtonsches Axiom

#frage[Wie groß ist die Eigenfrequenz?]
$
  omega_0 = sqrt(c_F/m) --> "Kreisfreq. ist immer positiv"
$

#frage[Skizzieren sie den zeitlichen Verlauf vom potentieller und kinetischer Energie]
#missing-plot()
#frage[Wie lautet die Schwinungsgleichung für Masse/Feder System und für mathematisches Pendel]
- Masse/Federsystem: $x(t) = c dot sin(omega_0 dot t + psi)$
- Mathematisches Pendel: $phi(t) = A dot sin(omega_0 dot t + psi)$

#frage[Welche der Eigenfrequenzen hängt von der Masse ab, welche nicht?]
Die Feder haengt von der Masse ab.
Das Pendel nicht.

#frage[Sie bringen beide Systeme auf den mind. Welche eigenfrequenz ändert sich gegenüber der auf
  der Erde, welche nicht?] // TODO: Was ist der richtige Wortlaut der Frage?
Die Eigenfrequenz des Pendels aendert sich, da sie von g abhaengig ist.

#frage[Gegeben sei ein Masse/Feder-System auf einer reibungsfreien Unterlage. Leiten Sie die
  Bewegungsgleichung der ungedämpften Schwingung her]
#missing[]
#frage[Skizzieren Sie den Bewegungsablauf der Masse in einem Weg-Zeit-Diagramm, und zeichnen Sie
  Amplitude und Periodendauer in die Skizze ein]
$
  "Ort:" x(t) = A dot cos(omega_0 dot t) \
$
#let masse-feder = {
  let A = 1
  let omega = 2
  let xs = lq.linspace(0, 10, num: 100)
  let ys = xs.map(x => A * calc.cos(x * omega))
  lq.diagram(
    xlabel: $t$,
    ylabel: $x(t)$,
    lq.plot(xs, ys, label: "x(t)", mark: none),
  )
}
#figure(
  masse-feder,
)

#frage[Wie groß ist die Eigenfrequenz und die Periodendauer der Schwingung?]
$
  omega_0 = sqrt(c_F/m) = (2 pi)/T ==> T = omega_0/(2 pi)
$

#frage[Wie verändert sich die Eigenfrequenz der harmonischen Schwingung, wenn die Masse verdoppelt,
  die Federkonstante jedoch konstant gehalten wird?]
wird um $sqrt(2)$ weniger ($omega_0 = sqrt(c_F/m)$)

#frage[Wie lauten die zeitabhängigen Geschwindigkeit v(t) und die Beschleunigung a(t) und wie groß
  sind ihre Maximalwerte?]
$
      "Ort" & : x(t) = A dot cos(omega_0 dot t) \
  "Geschw." & : v(t) = (dif x)/(dif t) = - A dot omega_0 dot sin(omega_0 dot t) \
  "Beschl." & : a(t) = (dif v)/(dif t) = - A dot omega_0^2 dot cos(omega_0 dot t) \
$
#let masse-feder = {
  let A = 1
  let omega = 2
  let xs = lq.linspace(0, 10, num: 100)
  let ys = xs.map(x => A * calc.cos(x * omega))
  let ys1 = xs.map(x => -A * omega * calc.sin(x * omega))
  let ys2 = xs.map(x => -A * calc.pow(omega, 2) * calc.cos(x * omega))
  lq.diagram(
    lq.plot(xs, ys, label: "x(t)"),
    lq.plot(xs, ys1, label: "v(t)"),
    lq.plot(xs, ys2, label: "a(t)"),
  )
}
#figure(
  masse-feder,
)

#frage[Gegeben ist ein mathematisches Pendel. Stellen Sie seine Bewegungsgleichung mit Hilfe des
  Energierhaltungssatzes auf]
$
  "Energieerhaltung:" (dif W_"ges")/(dif t) &= dif/(dif t)(W_"kin" + W_"pot") = 0\
  W_"kin" &= (m dot v^2)/2
$


#frage[Was ist die Rückübersetzung Kraft des Pendels?]
Schwerkraft: $m dot g$

#frage[Wie groß ist die eigenfrequenz des Pendels ?]
$
  omega_0 = sqrt(g/l)
$

#frage[Warum hängt die Eigenfrequenz nicht von der Masse des Pendels ab?]
Weil die Energien beim Energieerhaltungssatz gleichgesetzt und gekuerzt werden

== Erzwungene Schwingung
#frage[Wie lautet die Schwingungsgleichung?]
$
  x(t) = A(Omega) dot cos(Omega dot t - psi)
$
Schwingung, Kreisfrequenz = Erregerfrequenz $Omega$

#frage[Wie wird sie aufgestellt und was bedeuten die einzelnen Terme?]
#missing[]
#frage[Mit welcher Frequenz schwingt das System im stationären Zustand?]
Stationaere erzwungene Schwingung: Frequenz unabhaengig von Eigenfrequenz (nur durch Aeussere Anregung $Omega$)

#frage[Wie hängen Amplitude und Phasenwinkel von der Frequenz ab?]
#missing[]
#frage[Was ist die Resonanzkatastrophe und wie kann sie vermieden werden?]
/ Resonanzkatastrophe: Zerstoerung eines Bauwerkes durch uebermaessige Schwingungsamplituden im Resonanzfall. tritt auf bei $beta=0$

Massnahmen:
- Einbau von Schwingungsteilen
- Einbau von Anti-Schwingungs Massnahmen

#frage[Skizzieren Sie Amplitude und Phasenwinkel im stationären in Abhängigkeit von der Dämpfung und
  von $Omega$?]
#missing[]
== Einschwingvorgang
#frage[Ein gedämpftes Masse/Feder System wird von einem Erreger, der sich periodisch mit der
  Kreisfrequenz Ω bewegt, angetrieben. a) Welche Schwingungen überlagern sich beim
  Einschwingvorgang? b) In welcher Zeit ist in etwa der stationäre Zustand erreicht?]
Freie Schwingung + Erregerschwingung
$tau = 1 / beta$
#missing-plot()
#frage[Was sind Schwebungen und warum sind sie beim Einschwingvorgang wichtig, wenn das
  Masse/Federsystem eine geringe Dämpfung aufweist und nahe seiner Eigenfrequenz angeregt wird?]
Ueberlagerungen von 2 Schwingungen mit gleicher Amplitude und aehnlicher Kreisfrequenz

Wenn die Eigenfrequenzen sehr aehnlich oder gleich sind addieren sich die Amplitufen der beiden Schwingungen $==>$ angeregtes System hat sehr schnell eine sehr hohe Amplitude
#missing[]
