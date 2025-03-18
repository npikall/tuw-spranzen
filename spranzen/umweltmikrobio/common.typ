#import "@preview/gentle-clues:1.2.0" as gc
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

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
