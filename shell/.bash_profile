# build path
PATH+=:/sbin:/usr/sbin:~/bin

# build env
for var in                  \
    EDITOR=vim              \
    LESSHISTFILE=-          \
    LANG=en_US.UTF-8        \
    LC_ALL=en_US.UTF-8      \
    LC_LANG=en_US.UTF-8     \
    RXVT_SOCKET=/tmp/urxvtd
do
    export "$var"
done

# interactive shell config
if [[ -f ~/.bashrc ]]; then
    . ~/.bashrc
fi

# start x on tty1
if [[ ! $DISPLAY && $(tty) =~ 1$ ]]; then
    exec startx &> /dev/null
fi
