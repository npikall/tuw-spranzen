# /// script
# requires-python = ">=3.14"
# dependencies = [
#     "jinja2>=3.1.6",
# ]
# ///
"""Create a new document from the template."""

import sys
from datetime import datetime
from pathlib import Path

from jinja2 import Environment, FileSystemLoader  # ty:ignore[unresolved-import]


class MissingArgumentError(Exception):
    pass


class PathExistsError(Exception):
    pass


def main():
    root = get_project_root()
    source = resolve_template_path(root)
    target_name = get_target_name()
    target = resolve_target(root, target_name)
    copy_files(source, target, target_name)


def copy_files(src: Path, dst: Path, title: str) -> None:
    env = Environment(loader=FileSystemLoader(src))
    for src_file in src.rglob("*"):
        if src_file.is_dir():
            continue
        rel_file = src_file.relative_to(src)
        content = render_file(rel_file, env, title)
        newfile = resolve_rendered_filepath(dst, rel_file)
        newfile.write_text(content)
        print(f"write: '{newfile}'")


def resolve_rendered_filepath(dst: Path, file: Path) -> Path:
    newfile = dst / file
    newfile.parent.mkdir(parents=True, exist_ok=True)
    return newfile


def render_file(file: Path, env: Environment, title: str) -> str:
    template = env.get_template(str(file))
    year = str(datetime.now().year)
    return template.render(title=title, year=year)


def resolve_template_path(root: Path) -> Path:
    dir_path = root / "template"
    if not dir_path.is_dir():
        err = "no 'template' directory found"
        raise PathExistsError(err)
    return dir_path


def resolve_target(root: Path, target_name: str) -> Path:
    target = root / "spranzen" / target_name
    target.mkdir(parents=True)
    return target


def get_target_name() -> str:
    args = sys.argv[1:]
    if len(args) == 0:
        err = "expecting exactly 1 argument"
        raise MissingArgumentError(err)
    return args[0]


def get_project_root() -> Path:
    filepath = Path(__file__)
    for parent in filepath.parents:
        if (parent / "spranzen").is_dir():
            return parent
    err = f"no subdirectory 'spranzen' in '{filepath}' or any parent directories"
    raise PathExistsError(err)


if __name__ == "__main__":
    sys.exit(main())
