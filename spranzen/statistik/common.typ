#import "@preview/gentle-clues:1.2.0" as gc
#import "@preview/lilaq:0.1.0" as lq
#import "@preview/cetz:0.3.4"
#import "@preview/cetz-plot:0.1.1"
#import "@preview/codly:1.2.0": *
#import "@preview/codly-languages:0.1.8": *
#show: codly-init.with()

#codly(languages: codly-languages)
#show raw: it => align(center, block(width: 75%, it))

#let theorem(title: "Theorem", icon: gc._get-icon-for("idea"), ..args) = {
  align(center, block(
    gc.clue(
      accent-color: blue,
      title: title,
      icon: icon,
      ..args,
    ),
    width: 85%,
  ))
}

#let example = it => align(center, gc.example(it, width: 85%))

#let missing(content) = {
  set text(fill: red)
  let msg = if content == [] {"MISSING" } else { content }
  rect(width: 100%, stroke: red, align(center, msg))
}
