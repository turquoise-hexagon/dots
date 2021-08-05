#!/bin/sh

readonly PAQ_GIT="https://github.com/savq/paq-nvim"
readonly PAQ_DIR="$HOME/.local/share/nvim/site/pack/paqs/start/paq-nvim"

{
    git clone --depth=1 "$PAQ_GIT" "$PAQ_DIR" && nvim +PaqInstall +qall
} > /dev/null 2>&1 || {
    echo "error : failed to run '${0##*/}'" >&2
    exit 1
}
