# SETTINGS

PATH="/bin:/usr/bin:/usr/sbin:/sbin:${HOME}/bin"

HISTCONTROL="ignoredups:erasedups"
HISTSIZE=10000

PS1="\[$(tput setaf 13)\]\w\[$(tput sgr0)\] "

# ALIASES

alias mp3="youtube-dl -x --audio-format mp3"
alias grep="grep --color=auto"
alias ls="ls --color=auto -F"
alias sxiv="sxiv -b -s f"
alias uptime="uptime -p"
alias time="time -p"
alias free="free -h"

# MISC

if [[ -f /etc/bash_completion ]]; then
    . /etc/bash_completion
fi

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx &> /dev/null
fi
