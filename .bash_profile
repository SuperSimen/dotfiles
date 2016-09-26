PATH=$PATH:/home/simen/bin:/home/simen/src/haskell-bin/.cabal-sandbox/bin:/home/simen/src/php-bin/vendor/bin

export HISTFILESIZE=10000
export HISTSIZE=10000

export FZF_DEFAULT_COMMAND="find -L * -path '*/\.*' -prune -o -type f -print -o -type l -print 2> /dev/null"

shopt -s histappend

source ~/dotfiles/bash_commands.sh
