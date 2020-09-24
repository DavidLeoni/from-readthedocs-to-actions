
# ReadTheDocs to Github Actions

Sphinx docs build using the same Docker and environment of ReadTheDocs server.

**Might be suitable when you need to:**

- migrate from ReadTheDocs
- build (possibly complex) PDFs and epubs using maintained RTD Dockerfile 
- support multiple versions and languages
- have locally reproducible build

**STATUS**: it's my first Github Actions attempt so you will probably need to adapt it to your own needs, especially when it comes to multiple versions and languages. See [issues](https://github.com/DavidLeoni/readthedocs-to-actions/issues)

The approach is a bit heavyweight (RTD docker alone is at least 5 gigas), so you may well want to try [other fine solutions for Sphinx](https://github.com/ammaraskar/sphinx-action) 

**DETAILS**: Tries to mimic RTD build process in [entrypoint.sh](entrypoint.sh) using RTD Dockerfile Ubuntu configuration, and if used as Github Action, Sphinx `_build` output is made available in `/github/workspace` which is shared by steps in a Github Action job.

Dockerfile is also usable locally for your own builds.

For an example usage, see [Jupman](https://github.com/DavidLeoni/jupman/blob/master/.github/workflows/main.yml)
