# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='\[\e[1;31m\][\[\e[1;32m\]\W\[\e[1;31m\]]\[\e[1;32m\]\$\[\e[0m\] '

export PATH="$PATH:$HOME/.rvm/bin:$HOME/.bin"

# Get a random wallpaper
ln -sf ~/.wallpapers/`ls ~/.wallpapers/ |sort -R |tail -1` ~/.wallpaper

# Start sway if it's not already started
if [[ ! `ps -o comm --no-header -u $USER | egrep ^sway$` ]]
then
    sway
fi

# rvm configurations
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
