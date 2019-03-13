# ---
# env
# ---

PATH+=:/sbin:/usr/sbin:~/bin

for var in              \
    EDITOR=nvim         \
    LESSHISTFILE=-      \
    LANG=en_US.UTF-8    \
    LC_ALL=en_US.UTF-8  \
    LC_LANG=en_US.UTF-8
do
    export "$var"
done

# ---
# misc
# ---

if [[ -f ~/.bashrc ]]; then
    . ~/.bashrc
fi

if [[ ! $DISPLAY && $(tty) =~ 1$ ]]; then
    exec startx &> /dev/null
fi
