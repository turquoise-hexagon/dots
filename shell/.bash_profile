# build path
PATH+=/sbin:/usr/sbin:~/bin

# build env
for var in              \
    EDITOR=vim          \
    LESSHISTFILE=-      \
    LANG=en_US.UTF-8    \
    LC_ALL=en_US.UTF-8  \
    LC_LANG=en_US.UTF-8
do
    export "$var"
done

# interactive shell config
[[ -f ~/.bashrc ]] &&
    . ~/.bashrc

# start x on tty1
[[ ! $DISPLAY && $(tty) =~ 1$ ]] &&
    exec startx &> /dev/null

exit 0
