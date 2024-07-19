PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

tmux source-file "$PLUGIN_DIR/src/theme.conf"

unset PLUGIN_DIR

