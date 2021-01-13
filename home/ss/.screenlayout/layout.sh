#!/bin/sh

function run {
    if ! pgrep $1 ; then
        $@&
    fi
}

xrandr --output LVDS1 --off --output DVI1 --off --output TV1 --off --output VGA1 --primary --mode 1280x1024 --pos 0x0 --rotate normal --output VIRTUAL1 --off
echo -n "xrandr applied!"

