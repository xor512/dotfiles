#!/bin/bash

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

setxkbmap -option terminate:ctrl_alt_bksp # Allow exiting xorg by ctrl-alt-backspacw
xrdb -load ~/.Xresources
/usr/bin/urxvtd -q -f -o

exec awesome
sleep 1 && nitrogen restorere & # Wallpaper
