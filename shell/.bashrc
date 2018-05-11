# if not interactive, return
[[ $- != *i* ]] &&
    return

# SETTINGS

PATH="/bin:/usr/bin:/usr/sbin:/sbin:$HOME/bin"

HISTCONTROL=ignoredups:erasedups
HISTSIZE=10000

PS1="\[\e[95m\]\w\[\e[0m\] "

# ALIASES

alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ls="ls --color=auto -F"
alias sxiv="sxiv -b -s f"
alias uptime="uptime -p"
alias free="free -h"

# MISC

[[ -f /etc/bash_completion ]] &&
    . /etc/bash_completion

[[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] &&
    exec startx &> /dev/null
