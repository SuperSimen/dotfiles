shopt -s histappend

stty -ixon

complete -cf sudo

if [ -e ~/.bash_commands.sh ]; then
    source ~/.bash_commands.sh
fi

export HISTFILESIZE=10000
export HISTSIZE=10000

PATH=$PATH:/Users/simen/bin


alias gst='git status'
alias gush='git push'
alias gull='git pull --rebase'

function gcom() {
    git commit -m "$1"
}

function gcoma() {
    git commit -am "$1"
}

function gadd() {
    git add "$@"
}

alias ls='ls -G'

alias nrepl='lein repl :connect $(cat $(git rev-parse --show-toplevel)/.nrepl-port)'
