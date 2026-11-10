// Importing some useful packages
#import "@preview/fletcher:0.5.8": diagram, edge, node // for drawing diagrams
#import "@preview/gentle-clues:1.3.1" as gc // for inserting callouts or admonitions
#import "@preview/lilaq:0.6.0" as lq // for plotting similar to matplotlib
#import "@preview/pillar:0.3.3" // for drawing tables
#import "@preview/tiaoma:0.3.0" // for generating QR codes
#import "@preview/tiptoe:0.4.0" // for drawing arrows

// Default indicator for missing content
#let missing(content) = {
  set text(fill: red)
  let msg = if content == [] { "MISSING" } else { content }
  rect(width: 100%, stroke: red, align(center, msg))
}
// Default indicator for missing plots
#let missing-plot(content: "MISSING PLOT") = {
  figure(
    rect(fill: red, height: 2cm, text(white, weight: 600, content)),
    caption: content,
  )
}

// Content shown in the PDF only, e.g. exam intro text that the study app
// (tools/server, HTML export) should not show.
#let pdf-only(body) = context if target() != "html" { body }

// Formatting for Questions
#let qcounter = counter("question")

// HTML export: plain marked-up question for the study app (tools/server)
#let html-question(args, n: none) = {
  let attrs = (class: "q")
  if type(n) in (str, int, float) { attrs.insert("data-n", str(n)) }
  html.elem("section", attrs: attrs, args.pos().join())
}
#let fcount = context qcounter.display()
#let question(
  title: [Q #fcount],
  icon: gc._get-icon-for("question"),
  ..args,
) = {
  qcounter.step()
  context if target() == "html" {
    html-question(args)
  } else {
    gc.clue(
      accent-color: rgb("#179299"),
      title: title,
      icon: icon,
      ..args,
    )
  }
}

#let question-title(n: 1) = {
  let fcount = context qcounter.display()
  let title = [Q #fcount #h(1fr) #n]
  return title
}


#let nquestion(
  n: 1,
  icon: gc._get-icon-for("question"),
  ..args,
) = {
  qcounter.step()
  context if target() == "html" {
    html-question(args, n: n)
  } else {
    gc.clue(
      accent-color: rgb("#179299"),
      title: question-title(n: n),
      icon: icon,
      ..args,
    )
  }
}

// In HTML export the answer is always emitted; the study app handles hiding.
#let answer(display: true, body) = context {
  if target() == "html" {
    html.elem("div", attrs: (class: "a"), body)
  } else if display { body } else { hide(body) }
}

#let diagram-style = (
  node-fill: blue.lighten(50%),
  node-corner-radius: 5pt,
  node-stroke: 0.7pt,
)

// Balanced Columns Function -> deprecated: use balance from rubber-article
#let eqcolumns(n: 2, gutter: 4%, content) = {
  layout(size => [
    #let (height,) = measure(block(
      width: (1 / n) * size.width * (1 - float(gutter) * n),
      content,
    ))
    #block(height: height / n, columns(n, gutter: gutter, content))
  ])
}

// Insert Github Link
#let github-link = [
  #align(
    center,
    rect(width: 60%)[
      #show link: set text(font: "DejaVu Sans Mono")
      If you want to see the source code of this document or want to contribute or raise
      an issue, you can find it on GitHub:
      #tiaoma.qrcode("https://github.com/npikall/tuw-spranzen")
      #link("https://github.com/npikall/tuw-spranzen")
    ],
  )
]

// AI Disclaimer, place right below the title
#let ai-disclaimer = {
  let accent = rgb("#d97706")
  block(
    width: 100%,
    inset: (x: 1em, y: .8em),
    radius: (right: 4pt),
    fill: rgb("#fef3c7"),
    stroke: (left: 3pt + accent),
    above: 1.5em,
    below: 2em,
    grid(
      columns: (auto, 1fr),
      column-gutter: .9em,
      align: horizon,
      text(size: 1.8em, fill: accent)[⚠],
      text(size: .9em)[
        #text(fill: accent, weight: "bold")[AI Disclaimer] \
        AI has been used in the creation of this document. Treat its content with care
        and verify important statements.
      ],
    ),
  )
}

// Color Palette
#let colors = (
  aqua,
  green,
  orange,
  red,
  maroon,
  navy,
).map(c => c.lighten(20%))
