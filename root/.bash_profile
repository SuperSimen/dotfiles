PATH=$PATH:/home/simen/bin

export HISTFILESIZE=10000
export HISTSIZE=10000

# export FZF_DEFAULT_COMMAND="find -L * -path '*/\.*' -prune -o -type f -print -o -type l -print 2> /dev/null"

export FZF_DEFAULT_COMMAND='ag --follow -g ""'

shopt -s histappend

source ~/dotfiles/bash_commands.sh