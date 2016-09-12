#! /bin/bash


# GIT
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


# VIM
function v() {
    vim "$@"
}

function vman() {
    manResult=$(man "$1")
    if [ $? -eq 0 ]
    then
        echo "$manResult" | vim - -RM
    fi
}

function vim() {
    nvim "$@"
}

# OTHER
alias ls='ls --color=auto'
