_fzf_complete_git() {
    _fzf_complete -- "$@" < <(
	git --help -a | grep -E '^\s+' | awk '{print $1}'
    )
}

_fzf_comprun() {
    local command=$1
    shift

    case "$command" in
	tree)         find . -type d | fzf --preview 'tree -C {}' "$@";;
	*)            fzf "$@" ;;
    esac
}

_fzf_compgen_path() {
    rg --files --glob  "!.git" . "$1"
}

_fzf_compgen_path() {
    fd --type d --hidden --follow --exclude ".git" . "$1"
}

