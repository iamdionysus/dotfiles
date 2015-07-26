# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Path
if [ -d "$HOME/bin" ]; then
   PATH="$HOME/bin:$PATH"
fi

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
alias ggpush='git push origin $(current_branch)'
alias gc='git commit -am'
