VISUAL=$(whence vi)

export EDITOR=$VI
export PAGER=less
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

alias ls="ls -F"
alias l="ls -F"
alias ll="ls -Fal"
alias df="df -h"
alias c="cd .."
alias dd="clear"
alias :q="exit"

alias nethack="nethack-3.6.6"
alias weather="ansiweather -l chicago -u imperial"

alias fr="dict -d fd-fra-eng"
alias sp="dict -d fd-spa-eng"
alias spa="dict -d fd-spa-eng"
alias ger="dict -d fd-deu-eng"
alias deu="dict -d fd-deu-eng"
