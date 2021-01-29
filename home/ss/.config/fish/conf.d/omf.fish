# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# For midnight commander
set SHELL /usr/bin/fish

set LANG "en_US.UTF-8"
set LANGUAGE "en_US.UTF-8"
set LC_CTYPE "en_US.UTF-8"
set LC_NUMERIC "en_US.UTF-8"
set LC_TIME "en_US.UTF-8"
set LC_COLLATE "en_US.UTF-8"
set LC_MONETARY "en_US.UTF-8"
set LC_MESSAGES "en_US.UTF-8"
set LC_PAPER "en_US.UTF-8"
set LC_NAME "en_US.UTF-8"
set LC_ADDRESS "en_US.UTF-8"
set LC_TELEPHONE "en_US.UTF-8"
set LC_MEASUREMENT "en_US.UTF-8"
set LC_IDENTIFICATION "en_US.UTF-8"
set LC_ALL "en_US.UTF-8"

set PATH ~/bin:$PATH

set VISUAL "vim"
set EDITOR "vim"
set BROWSER "firefox"
set PAGER 'less -RF'
alias man='PAGER="most" man ' # See ~/bin/most to find out it is actually most -cwd

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
alias rbt='systemctl reboot'
alias pwoff='systemctl poweroff'

function gcl
    command grc cat $argv | less -R
end

# Pass aliases through sudo
alias sudo='sudo '

# Arch specific
alias pmin='pacman -Qn' # list installed packages
alias pmim='pacman -Qm' # list installed packages from AUR
alias pml='pacman -Ql' # list contents of the packages
function pmlb # list binary files in package
    command pacman -Ql $argv | grep 'bin/.\+'
end
alias pms='pacman -Ss' # search for the package (regexp)
alias pmh='pacman -Si' # show info on the package
alias pmi='pacman --needed -S' # install the package if needed
alias pmdu='pacman -Syyuv' # upgrade installed packages (as dist-upgrade in apt-get, hence 'du')
alias pmr='pacman -Rsn' # remove the package
alias pmar='pacman -Rsn (pacman -Qdtq)' 

# Ubuntu specific
#alias dpi='dpkg -l'
#alias dpl -L='dpkg -L'
#function dplb # list binary files in package
#    command dpkg -L $argv | grep 'bin/.\+'
#end
#alias acs='apt-cache search'
#alias ach='apt-cache show'
#alias agi='apt-get install'
#alias agu='apt-get update'
#alias agdu='apt-get dist-upgrade'
#alias agr='apt-get remove --purge'
#alias agar='apt-get autoremove --purge'

set QT_QPA_PLATFORMTHEME qt5ct

xseticon -id $WINDOWID $HOME/.urxvt/terminal.png

# From https://incenp.org/notes/2013/urxvt-keyboard-problems.html
set HISTIGNORE "clear:$HISTIGNORE"


