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

# build path
for dir in    \
    /sbin     \
    /usr/sbin \
    ~/bin
do
    PATH+=:$dir
done

# interactive shell config
if [[ -f ~/.bashrc ]]; then
    . ~/.bashrc
fi

# start x on tty1
if [[ ! $DISPLAY && $(tty) =~ 1$ ]]; then
    exec startx &> /dev/null
fi
