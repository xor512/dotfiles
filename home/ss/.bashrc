#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:~/bin:~/Android/Sdk/platform-tools
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dsun.java2d.opengl=true'
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
#export ANDROID_HOME="~/Android/Sdk"
export LANG="en_US.UTF-8"
export LC_ALL"=en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

export PATH=$PATH:~/bin

#export PAGER="most -cwd"
export PAGER="less -R"
export EDITOR="gvim"

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
alias grepl='grep --include=*.lua -r '
alias grepj='grep --include=*.java -r '
alias grepp='grep --include=*.py -r '
alias grepr='grep --include=*.robot -r'
alias grepa='grep --include=*.{h,hh,hpp,hcc,c,cc,cpp,cxx,java,py,robot} -r '
alias grept='grep --include=*.txt -r'

gcl() {
    grc cat $1 | less -R
}

# Ubuntu specific
#alias acs='apt-cache search'
#alias ach='apt-cache show'
#alias agi='sudo apt-get install'
#alias agu='sudo apt-get update'
#alias agdu='sudo apt-get dist-upgrade'
#alias agr='sudo apt-get remove --purge'
#alias agar='sudo apt-get autoremove --purge'

#PS1='[\u@\h \W]\$ '  # Default
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
