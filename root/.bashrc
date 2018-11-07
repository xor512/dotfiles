#!/bin/bash

#PS1='[\u@\h \W]\$ '  # Default
PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '

export LANG="en_US.UTF-8"
export LC_ALL"=en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

export PATH=$PATH:/home/ss/bin

export PAGER="most -cwd"
export EDITOR="vim"

alias e='exit'
alias g='gvim'
alias v='vim'
alias p='pacman'
alias m='mplayer'
alias sbash='sudo bash'
alias svim='sudo vim'
alias xbg='xbacklight -get'
alias xbs='xbacklight -set'
alias greph='grep --include=*.{h,hh,hpp,hxx} -r '
alias grepc='grep --include=*.{c,cc,cpp,cxx} -r '
alias grepj='grep --include=*.java -r '
alias grepp='grep --include=*.py -r '
alias grepr='grep --include=*.robot -r'
alias grepa='grep --include=*.{h,hh,hpp,hcc,c,cc,cpp,cxx,java,py,robot} -r '
