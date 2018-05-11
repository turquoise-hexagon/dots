# profile

[ "$BASH_VERSION" ] && {
    [ -f ~/.bashrc ] &&
        . ~/.bashrc
}

[ -d ~/bin ] &&
    PATH="$PATH:$HOME/bin"
