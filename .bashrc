#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias st='git status'
alias pu='git push'
alias re='git pull --rebase'

function vman() {
    manResult=$(man "$1")
    if [ $? -eq 0 ]
    then
        echo "$manResult" | vim - -RM
    fi
}

function v() {
    vim "$@"
}

PS1='[\u@\h \W]\$ '

shopt -s histappend

complete -cf sudo

stty -ixon
