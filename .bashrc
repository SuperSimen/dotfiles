#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

shopt -s histappend

complete -cf sudo

stty -ixon

source ~/dotfiles/.bash_commands
