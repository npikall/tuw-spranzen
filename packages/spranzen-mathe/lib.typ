#import "@preview/codly:1.2.0": *
#import "@preview/codly-languages:0.1.8": *
#import "@preview/gentle-clues:1.2.0" as gc // for inserting callouts or admonitions

#let definition-counter = counter("definition")
#let definition(body, title: none) = {
  definition-counter.step()
  let count = context (
    counter(heading.where(level: 1)).display()
      + "."
      + counter("definition").display()
  )

  rect(width: 100%, inset: 1em)[
    #strong[Def. #count: #title]\
    #body
  ]
}

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
