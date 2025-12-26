echo "Hint: For history-substring-search, use Shift+Up and Shift+Down"

# Base directory set by ~/.zshrc
# export ZDOTDIR="$HOME/.zsh"

# Load components
source "$ZDOTDIR/exports.zsh"
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/plugins.zsh"
source "$ZDOTDIR/functions.zsh"
source "$ZDOTDIR/prompt.zsh"

# Options
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt interactive_comments
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt share_history
setopt extended_glob
setopt nomatch

# History
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

# Completion
autoload -Uz compinit && compinit -u

# Enable Vim mode and a few bindings that allow deleting existing chars 
# in the insert mode.
set -o vi
bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char
