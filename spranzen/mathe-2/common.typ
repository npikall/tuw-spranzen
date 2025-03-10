// This file contains common definitions for the entire document
#import "@preview/cetz:0.3.3"
#import "@preview/gentle-clues:1.2.0" as gc

#let definition-counter = counter("definition")

#let definition(body, title:none) = {
        definition-counter.step()
        let count = context counter(heading.where(level: 1)).display() + "."+ counter("definition").display()

        rect(width:100%, inset: 1em)[
                #strong[Def. #count: #title]\
                #body
        ]
}

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