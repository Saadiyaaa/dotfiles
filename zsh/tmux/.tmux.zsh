# auto open tmux when start up a terminal
if [ -z "$TMUX" ]; then
    tmux attach >/dev/null 2>&1 || tmux
fi

