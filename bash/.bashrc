# SETTINGS

PATH="/bin:/usr/bin:/usr/sbin:/sbin:${HOME}/bin"

HISTCONTROL=ignoredups:erasedups
HISTSIZE=10000

PS1="\[$(tput setaf 13)\]\w\[$(tput sgr0)\] "

# ALIASES

alias grep="grep --color=auto"
alias ls="ls --color=auto -F"
alias sxiv="sxiv -b -s f"
alias uptime="uptime -p"
alias time="time -p"
alias free="free -h"

# MISC

[[ -f /etc/bash_completion ]] && \
    . /etc/bash_completion

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && \
    exec startx &> /dev/null
