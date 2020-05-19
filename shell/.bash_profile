# env
PATH=~/.local/bin:/sbin:/usr/sbin:$PATH

export                             \
EDITOR=nvim                        \
INPUTRC=~/.config/readline/inputrc \
LANG=en_US.UTF-8                   \
LC_ALL=en_US.UTF-8                 \
LC_LANG=en_US.UTF-8                \
LESSHISTFILE=-                     \
LS_COLORS=                         \
MANPAGER='nvim -c Man\! -'

# misc
[[ -f ~/.bashrc ]] &&
    . ~/.bashrc

type keychain &> /dev/null &&
    . <(
        keychain                \
            --eval --absolute   \
            --agents ssh id_rsa \
            --dir ~/.config/keychain
    )

[[ ! $DISPLAY && $(tty) =~ /dev/tty1 ]] &&
    exec startx ~/.config/xinit/xinitrc &> /dev/null

:
