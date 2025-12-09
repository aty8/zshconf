# Installation

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/aty8/zshconf/main/install.sh)"
```

## Tmux config
```bash
curl -fsSL https://raw.githubusercontent.com/aty8/zshconf/main/tmux.conf > $HOME/.tmux.conf
```

## Manual

```bash
git clone https://github.com/aty8/zshconf ~/.zsh
echo 'export ZDOTDIR="$HOME/.zsh"' > ~/.zshrc
echo 'source "$ZDOTDIR/zshrc"' >> ~/.zshrc
```