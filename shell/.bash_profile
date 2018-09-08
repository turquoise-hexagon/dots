[[ -d ~/bin ]] &&
    PATH+=:~/bin

[[ -f ~/.bashrc ]] &&
    . ~/.bashrc

# automatically start x on tty1
[[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] &&
    exec startx &> /dev/null
