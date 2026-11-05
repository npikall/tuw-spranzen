# TU Wien - Spranzen

"Spranzen" are study notes for the Environmental Engineering courses at TU Wien,
written in German with [Typst][typst].

## Contributing

Open an issue or a Pull Request.

You need [Typst][typst], [gotpm][gotpm], [just][just] and [uv][uv]. The
local packages are installed with gotpm; see [packages](packages/README.md).

Create a new document with:

```bash
just new <name>
```

To format documents on commit, install [prek][prek] and run `prek install`.

## Releasing

Versions follow [CalVer](https://calver.org/) (`vYYYY.MM.MICRO`, e.g.
`v2026.9.0`). Pushing a `v*` tag compiles every document under `spranzen/` and
attaches the PDFs to a GitHub Release.

[typst]: https://github.com/typst/typst#installation
[gotpm]: https://github.com/npikall/gotpm
[just]: https://github.com/casey/just#installation
[uv]: https://docs.astral.sh/uv/getting-started/installation/
[prek]: https://github.com/j178/prek#installation
