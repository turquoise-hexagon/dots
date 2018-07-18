# if not interactive, return
[[ $- != *i* ]] &&
    return

# settings
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoredups

PS1='\[\e[95m\]\w\[\e[0m\] - '

# replace defaults
alias cp='cp -r'
alias ls='ls --color -F -N'
alias grep='grep --color'
alias diff='diff --color'
alias mkdir='mkdir -p'
alias free='free -h'
alias sxiv='sxiv -b -s f'

# enable bash completion
[[ -f /etc/bash_completion ]] &&
    . /etc/bash_completion
