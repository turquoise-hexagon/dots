# exports
export EDITOR=vim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_LANG=en_US.UTF-8

# path
for dir in    \
    /sbin     \
    /usr/sbin \
    ~/bin     \
    ~/.wm/*
do
    PATH+=:$dir
done

# interactive shell config
[[ -f ~/.bashrc ]] && . ~/.bashrc

# start x on tty1
[[ ! $DISPLAY && $(tty) =~ 1 ]] && exec startx &> /dev/null
