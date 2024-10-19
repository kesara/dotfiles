# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# GPG Agent
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
eval "$(gpgconf --launch gpg-agent)"

# FZF
export FZF_COMPLETION_TRIGGER="++"
source <(fzf --zsh)

# PATH
export PATH="$HOME/.bin:$PATH"
