#!/usr/bin/env bash
set -e

# Clone repo if not already present
if [ ! -d "$HOME/.zsh" ]; then
    git clone https://github.com/aty8/zshconf ~/.zsh
fi

# Set ZDOTDIR and ensure ~/.zshrc points correctly
if [ ! -L "$HOME/.zshrc" ]; then
    echo 'export ZDOTDIR="$HOME/.zsh"' > "$HOME/.zshrc"
    echo 'source "$ZDOTDIR/zshrc"' >> "$HOME/.zshrc"
fi

echo "Installed. Restart shell."
