# A Guide to the United States' History of Recognition, Diplomatic, and Consular Relations, by Country, since 1776

[![exist-db CI](https://github.com/HistoryAtState/rdcr/actions/workflows/build.yml/badge.svg)](https://github.com/HistoryAtState/rdcr/actions/workflows/build.yml)

Source data for [A Guide to the United States' History of Recognition, Diplomatic, and Consular Relations, by Country, since 1776](https://history.state.gov/countries)

## Format and schema

- The main content, which is located in the `articles` and `issues` directories, conforms to the [Text Encoding Initiative](http://www.tei-c.org/) Guidelines. A project-specific schema for these documents can be found in the `schema` directory: `rdcr.odd` and its derivative RelaxNG Compact file, `rdcr.rnc`.
- The `related-resources` directory contains a single file for associating `issues` with `articles`. Its schema can be found in `schema`: `resources.rnc` and `resources.sch`.
- All other files at the root of this directory are ancillary and relate solely to build and deployment processes.

## Build

1. Single `xar` file: Files `articles.xconf` and `issues.xconf` will only contain the index, no triggers!

    ```shell
    ant
    ```

    1. Since Releases have been automated when building locally you might want to supply your own version number (e.g. `X.X.X`) like this:

    ```shell
    ant -Dapp.version=X.X.X
    ```

## Release

Releases for this data package are automated. Any commit to the `master`` branch will trigger the release automation.

All commit message must conform to [Angular Commit Message Conventions](https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#-git-commit-guidelines) to determine semantic versioning of releases, please adhere to these conventions, like so:

| Commit message  | Release type |
|-----------------|--------------|
| `fix(pencil): stop graphite breaking when too much pressure applied` | Patch Release |
| `feat(pencil): add 'graphiteWidth' option` | ~~Minor~~ Feature Release |
| `perf(pencil): remove graphiteWidth option`<br/><br/>`BREAKING CHANGE: The graphiteWidth option has been removed.`<br/>`The default graphite width of 10mm is always used for performance reasons.` | ~~Major~~ Breaking Release |

When opening PRs commit messages are checked using commitlint.