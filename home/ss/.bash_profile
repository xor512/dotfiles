#
# ~/.bash_profile
#

# source ~/.bashrc if it exists and this is an interactive shell
if [[ $- == *i* ]] && [ -r ~/.bashrc ]; then . ~/.bashrc; fi

setleds -D -num

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec startx
fi
