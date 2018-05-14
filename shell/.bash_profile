PATH="$PATH:/sbin:$HOME/bin"

# source bashrc
[[ -f ~/.bashrc ]] &&
    . ~/.bashrc

# auto startx on tty1
[[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] &&
    exec startx &> /dev/null
