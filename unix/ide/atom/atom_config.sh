#!/bin/bash
# Script to install packages for atom. Assume atom is already installed
# Mostly from: https://www.sitepoint.com/10-essential-atom-add-ons/
apm install minimap
apm install highlight-selected
apm install minimap-highlight-selected
apm install autoclose-html
apm install open-recent

# lint
apm install linter
apm install linter-shellcheck
apm install linter-javac

# js lint
apm install linter-eslint

# python lint
apm install linter-pylint
apm install linter-pep8

# build
apm install build
