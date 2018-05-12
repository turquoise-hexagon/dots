# bash_profile

PATH="$PATH:/sbin:$HOME/bin"

[[ -f ~/.bashrc ]] &&
    . ~/.bashrc

# auto startx on tty1
[[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] &&
    exec startx &> /dev/null
