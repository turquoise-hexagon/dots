PATH=~/.local/bin:/sbin:/usr/sbin:$PATH

export                             \
EDITOR=nvim                        \
INPUTRC=~/.config/readline/inputrc \
LANG=en_US.UTF-8                   \
LC_ALL=en_US.UTF-8                 \
LC_LANG=en_US.UTF-8                \
LESSHISTFILE=-                     \
LS_COLORS=                         \
MANPAGER='nvim -c Man! -'          \
QT_QPA_PLATFORMTHEME=gtk3

[ "${SHELL##*/}" = bash ] && [ -f ~/.bashrc ] &&
    . ~/.bashrc

type keychain > /dev/null 2>&1 &&
    eval "$(
        keychain                \
            --eval              \
            --absolute          \
            --agents ssh id_rsa \
            --dir ~/.config/keychain)"

[ ! "$DISPLAY" ] &&
    case $(tty) in
        */dev/tty1)
            exec sx > /dev/null 2>&1
    esac

:
