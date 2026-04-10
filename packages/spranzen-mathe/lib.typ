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

