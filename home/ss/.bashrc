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
export LANGUAGE="en_US.UTF-8"
export LC_ALL="ALL"

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
alias szsh='sudo zsh'
alias smc='sudo mc'
alias svim='sudo vim'
alias xbg='xbacklight -get'
alias xbs='xbacklight -set'
alias dff='diffuse'
alias k3='kdiff3'
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
alias rbt='systemctl reboot'
alias pwoff='systemctl poweroff'

gcl() {
    grc cat $1 | less -R
}

# Pass aliases through sudo
alias sudo='sudo '

# Arch specific
alias pmin='pacman -Qn' # list installed packages
alias pmim='pacman -Qm' # list installed packages from AUR
alias pml='pacman -Ql' # list contents of the packages
pmlb() # list binary files in package
{
    files=`pacman -Ql $1`
    files_w_bin=`echo -e ${files} | grep 'bin/.\+'`
    echo -e ${files_w_bin}
}
alias pms='pacman -Ss' # search for the package (regexp)
alias pmh='pacman -Si' # show info on the package
alias pmi='pacman --needed -S' # install the package if needed
alias pmdu='pacman -Syyuv' # upgrade installed packages (as dist-upgrade in apt-get, hence 'du')
alias pmr='pacman -Rsn' # remove the package
alias pmar='pacman -Rsn $(pacman -Qdtq)' 

# Ubuntu specific
#alias dpi='dpkg -l'
#alias dpl -L='dpkg -L'
#dplb()
#{
#    files=`dpkg -L $1`
#    files_w_bin=`echo -e ${files} | grep 'bin/.\+'`
#    echo -e ${files_w_bin}
#}
#alias acs='apt-cache search'
#alias ach='apt-cache show'
#alias agi='apt-get install'
#alias agu='apt-get update'
#alias agdu='apt-get dist-upgrade'
#alias agr='apt-get remove --purge'
#alias agar='apt-get autoremove --purge'

# just in case...
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

#PS1='[\u@\h \W]\$ '  # Default
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

export QT_QPA_PLATFORMTHEME=qt5ct

if [[ $- == *i* ]] then
    xseticon -id $WINDOWID $HOME/.urxvt/terminal.png
fi
