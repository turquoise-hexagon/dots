# if not interactive, return
[[ $- =~ i ]] || return

# ---
# settings
# ---

HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoredups

PS1='\[\e[95m\]\w\[\e[0m\] '

# ---
# aliases
# ---

alias cp='cp -r'
alias ls='ls -FN --color'

alias free='free -h'
alias sxiv='sxiv -bs f'
alias grep='grep --color'
alias diff='diff --color'

alias mkdir='mkdir -p'
alias ncmpcpp='ncmpcpp -q'

# ---
# misc
# ---

[[ -f /etc/bash_completion ]] &&
    . /etc/bash_completion
