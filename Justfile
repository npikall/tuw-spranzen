# default recipe to display help information
_default:
    @just --list

gotpm := require("gotpm")
typst := require("typst")
uv := require("uv")

# compile a typst document
compile arg:
    typst compile "spranzen/{{ kebabcase(arg) }}/main.typ" "spranzen/{{ kebabcase(arg) }}/{{ kebabcase(arg) }}.pdf"

# compile all documents
compile-all *args:
    #!/usr/bin/env bash
    set -euo pipefail
    for doc in spranzen/* ; do \
      echo "{{ GREEN }}{{ BOLD }}Compiling{{ NORMAL }}:" $doc ; \
      typst compile $doc/main.typ $doc/$(basename $doc).pdf {{ args }} ; \
    done

# install all local packages
install-all *args:
    for dir in packages/*/ ; do \
      gotpm install "$dir" --force {{ args }} ; \
    done

# uninstall all local packages
uninstall-all:
    for dir in packages/*/ ; do \
      gotpm uninstall "$(basename $dir)" --all ; \
    done

# list all available spranzen
list:
    @ls -1 spranzen/

# create a new document
new name:
    uv run scripts/new_document.py "{{ kebabcase(name) }}"

# use typst to watch a document
@watch name:
    typst watch spranzen/{{ name }}/main.typ spranzen/{{ name }}/{{ name }}.pdf

# Update the package versions in the template
@update:
    uv run ci/latest_version.py
