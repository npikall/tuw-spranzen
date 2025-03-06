// The global variables and functions used repeatedly in other files
#import "@preview/fletcher:0.5.5":* 
#import "@preview/cetz:0.3.3"
#import "@preview/cetz-plot:0.1.1" 
#import "@preview/gentle-clues:1.2.0" as gc 

#let colors = (aqua.lighten(20%), green.lighten(20%), orange.lighten(20%))
#let missing = {
  set text(fill:red)
  // lorem(50)
  rect(width: 100%, stroke:red, [#lorem(15)])
}

#let missing-plot = {
  figure(
    rect(fill:red, height: 2cm, text(white, weight: 600)[Plot einfügen!]),
    caption:[Hier fehlt ein Plot]
  )
}

#let crameri = (
  rgb(49%, 9%, 0%),
  rgb(60%, 32%, 8%),
  rgb(68%, 49%, 16%),
  rgb(78%, 70%, 33%),
  rgb(81%, 88%, 64%),
  rgb(64%, 89%, 82%),
  rgb(36%, 75%, 82%),
  rgb(19%, 56%, 75%),
  rgb(12%, 39%, 68%),
  rgb(1%, 19%, 60%),
)

#let crameri-r = crameri.rev()

#let cmcrameri = (
  crameri-r.at(3).lighten(40%),
  crameri-r.at(5).lighten(10%),
  crameri-r.at(8).lighten(40%),
)

// #for c in crameri {
//   rect(fill:c)
// }

#let fragen-counter = counter("fragen")
#let fcount = context fragen-counter.display()
#let frage(
  title:[Frage #fcount], 
  icon: gc._get-icon-for("question"), 
  ..args
) = {
  fragen-counter.step()
  gc.clue(
    accent-color: rgb("#179299"),
    title:title,
    icon:icon,
    ..args
  ) 
}