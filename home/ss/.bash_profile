#
# ~/.bash_profile
#

# source ~/.bashrc if it exists and this is an interactive shell
if [[ $- == *i* ]] && [ -r ~/.bashrc ]; then . ~/.bashrc; fi

setleds -D -num

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
