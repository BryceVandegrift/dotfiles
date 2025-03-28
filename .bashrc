# Config for Bash

# Load aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/alias" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/alias"

# Bash history
HISTDIR="${XDG_CACHE_HOME:-$HOME/.cache}/bash"
HISTFILE="$HISTDIR/history"
HISTSIZE=1000

[ ! -d "$HISTDIR" ] && mkdir -p "$HISTDIR"

# Disable ctrl+s
stty stop undef

# Enable vi keybindings
set -o vi

PS1='\[\e[91;1m\][\[\e[93m\]\h\[\e[92m\]@\[\e[94m\]\u\[\e[0m\] \[\e[95;1m\]\w\[\e[91m\]]\[\e[0m\]\\$ '
