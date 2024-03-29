# environment variables
PATH=~/.local/bin:/sbin:/usr/sbin:$PATH

export                                            \
ABDUCO_SOCKET_DIR=/tmp                            \
CHICKEN_INSTALL_REPOSITORY=~/.local/share/chicken \
CHICKEN_REPOSITORY_PATH=~/.local/share/chicken    \
EDITOR=nvim                                       \
INPUTRC=~/.config/readline/inputrc                \
LANG=en_US.UTF-8                                  \
LC_ALL=en_US.UTF-8                                \
LC_LANG=en_US.UTF-8                               \
LESSHISTFILE=-                                    \
LS_COLORS=                                        \
MANPAGER='nvim -c Man! -'

# misc
[ "${SHELL##*/}" = bash ] && [ -f ~/.bashrc ] &&
    . ~/.bashrc

type keychain > /dev/null 2>&1 &&
    eval "$(
        keychain                    \
            --eval                  \
            --absolute              \
            --agents ssh id_ed25519 \
            --dir ~/.config/keychain
    )"

[ ! "$DISPLAY" ] &&
    case $(tty) in
        */dev/tty1)
            exec sx > /dev/null 2>&1
    esac

:
