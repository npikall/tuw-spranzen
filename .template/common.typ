// The global variables and functions used repeatedly in other files
// This file is imported in all other files to provide a common set 
// of variables and functions that are used repeatedly in other files

// Importing some useful packages
#import "@preview/fletcher:0.5.5":*
#import "@preview/cetz:0.3.3"
#import "@preview/cetz-plot:0.1.1"
#import "@preview/gentle-clues:1.2.0" as gc

// default indicator for missing content
#let missing(content) = {
  set text(fill: red)
  let msg = if content == [] {"MISSING" } else { content }
  rect(width: 100%, stroke: red, align(center, msg))
}
// default indicator for missing plots
#let missing-plot = {
  figure(
    rect(fill: red, height: 2cm, text(white, weight: 600)[Plot einfügen!]),
    caption: [Hier fehlt ein Plot],
  )
}

// Formatting for Questions
#let fragen-counter = counter("fragen")
#let fcount = context fragen-counter.display()
#let frage(
  title: [Frage #fcount],
  icon: gc._get-icon-for("question"),
  ..args,
) = {
  fragen-counter.step()
  gc.clue(
    accent-color: rgb("#179299"),
    title: title,
    icon: icon,
    ..args,
  )
}

// Balanced Columns Function
#let eqcolumns(n: 2, gutter: 4%, content) = {
  layout(size => [
    #let (height,) = measure(
      block(
        width: (1 / n) * size.width * (1 - float(gutter) * n),
        content,
      ),
    )
    #block(
      height: height / n,
      columns(n, gutter: gutter, content),
    )
  ])
}
