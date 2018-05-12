# bashrc

# if not interactive, return
[[ $- != *i* ]] &&
    return

# settings
shopt -s histappend
shopt -s checkwinsize

PS1="\[\e[95m\]\w\[\e[0m\] "

HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoredups

# aliases
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ls="ls --color=auto -F"
alias sxiv="sxiv -b -s f"
alias uptime="uptime -p"
alias free="free -h"

# completion
[[ -f /etc/bash_completion ]] &&
    . /etc/bash_completion
