# silence Catalina zsh change
export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
PS1='\[\e[1;31m\][\[\e[1;32m\]\W\[\e[1;31m\]]\[\e[1;32m\]\$\[\e[0m\] '
PATH=$PATH:$HOME/.bin:$HOME/.cargo/bin
alias emacs="/usr/local/opt/emacs/bin/emacs"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

# RVM
export PATH="$PATH:$HOME/.rvm/bin:/usr/local/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Fuck off GA
export HOMEBREW_NO_ANALYTICS=1

# GPG Agent
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
gpgconf --launch gpg-agent
