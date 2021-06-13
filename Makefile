AUTHOR = Maddison Hellstrom <github.com/b0o>
REPO = https://github.com/b0o/zsh-extras
LICENSE = MIT

PLUGIN_FILE = zsh-extras.plugin.zsh

define BUILD_PLUGIN
	echo '#!/usr/bin/env zsh'
	echo '# Author:  ${AUTHOR}'
	echo '# Repo:    ${REPO}'
	echo '# License: ${LICENSE}'
	echo
	echo '# NOTICE: THIS FILE IS AUTO-GENERATED WITH MAKE'
	echo
	echo 'fpath+=("$${0:h}/functions")'
	echo
  echo -n 'autoload -Uz'
  for f in functions/[^_]*
    do printf ' \\\n  "%s"' "$$(basename "$$f")"
  done
  echo
endef
export BUILD_PLUGIN

.PHONY: default all plugin

all: default

default: plugin

plugin:
	zsh -c 'echo -e "\nBuilding ${PLUGIN_FILE}\n"; eval "$$BUILD_PLUGIN" | tee "${PLUGIN_FILE}"'




