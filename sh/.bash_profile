# build env
locale=en_US.UTF-8

for var in          \
    EDITOR=vim      \
    LANG=$locale    \
    LC_ALL=$locale  \
    LC_LANG=$locale
do
    export "$var"
done

# build path
for dir in    \
    /sbin     \
    /usr/sbin \
    ~/bin     \
    ~/.wm/*
do
    PATH+=:$dir
done

# start x on tty1
[[ ! $DISPLAY && $(tty) =~ 1 ]] &&
    exec startx &> /dev/null
