# Default action

_default:
  #!/bin/sh
  just --list

# Public actions

# Format the source code following the project style policy.
format:
  #!/bin/sh
  poetry run black gitsub/**/*.py --preview
  poetry run isort gitsub/**/*.py

# Lint the source code following the project code policy.
lint:
  #!/bin/sh
  poetry run pylint gitsub/**/*.py
