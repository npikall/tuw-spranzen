# Packages

Each directory in here represents a package. They are installed with
[gotpm][gotpm].

Install it locally via:

```bash
gotpm install -e packages/spranzen
```

Or install it straight from GitHub, without cloning the repository:

```bash
gotpm install -r github.com/npikall/tuw-spranzen//packages/spranzen
```

Without `-t` the newest release tag is used; pin a version with e.g.
`-t v2026.9.0`, or `-t HEAD` for the latest commit.

[gotpm]: https://github.com/npikall/gotpm
