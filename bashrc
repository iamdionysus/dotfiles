# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# to make C-s, C-q work
stty -ixoff -ixon

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
alias gss='git status --short'
alias gst='git status'
alias ggpush='git push origin master'
alias gc='git commit -am'
