#!/usr/bin/env bash

BRIGHT_BIT_THEME_FILE=src/theme.conf
PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

tmux source-file "$PLUGIN_DIR/$BRIGHT_BIT_THEME_FILE"

unset BRIGHT_BIT_THEME_FILE
unset PLUGIN_DIR

