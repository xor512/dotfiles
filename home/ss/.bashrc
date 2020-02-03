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

export PATH=~/bin:$PATH

export VISUAL="vim"
export EDITOR="vim"
export BROWSER="firefox"
export PAGER='less -RF'
alias man='PAGER="most" man ' # See ~/bin/most to find out it is actually most -cwd

alias e='exit'
alias g='gvim'
alias v='vim'
alias m='mplayer'
alias sbash='sudo bash'
alias svim='sudo vim'
alias xbg='xbacklight -get'
alias xbs='xbacklight -set'
alias cgrep='grep --color=always'
alias grepl='cgrep --include=*.lua -r '
alias greph='cgrep --include=*.{h,hh,hpp,hxx} -r '
alias grepc='cgrep --include=*.{c,cc,cpp,cxx} -r '
alias grephc='cgrep --include=*.{h,hh,hpp,hxx,c,cc,cpp,cxx} -r '
alias grepj='cgrep --include=*.java -r '
alias grepp='cgrep --include=*.py -r '
alias grepr='cgrep --include=*.robot -r'
alias grepa='cgrep --include=*.{h,hh,hpp,hcc,c,cc,cpp,cxx,java,py,robot} -r '
alias grept='cgrep --include=*.txt -r'
alias grepcm='cgrep --include=CMakeLists.txt --include=*.cmake -r '

gcl() {
    grc cat $1 | less -R
}

# Arch specific
alias p='pacman'
alias pcdu='sudo pacman -Syyuv'
alias pcar='sudo pacman -Rsn $(pacman -Qdtq)'

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
