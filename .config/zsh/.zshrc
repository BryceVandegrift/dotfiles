# Config for zsh

# Load aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/alias" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/alias"

# zsh history
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000

# Unset beep and disable ctrl-s
unsetopt beep
stty stop undef

# Vi keybindings
bindkey -v

# zsh autocompletions
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Color and custom format
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%M%{$fg[green]%}@%{$fg[blue]%}%n %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
