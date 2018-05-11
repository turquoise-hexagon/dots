# profile

# source bashrc
[ "$BASH_VERSION" ] && {
    [ -f ~/.bashrc ] &&
        . ~/.bashrc
}

# add ~/bin to user's path
[ -d ~/bin ] &&
    PATH="$PATH:$HOME/bin"
