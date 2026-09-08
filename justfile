# default recipe to display help information
_default:
    @just --list

alias c := compile
alias ca := compile-all
alias cp := compile-parallel
alias q := check
alias ia := install-all
alias ua := uninstall-all
alias r := release

# compile a typst document
compile arg:
    typst compile "spranzen/{{ kebabcase(arg) }}/main.typ" "spranzen/{{ kebabcase(arg) }}/{{ kebabcase(arg) }}.pdf"

# compile all documents in parallel
compile-parallel *args:
    parallel --line-buffer 'echo -e "{{ GREEN }}{{ BOLD }}Compiling{{ NORMAL }}: {}"; typst compile {}/main.typ {}/$(basename {}).pdf {{ args }}' ::: spranzen/*

# compile all documents
compile-all *args:
    #!/usr/bin/env bash
    set -euo pipefail
    for doc in spranzen/* ; do \
        echo "{{ GREEN }}{{ BOLD }}Compiling{{ NORMAL }}:" $doc ; \
        typst compile $doc/main.typ $doc/$(basename $doc).pdf {{ args }} ; \
    done

# check the compileability of all documents
check:
    #!/usr/bin/env bash
    set -euo pipefail
    for doc in spranzen/* ; do \
        echo
        echo "{{ GREEN }}{{ BOLD }}Compiling{{ NORMAL }}:" $doc ; \
        gotpm check $doc/main.typ
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

# tag the next CalVer release (vYYYY.M.MICRO); does not push the tag
release:
    #!/usr/bin/env bash
    set -euo pipefail
    year=$(date +%Y)
    month=$((10#$(date +%m)))
    prefix="v${year}.${month}."
    last=$(git tag -l "${prefix}*" | sed "s/^${prefix}//" | sort -n | tail -1)
    if [ -z "$last" ]; then
        micro=0
    else
        micro=$((last + 1))
    fi
    tag="${prefix}${micro}"
    git tag -a "$tag" -m "Release ${tag}"
    echo "{{ GREEN }}{{ BOLD }}Tagged{{ NORMAL }}: $tag"
    echo "Push it with: git push origin $tag"

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
    gotpm update . -r
