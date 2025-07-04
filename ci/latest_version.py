"""Check for the latest versions of packages and updates the template."""  # noqa: INP001

import re
from pathlib import Path

import requests

FILES_TO_UPDATE = [".template/common.typ"]


def main() -> None:
    for file in FILES_TO_UPDATE:
        file_path = Path.cwd() / file
        pkgs = get_packages_from_file(file_path)
        pkgs_versions = {pkg: get_latest_version(pkg) for pkg in pkgs}
        update_versions(file_path, pkgs_versions)


def get_latest_version(package: str) -> str:
    """Get the latest version of a package from the Typst packages repository."""
    url = f"https://api.github.com/repos/typst/packages/contents/packages/preview/{package}"
    response = requests.get(url)
    response.raise_for_status()
    package_versions = response.json()
    return sorted(package_versions, key=lambda x: x["name"], reverse=True)[0]["name"]


def get_packages_from_file(file: Path) -> list[str]:
    """Extract used packages names from a Typst file."""
    with file.open("r") as f:
        content = f.read()

    # Find all package imports in the form of `#import "package.typ": *`
    pattern = r"preview\/.*\:\d+.\d+.\d+"
    matches: list = re.findall(pattern, content)
    return [match.split("/")[1].split(":")[0] for match in matches]


def update_versions(file: Path, pkg_versions: dict[str, str]) -> None:
    """Update the packages within a file."""
    with file.open("r") as f:
        content = f.read()

    for pkg, version in pkg_versions.items():
        pattern = rf"preview\/{pkg}\:\d+.\d+.\d+"
        replacement = rf"preview/{pkg}:{version}"
        # var content is beeing shadowed by updated content
        content = re.sub(pattern, replacement, content)

    with file.open("w") as f:
        f.write(content)


if __name__ == "__main__":
    main()
