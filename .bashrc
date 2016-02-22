# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export GOPATH=$HOME/go

# User specific aliases and functions

export PS1='\[\e[0;32m\][\u@\h \W \D{%H%M%S}]\$\[\e[00m\] '
