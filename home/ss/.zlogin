setleds -D -num

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
