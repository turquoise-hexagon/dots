# if not interactive, return
[[ $- != *i* ]] &&
    return

# settings
shopt -s histappend
shopt -s checkwinsize

PS1="\[\e[95m\]\W\[\e[0m\] - "

HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoredups

# replace defaults
alias mkdir="mkdir -p"
alias free="free -h"
alias sxiv="sxiv -b -s f"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ls="ls -F --color=auto"
alias cp="cp -r"

# enable bash completion
[[ -f /etc/bash_completion ]] &&
    . /etc/bash_completion
