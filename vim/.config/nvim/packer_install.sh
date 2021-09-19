#!/bin/sh

readonly PACKER_GIT="https://github.com/wbthomason/packer.nvim"
readonly PACKER_DIR="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"

get_packer() {
    git clone         \
        "$PACKER_GIT" \
        "$PACKER_DIR" \
        --depth 1
}

update_packer() {
    nvim --headless \
        +'autocmd User PackerComplete qa' +'PackerInstall'
}

if [ ! -d "$PACKER_DIR" ]; then
    {
        get_packer && update_packer
    } > /dev/null 2>&1 || {
        echo "error : failed to run '${0##*/}'" >&2
        exit 1
    }
fi
