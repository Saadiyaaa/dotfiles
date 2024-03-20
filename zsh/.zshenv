export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export MYZSHRC="${ZDOTDIR}/.zshrc"
export HISTFILE="${ZDOTDIR}/.zsh_history"

# [[ "${PATH}" == *${HOME}/.local/bin* ]] || PATH="${HOME}/.local/bin:${PATH}"
# [[ "${MANPATH}" == *${MANPATH}/.local/man* ]] || export MANPATH="${MANPATH}/.local/man:${MANPATH}"
# [[ "${CFLAGS}" == *-I${HOME}/.local/share/include* ]] || export CFLAGS="-I${HOME}.local/share/include ${CFLAGS}"
# [[ "${LDFLAGS}" == *-L${HOME}/.local/lib* ]] || export LDFLAGS="-I${HOME}/.local/lib ${LDFLAGS}"

