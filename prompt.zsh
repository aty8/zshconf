if (( $+functions[prompt_pure_setup] )); then
    # Configure Pure appearance BEFORE enabling it

    PURE_PROMPT_SYMBOL="❯"
    PURE_PROMPT_VICMD_SYMBOL="❮"
    PURE_PROMPT_SYMBOL_COLOR="cyan"
    PURE_GIT_PULL_SYMBOL="⇣"
    PURE_GIT_PUSH_SYMBOL="⇡"
    PURE_PROMPT_ALWAYS_SHOW_TIME=true
    PURE_PROMPT_SEPARATE_LINE=true
    PURE_PROMPT_SHOW_HOST=true
    PURE_PROMPT_HOST_COLOR="cyan"

    # Initialize Pure
    prompt_pure_setup
else
    ## Fallback prompt if Pure isn't available
    autoload -Uz colors && colors
    setopt prompt_subst

    PROMPT='%F{cyan}%n@%m%f %F{blue}%1~%f %# '
    RPROMPT='%F{yellow}$(git_current_branch)%f'

    git_current_branch() {
        git rev-parse --abbrev-ref HEAD 2>/dev/null
    }
fi