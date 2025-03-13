# TU Wien - Spranzen

This repository is a collection of socalled "Spranzen", which are study notes
for the courses of Environmental Engineering at the TU Wien. 
The notes are written in German and `typst` is used as the main tool.

## Contributions
In order to contribute to this repository, please open a Pull Request 
or open an issue.

As the content is exclusively written in `typst`, please make sure to
install the `typst` compiler. Depending on your system, you can install it by running:
- Linux: 
  - View [Typst on Repology][repology]
  - View [Typst's Snap][snap]
- macOS: `brew install typst`
- Windows: `winget install --id Typst.Typst`

- If you have a [Rust][rust] toolchain installed, you can install the latest released Typst version with `cargo install --locked typst-cli`


If you would like to add new content consider useing
```bash
just new <name>
```
This will create a new folder with the name `<name>` and the template files.
To install the `just` command runner read the [developing](#developing) section.

## Developing
For developing purposes, you can use the `pre-commit` hooks by running
```bash
pip install pre-commit
pre-commit install
```
This will ensure that the typst documents are formatted correctly.

To install the `just` command runner, run
```bash
sudo apt install just
```
If you are not useing a debian system, please refer to the [just repository](https://github.com/casey/just).


[repology]: https://repology.org/project/typst/versions
[snap]: https://snapcraft.io/typst
[rust]: https://rustup.rs/