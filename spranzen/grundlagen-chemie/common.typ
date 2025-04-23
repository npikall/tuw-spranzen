// The global variables and functions used repeatedly in other files
// This file is imported in all other files to provide a common set 
// of variables and functions that are used repeatedly in other files

// Importing some useful packages
#import "@preview/fletcher:0.5.7": diagram, node, edge // for drawing diagrams
#import "@preview/cetz:0.3.4" // for drawing images 
#import "@preview/gentle-clues:1.2.0" as gc // for inserting callouts or admonitions
#import "@preview/lilaq:0.1.0" as lq // for plotting similar to matplotlib
#import "@preview/tiptoe:0.3.0" // for drawing arrows
#import "@preview/pillar:0.3.1" // for drawing tables
#import "@preview/tiaoma:0.3.0" // for generating QR codes
#import "@preview/whalogen:0.3.0": ce
#import "@preview/alchemist:0.1.5": * //skeletize, single, branch, double, molecule
#import "@preview/unify:0.7.1": qty
#import "@preview/rubber-article:0.4.0": ctable

// Default indicator for missing content
#let missing(content) = {
  set text(fill: red)
  let msg = if content == [] {"MISSING" } else { content }
  rect(width: 100%, stroke: red, align(center, msg))
}
// Default indicator for missing plots
#let missing-plot(content: "MISSING PLOT") = {
  figure(
    rect(fill: red, height: 2cm, text(white, weight: 600, content)),
    caption: content,
  )
}

#let diagram-style = (
  node-fill: blue.lighten(50%),
  node-corner-radius: 5pt,
  node-stroke: 0.7pt,
)

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

#let antwort(display: true, body) = {
  if display {body} else {hide(body)}
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

// Insert Github Link
#let github-link = [
  #align(center, rect(width: 60%)[
    // #show link: set text(font: ("Ubuntu Mono","PT Mono"))
    If you want to see the source code of this document or want to contribute or raise an issue, you can find it on GitHub:
    #tiaoma.qrcode("https://github.com/npikall/tuw-spranzen")
    #link("https://github.com/npikall/tuw-spranzen")
  ])
]

// Color Palette
#let colors = (
  aqua,
  green,
  orange,
  red,
  maroon,
  navy,
).map(c => c.lighten(20%))
