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
function dff
    diffuse $argv &
end
function k3
    kdiff3 $argv &
end
function ev
    evince $argv &
end
function pf
    pcmanfm $argv &
end
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

# Arch specific
alias pmin='pacman -Qn' # list installed packages
alias ymin='yay -Qn'
alias pmim='pacman -Qm' # list installed packages from AUR
alias ymim='yay -Qm'
alias pml='pacman -Ql' # list contents of the packages
alias yml='yay -Ql'
function pmlb # list binary files in package
    pacman -Ql $argv | grep 'bin/.\+'
end
function ymlb # list binary files in package
    yay -Ql $argv | grep 'bin/.\+'
end
alias pms='pacman -Ss' # search for the package (regexp)
alias yms='yay -Ss'
alias pmh='pacman -Si' # show info on the package
alias ymh='yay -Si'
alias pmi='sudo pacman --needed -S' # install the package if needed
alias ymi='yay --needed -S' # install the package if needed
alias pmdu='sudo pacman -Syyuv' # upgrade installed packages (as dist-upgrade in apt-get, hence 'du')
alias ymdu='yay -Syyuv'
alias pmr='sudo pacman -Rsn' # remove the package
alias ymr='yay -Rsn'
alias pmar='sudo pacman -Rsn (pacman -Qdtq)' 
alias ymar='yay -Rsn (yay -Qdtq)' 

# Ubuntu specific
#alias dpi='dpkg -l'
#alias dpl -L='dpkg -L'
#function dplb # list binary files in package
#    dpkg -L $argv | grep 'bin/.\+'
#end
#alias acs='apt-cache search'
#alias ach='apt-cache show'
#alias agi='sudo apt-get install'
#alias agu='sudo apt-get update'
#alias agdu='sudo apt-get dist-upgrade'
#alias agr='sudo apt-get remove --purge'
#alias agar='sudo apt-get autoremove --purge'

set QT_QPA_PLATFORMTHEME qt5ct

xseticon -id $WINDOWID $HOME/.urxvt/terminal.png

# From https://incenp.org/notes/2013/urxvt-keyboard-problems.html
set HISTIGNORE "clear:$HISTIGNORE"


