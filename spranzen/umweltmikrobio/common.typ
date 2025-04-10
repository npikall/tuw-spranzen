#import "@preview/gentle-clues:1.2.0" as gc
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/whalogen:0.3.0": ce
#import "@preview/lilaq:0.2.0" as lq
#import "@preview/tiptoe:0.3.0"
#import "@preview/tiaoma:0.3.0"

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

#let digram-style = (
  node-fill: blue.lighten(50%),
  node-corner-radius: 5pt,
  node-stroke: 0.7pt,
)

#let fragen-title(n: 1) = {
  let fcount = context fragen-counter.display()
  let title = [Frage #fcount #h(1fr) #n]
  return title
}

#let nfrage(
  n: 1,
  icon: gc._get-icon-for("question"),
  ..args,
) = {
  fragen-counter.step()
  gc.clue(
    accent-color: rgb("#179299"),
    title: fragen-title(n: n),
    icon: icon,
    ..args,
  )
}

#let antwort(display: true, body) = {
  if display {body} else {hide(body)}
}

// Insert Github Link
#let github-link = [
  #align(center, rect(width: 60%)[
    #show link: set text(font: "Ubuntu Mono")
    If you want to see the source code of this document or want to contribute or raise an issue, you can find it on GitHub:
    #tiaoma.qrcode("https://github.com/npikall/tuw-spranzen")
    #link("https://github.com/npikall/tuw-spranzen")
  ])
]
