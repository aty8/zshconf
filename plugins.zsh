# Install znap if missing
if [ ! -d "$HOME/.znap" ]; then
    git clone https://github.com/marlonrichert/zsh-snap.git ~/.znap
fi

# Load snapshot manager
source ~/.znap/znap.zsh

# Plugins
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting

znap source zsh-users/zsh-history-substring-search
bindkey "^[[1;2A" history-substring-search-up
bindkey "^[[1;2B" history-substring-search-down


# Prompt (Pure)
znap prompt sindresorhus/pure