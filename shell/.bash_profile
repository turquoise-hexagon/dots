# env
PATH=~/.local/bin:/sbin:/usr/sbin:$PATH

for _ in            \
EDITOR=nvim         \
LANG=en_US.UTF-8    \
LC_ALL=en_US.UTF-8  \
LC_LANG=en_US.UTF-8 \
LESSHISTFILE=-
{ export "$_"; }

# misc
. <(
    keychain                \
        --eval --absolute   \
        --agents ssh id_rsa \
        --dir ~/.config/keychain
)

[[ -f ~/.bashrc ]] &&
    . ~/.bashrc

[[ ! $DISPLAY && $(tty) =~ 1$ ]] &&
    exec startx ~/.config/xinit/xinitrc &> /dev/null

: # fix non 0 exit status
