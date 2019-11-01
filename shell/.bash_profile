# ---
# env
# ---

PATH+=:/sbin:/usr/sbin:~/.local/bin

for var in              \
    EDITOR=nvim         \
    LESSHISTFILE=-      \
    LANG=en_US.UTF-8    \
    LC_ALL=en_US.UTF-8  \
    LC_LANG=en_US.UTF-8
{ export "$var"; }

# ---
# misc
# ---

. <(keychain --eval --agents ssh id_rsa)

[[ -f ~/.bashrc ]] &&
    . ~/.bashrc

[[ ! $DISPLAY && $(tty) =~ 1$ ]] &&
    exec startx &> /dev/null

:
