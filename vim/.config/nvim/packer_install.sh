#!/bin/sh

packer_install() {
    git clone         \
        "$PACKER_GIT" \
        "$PACKER_DIR" \
        --depth 1
}

packer_init() {
    nvim --headless \
        +'autocmd User PackerComplete qa' +'PackerInstall'
}

readonly PACKER_GIT=https://github.com/wbthomason/packer.nvim
readonly PACKER_DIR=$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim

[ -d "$PACKER_DIR" ] && exit

{
    packer_install && packer_init
} > /dev/null 2>&1 || {
    echo "error : failed to run '${0##*/}'" >&2
    exit 1
}
