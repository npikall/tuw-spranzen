# default recipe to display help information
_default:
    @just --list

# compile a typst document
compile arg:
    typst compile spranzen/{{ arg }}/main.typ spranzen/{{ arg }}/{{ arg }}.pdf

# compile all documents
compile-all:
    for dir in spranzen/* ; do \
      echo "Compiling:" $(basename $dir) ; \
      typst compile $dir/main.typ $dir/$(basename $dir).pdf ; \
    done

# create a new document
new name:
    uv run scripts/new_document.py {{ name }}

# use typst to watch a document
watch name:
    typst watch spranzen/{{ name }}/main.typ spranzen/{{ name }}/{{ name }}.pdf

# style the typst files
typstyle dir:
    @echo "{{GREEN}}Styling the typst files{{NORMAL}}"
    typstyle --wrap-text -i spranzen/{{dir}}/
    @echo "{{GREEN}}Typst files have been styled{{NORMAL}}"
