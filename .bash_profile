export XKB_DEFAULT_LAYOUT=gb
PS1='\[\e[1;31m\][\[\e[1;32m\]\W\[\e[1;31m\]]\[\e[1;32m\]\$\[\e[0m\] '

# Start sway if it's not already started
if [[ ! `ps -o comm --no-header -u $USER | egrep ^sway$` ]]
then
    sway
fi

# rvm configurations
source ~/.profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
