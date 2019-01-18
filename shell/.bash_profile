# locales
export LC_ALL=en_US.UTF-8
export LC_LANG=en_US.UTF-8

# path
PATH+=:/sbin:/usr/sbin

[[ -d ~/bin ]] && PATH+=~/bin

# interactive shell config
[[ -f ~/.bashrc ]] && . ~/.bashrc

# automatically start x on tty1
[[ ! $DISPLAY && $(tty) =~ 1 ]] && exec startx &> /dev/null
