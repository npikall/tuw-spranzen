#import "@preview/gentle-clues:1.2.0" as gc

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

#let missing = {
  set text(fill:red)
  // lorem(50)
  rect(width: 100%, stroke:red, align(center)[MISSING])
}