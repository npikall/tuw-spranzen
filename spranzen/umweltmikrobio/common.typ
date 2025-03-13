#import "@preview/gentle-clues:1.2.0" as gc
#import "@preview/fletcher:0.5.6" as fletcher: diagram, node, edge

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

#let missing(content) = {
  set text(fill: red)
  let msg = if content == [] {"MISSING" } else { content }
  rect(width: 100%, stroke: red, align(center, msg))
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
