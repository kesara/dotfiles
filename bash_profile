if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
PS1='\[\e[1;31m\][\[\e[1;32m\]\W\[\e[1;31m\]]\[\e[1;32m\]\$\[\e[0m\] '
