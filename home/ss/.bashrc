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
export LC_CTYPE="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_PAPER="en_US.UTF-8"
export LC_NAME="en_US.UTF-8"
export LC_ADDRESS="en_US.UTF-8"
export LC_TELEPHONE="en_US.UTF-8"
export LC_MEASUREMENT="en_US.UTF-8"
export LC_IDENTIFICATION="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export PATH=~/bin:$PATH

export VISUAL="vim"
export EDITOR="vim"
export BROWSER="firefox"
export PAGER='less -RF'
alias man='PAGER="most" man ' # See ~/bin/most to find out it is actually most -cwd

alias jctl='journalctl -p 3 -xb'
alias l='ls --color=always -1a'
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
alias ev='evince'
alias pf='pcmanfm'
alias cgrep='grep --color=always'
alias grepl='cgrep --include=\*.lua -r '
alias greph='cgrep --include=\*.{h,hh,hpp,hxx} -r '
alias grepc='cgrep --include=\*.{c,cc,cpp,cxx} -r '
alias grephc='cgrep --include=\*.{h,hh,hpp,hxx,c,cc,cpp,cxx} -r '
alias grepj='cgrep --include=\*.java -r '
alias grepp='cgrep --include=\*.py -r '
alias grepr='cgrep --include=\*.robot -r'
alias grepa='cgrep --include=\*.{h,hh,hpp,hcc,c,cc,cpp,cxx,java,py,robot} -r '
alias grept='cgrep --include=\*.txt -r'
alias grepcm='cgrep --include=CMakeLists.txt --include=\*.cmake -r '
alias grepx='cgrep --include=\*.{xml,xsd} -r '
alias rbt='systemctl reboot'
alias pwoff='systemctl poweroff'

gcl() {
    grc cat $1 | less -R
}

# Pass aliases through sudo
alias sudo='sudo '

# Arch specific
alias pmin='pacman -Qn' # list installed packages
alias ymin='yay -Qn'
alias pmim='pacman -Qm' # list installed packages from AUR
alias ymim='yay -Qm'
alias pml='pacman -Ql' # list contents of the packages
alias yml='yay -Ql'
pmlb() # list binary files in package
{
    files=`pacman -Ql $1`
    files_w_bin=`echo -e ${files} | grep 'bin/.\+'`
    echo -e ${files_w_bin}
}
ymlb() # list binary files in package
{
    files=`yay -Ql $1`
    files_w_bin=`echo -e ${files} | grep 'bin/.\+'`
    echo -e ${files_w_bin}
}
alias pms='pacman -Ss' # search for the package (regexp)
alias yms='yay -Ss'
alias pmh='pacman -Si' # show info on the package
alias ymh='yay -Si'
alias pmi='sudo pacman --needed -S' # install the package if needed
alias ymi='yay --needed -S'
alias pmdu='sudo pacman -Syyuv' # upgrade installed packages (as dist-upgrade in apt-get, hence 'du')
alias ymdu='yay -Syyuv'
alias pmr='sudo pacman -Rsn' # remove the package
alias ymr='yay -Rsn'
alias pmar='sudo pacman -Rsn $(pacman -Qdtq)' 
alias ymar='yay -Rsn $(pacman -Qdtq)' 

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
#alias agi='sudo apt-get install'
#alias agu='sudo apt-get update'
#alias agdu='sudo apt-get dist-upgrade'
#alias agr='sudo apt-get remove --purge'
#alias agar='sudo apt-get autoremove --purge'

# just in case...
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

#PS1='[\u@\h \W]\$ '  # Default
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

export QT_QPA_PLATFORMTHEME=qt5ct

if [[ $- == *i* ]]; then
    xseticon -id $WINDOWID $HOME/.urxvt/terminal.png
fi

# From https://incenp.org/notes/2013/urxvt-keyboard-problems.html
HISTIGNORE="clear:$HISTIGNORE"
export HISTIGNORE
