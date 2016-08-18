if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

PS1='\[\e[1;31m\][\[\e[1;32m\]\W\[\e[1;31m\]]\[\e[1;32m\]\$\[\e[0m\] '

export PATH=$PATH:/usr/local/sbin:~/.bin

# Fuck Google Analytics
export HOMEBREW_NO_ANALYTICS=1

# Cask old location
export HOMEBREW_CASK_OPTS="--caskroom=/opt/homebrew-cask/Caskroom"

eval $(docker-machine env)
if [[ $(docker-machine status) != Running ]]; then
    docker-machine start
fi
