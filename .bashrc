# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias dotfiles='/usr/bin/env git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'

# cabal-installed utilities like pandoc
export PATH=${HOME}/.cabal/bin:$PATH
