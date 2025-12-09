# Ensure the main zshrc is loaded for all interactive zsh shells (including tmux)
if [[ $- == *i* ]]; then
    source "$ZDOTDIR/zshrc"
fi