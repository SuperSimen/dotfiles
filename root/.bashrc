shopt -s histappend

stty -ixon

complete -cf sudo

if [ -e ~/.bash_commands.sh ]; then
    source ~/.bash_commands.sh
fi

export HISTFILESIZE=10000
export HISTSIZE=10000

PATH=$PATH:$HOME/bin

alias gst='git status'

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

export FZF_DEFAULT_COMMAND='ag --follow -g ""'  # Use ag as for fzf search to respect .gitignore

LS_COLORS=$LS_COLORS:'di=0;36' ; export LS_COLORS
