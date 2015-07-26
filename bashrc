# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Path
if [ -d "$HOME/bin" ]; then
   PATH="$HOME/bin:$PATH"
fi

# 256 color
export TERM=xterm-256color

# to make C-s, C-q work
stty -ixoff -ixon

# PATH
PATH="$PATH"

# aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias cd.='cd ..'
alias cd..='cd ..'
alias l='ls -alF'
alias ll='ls -l'
alias vi='vim'
alias hc="history -c"
alias which='type -p'
alias gst='git status'
alias gss='git status --short'
alias glo='git log --oneline --decorate --color'
alias grv='git remote --verbose'

alias gaa='git add --all'
alias gca='git commit -am'
alias ggpush='git push'
