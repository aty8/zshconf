# Install znap if missing
if [ ! -d "$HOME/.znap" ]; then
    git clone https://github.com/marlonrichert/zsh-snap.git ~/.znap
fi

# Load snapshot manager
source ~/.znap/znap.zsh

# Plugins
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
znap source romkatv/gitstatus

# Prompt (Pure)
znap prompt sindresorhus/pure