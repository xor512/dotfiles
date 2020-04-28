#!/bin/sh

pacman -Qi | awk 'BEGIN{sort="sort -k2 -n"} /Name/ {name=$3} /Size/ {size=$4/1024;print name":",size,"Mb"|sort}'
