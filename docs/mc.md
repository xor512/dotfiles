# Same colorscheme in urxvt and xfce4-terminal/gnome-terminal/lxterminal/etc

* Add this to ~/.config/mc/ini

    [Colors]
    base_color=
    xterm=
    xterm-256color=linux:normal=cyan,rgb002:input=white,cyan:inputunchanged=black,cyan:dhotnormal=red:editnormal=,default
    rxvt=
    rxvt-unicode-256color=linux:normal=cyan,rgb002:input=white,cyan:inputunchanged=black,cyan:dhotnormal=red:editnormal=,default
    color_terminals=linux:normal=cyan,rgb002:input=white,cyan:inputunchanged=black,cyan:dhotnormal=red:editnormal=,default
    linux=

* Alternatively run `mc --skin xoria256` or other skin in /usr/share/mc/skins directory
