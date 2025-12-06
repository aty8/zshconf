# Fallback for if Pure is not loaded
if [ -z "$PURE_VERSION" ]; then
    autoload -Uz colors && colors
    setopt prompt_subst

    PROMPT='%F{cyan}%n@%m%f %F{blue}%1~%f %# '
    RPROMPT='%F{yellow}$(git_current_branch)%f'

    git_current_branch() {
        git rev-parse --abbrev-ref HEAD 2>/dev/null
    }
fi