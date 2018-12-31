[[ -d ~/bin ]] &&
    PATH+=:/sbin:/usr/sbin:~/bin

[[ -f ~/.bashrc ]] &&
    . ~/.bashrc

# automatically start x on tty1
[[ ! $DISPLAY && $(tty) =~ 1 ]] &&
    exec startx &> /dev/null
