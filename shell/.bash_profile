# env
PATH=~/.local/bin:/sbin:/usr/sbin:$PATH

while read -r line; do
    export "$line"
done << EOF
EDITOR=nvim
INPUTRC=~/.config/readline/inputrc
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
LC_LANG=en_US.UTF-8
LESSHISTFILE=-
EOF

# misc
command -v keychain > /dev/null &&
    . <(
        keychain                \
            --eval --absolute   \
            --agents ssh id_rsa \
            --dir ~/.config/keychain
    )

[[ -f ~/.bashrc ]] &&
    . ~/.bashrc

[[ ! $DISPLAY && $(tty) =~ [^0-9]1$ ]] &&
    exec startx ~/.config/xinit/xinitrc &> /dev/null

:
