# aliases
alias l='lsd -l'
alias ll='lsd -l'
alias vi='vim'
alias gst='git status'
alias gss='git status --short'
alias glo='git log --oneline --decorate --color'
alias grv='git remote --verbose'

alias gaa='git add --all'
alias gca='git commit -am'
alias ggpush='git push'

alias pull-all='ls | xargs -P10 -I{} git -C {} pull'

# PATH
export PATH=~/Documents/src/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<