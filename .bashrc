# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# some tree aliases
alias t2='tree -L 2'
alias t3='tree -L 3'
alias t4='tree -L 4'
alias th2='tree -hL 2'
alias th3='tree -hL 3'
alias th4='tree -hL 4'
alias ta2='tree -ahL 2'
alias ta3='tree -ahL 3'
alias ta4='tree -ahL 4'

# github.com/memowe/dotfiles
alias dotfiles='/usr/bin/env git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'

# git completion
source $HOME/.git-completion.bash

# disable terminal freeze
stty stop ''
stty start ''
stty -ixon
stty -ixoff

# cabal-installed utilities like pandoc
export PATH=${HOME}/.cabal/bin:$PATH

[ -f "/home/memowe/.ghcup/env" ] && source "/home/memowe/.ghcup/env" # ghcup-env

# no proxy for local stuff
export NO_PROXY=localhost,127.0.0.0/8,::1
