zstyle ':completion:*' menu select=long yes=long interactive
zstyle ':completion:*' completer _expand_alias _extensions _complete _approximate
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:-command-:*:*' group-order alias builtins functions commands
zstyle ':completion:*' file-list all
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' complete-options true
# zstyle ':completion:*' matcher-list '' '+m:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# zstyle ':completion:*' matcher-list '' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
setopt ALWAYS_TO_END
setopt LIST_PACKED
setopt AUTO_MENU
setopt COMPLETE_IN_WORD

