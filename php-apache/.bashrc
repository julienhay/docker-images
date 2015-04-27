# ~/.bashrc: executed by bash(1) for non-login shells.

PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
umask 022

export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'

alias l='ls -apl $LS_OPTIONS'
alias ll='ls -apl $LS_OPTIONS'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias sf='app/console'
