

shopt -s histappend

complete -cf sudo

stty -ixon

source ~/.bash_commands.sh

alias gst='git status'
alias gush='git push'
alias gull='git pull --rebase'

function path() {
    readlink -f "$1"
}

function gcom() {
    git commit -m "$1"
}

function gcoma() {
    git commit -am "$1"
}

function gadd() {
    git add "$@"
}



alias nrepl='lein repl :connect $(cat $(git rev-parse --show-toplevel)/.nrepl-port)'
