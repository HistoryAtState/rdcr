# A Guide to the United States' History of Recognition, Diplomatic, and Consular Relations, by Country, since 1776

Source data for [A Guide to the United States' History of Recognition, Diplomatic, and Consular Relations, by Country, since 1776](https://history.state.gov/countries)

## Format and schema
- The main content, which is located in the `articles` and `issues` directories, conforms to the [Text Encoding Initiative](http://www.tei-c.org/) Guidelines. A project-specific schema for these documents can be found in the `schema` directory: `rdcr.odd` and its derivative RelaxNG Compact file, `rdcr.rnc`.
- The `related-resources` directory contains a single file for associating `issues` with `articles`. Its schema can be found in `schema`: `resources.rnc` and `resources.sch`.
- All other files at the root of this directory are ancillary and relate solely to build and deployment processes.

## Build

1. Single `xar` file: Files `articles.xconf` and `issues.xconf` will only contain the index, no triggers!
    ~~~shell
    ant
    ~~~

2. DEV environment: The replication triggers for the producer server are enabled in  `articles.xconf`, `issues.xconf` and point to the dev server's replication service IP.
    ~~~shell
    ant xar-dev
    ~~~

3. PROD environment: Same as in 2. but for PROD destination
    ~~~shell
    ant xar-prod
    ~~~
