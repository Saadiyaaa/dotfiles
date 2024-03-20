# Setup fzf
# ---------
if [[ ! "$PATH" == *$HOME/.fzf/bin* ]]; then
  PATH="$HOME/.fzf/bin:$PATH"
fi

# Auto-completion
# ---------------
source "$HOME/.fzf/shell/completion.zsh"
[ -f "${ZDOTDIR}/fzf/.fzf-completion.zsh" ] && source "${ZDOTDIR}/fzf/.fzf-completion.zsh"

# Key bindings
# ------------
source "$HOME/.fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_OPTS="--border  --info=inline "
