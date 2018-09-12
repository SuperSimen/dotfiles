#! /bin/bash


alias gst='git status'
alias gush='git push'
alias gull='git pull --rebase'

alias aws-mysql='mysql -h mysql.cmhhf7ibuf7e.eu-central-1.rds.amazonaws.com -u simen -p'

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

function trans() {
    transmission-remote "$@"
}

function clojure() {
    lein run -m clojure.main "$@"
}

# VIM
function v() {
    nvim "$@"
}

function vman() {
    manResult=$(man "$1")
    if [ $? -eq 0 ]
    then
        echo "$manResult" | vim - -RM
    fi
}

# OTHER
alias ls='ls --color=auto'

alias nrepl='lein repl :connect $(cat $(git rev-parse --show-toplevel)/.nrepl-port)'
