#!/usr/bin/env zsh
# Author:  Maddison Hellstrom <github.com/b0o>
# Repo:    https://github.com/b0o/zsh-extras
# License: MIT

fpath+=("${0:h}/functions")

# Generated with:
#
# () {
#   echo -n 'autoload -Uz'
#   for f in functions/[^_]*
#     do printf ' \\\n  "%s"' "$(basename "$f")"
#   done
#   echo
# }
#
autoload -Uz \
  "mg" \
  "nvim-help" \
  "pacopen" \
  "pqlm" \
  "pqlmg" \
  "pqlx" \
  "pqoc" \
  "putfn" \
  "vim-help"
