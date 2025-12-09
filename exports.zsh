export EDITOR=vim
export TERM=xterm-256color
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Custom user bin
default_paths=(
  /opt/homebrew/bin
  /opt/homebrew/sbin
  /usr/local/bin
  /usr/local/sbin
  /usr/bin
  /bin
  /usr/sbin
  /sbin
  "$HOME/mambaforge/bin/"
  "$HOME/bin"
)

for p in $default_paths; do
  [[ ":$PATH:" == *":$p:"* ]] || PATH="$p:$PATH"
done

export PATH

# ----------------------------------------
# Clipboard capability check (macOS + Linux)
# Shows a warning once per day if no system clipboard tool is available.
# ----------------------------------------

function check_clipboard_support() {
  # PATH to stamp file so we don't show this message every shell
  local stamp="$HOME/.cache/zsh_clipboard_warn"
  local today=$(date +%Y%m%d)

  # If stamp exists with today's date → do nothing
  if [[ -f $stamp && $(<"$stamp") == "$today" ]]; then
    return
  fi

  # Check for clipboard tools
  if command -v pbcopy >/dev/null 2>&1; then
    return   # macOS clipboard available
  fi

  if command -v wl-copy >/dev/null 2>&1; then
    return   # Wayland clipboard available
  fi

  if command -v xclip >/dev/null 2>&1; then
    return   # X11 clipboard available
  fi

  if command -v xsel >/dev/null 2>&1; then
    return   # X11 clipboard available
  fi

  # If here → no clipboard support detected
  echo ""
  echo "⚠️  No system clipboard utility detected for tmux/zsh."
  echo "   Install one of:"
  echo "     • macOS: pbcopy (already built-in, but PATH may be broken)"
  echo "     • Linux (X11): sudo apt install xclip   OR   sudo apt install xsel"
  echo "     • Linux (Wayland): sudo apt install wl-clipboard"
  echo ""

  # Write stamp so we don't show this again today
  mkdir -p "$(dirname "$stamp")"
  echo "$today" > "$stamp"
}

# Run check only for interactive shells
[[ $- == *i* ]] && check_clipboard_support
