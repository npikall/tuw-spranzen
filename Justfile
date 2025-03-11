# Justfile for managing common tasks

# default recipe to display help information
_default:
  @just --list


# clean up the project
@clean:
  rm -rf *:Zone.Identifier **/*:Zone.Identifier **/**/*:Zone.Identifier **/**/**/*:Zone.Identifier
  rm -rf *.tex **/*.tex **/**/*.tex **/**/**/*.tex

# compile a typst document
@compile arg:
  typst compile spranzen/{{arg}}/main.typ spranzen/{{arg}}/{{arg}}.pdf


# convert latex files to typst
@pandoc name:
  pandoc -f latex -t typst -o {{name}}.typ {{name}}.tex
