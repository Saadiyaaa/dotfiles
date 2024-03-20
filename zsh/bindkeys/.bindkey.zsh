# set viins for zsh main keymap
bindkey -v
export KEYTIMEOUT=1

# for history browser
bindkey -M viins '^n' down-line-or-beginning-search
bindkey -M viins '^p' up-line-or-beginning-search
bindkey -M viins '^j' down-line-or-beginning-search
bindkey -M viins '^k' up-line-or-beginning-search

# quick delete in zshzle
bindkey -M viins '^w' backward-delete-word
bindkey -M viins '^h' backward-delete-char
bindkey -M viins '^l' delete-char

# for zsh-autosuggestions
bindkey -M viins '^e' forward-word

# substitute for origin '^l'
bindkey -M viins '^[l' clear-screen

# set undo and redo keystrok
bindkey -M viins '^u' undo
bindkey -M viins '^[u' redo

# edit zshzle in vim
bindkey -M viins '^v' edit-command-line

# never enter vicmd
bindkey -M viins -r '^['

# set <ctrl-a> for number increment
autoload -Uz incarg
zle -N incarg
bindkey -M viins '^a' incarg

bindkey -M menuselect '^j' down-line-or-history
bindkey -M menuselect '^k' up-line-or-history
bindkey -M menuselect '^n' backward-char
bindkey -M menuselect '^p' forward-char
bindkey -M menuselect '^e' end-of-buffer-or-history
bindkey -M menuselect '^[e' beginning-of-buffer-or-history
bindkey -M menuselect '^m' accept-and-infer-next-history
bindkey -M menuselect '^s' send-break

# Toggle between normal mode and interactive mode in menuselect
bindkey -M menuselect '^[i' vi-insert

# set vim text object for zsh
autoload -Uz select-bracketed select-quoted
zle -N select-quoted
zle -N select-bracketed
for km in viopp visual; do
    for c in {a,i}${(s..)^:-\'\"\`\|,./:;=+@}; do
	bindkey -M $km -- $c select-quoted
    done
    for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
	bindkey -M $km -- $c select-bracketed
    done
done

