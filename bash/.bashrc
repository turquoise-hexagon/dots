# SETTINGS

PATH="/bin:/usr/bin:/usr/sbin:/sbin:$HOME/bin"

HISTCONTROL=ignoredups:erasedups
HISTSIZE=10000

PS1="\[$(tput setaf 13)\]\w\[$(tput sgr0)\] "

# ALIASES

alias shellcheck="shellcheck -x"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ls="ls --color=auto -F"
alias sxiv="sxiv -b -s f"
alias time="time -p"
alias free="free -h"

# MISC

[[ -f /etc/bash_completion ]] &&
    . /etc/bash_completion

[[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] &&
    exec startx &> /dev/null
