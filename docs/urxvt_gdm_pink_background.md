# How to fix pink background in urxvt wheh running gdm

Edit `/etc/gdm/Xsession` and remove `-nocpp` from calls to `xrdb -merge`
