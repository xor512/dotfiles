# Install

* At the time of writing fonts with correct width are in `nerd-fonts-complete-mono-glyphs`,
then `RobotoMono Nerd Font Mono` can be used, but this package takes about 2Gb of space,
so there is a copy of this font in `.local/share/fonts`, just run `fc-cache` for it
to be loaded
* However this font seems to be screwed up for graphical apps, so for UI apps there
is a package `ttf-roboto-mono`. Fonts from this package are also copied to `.local/share/fonts`,
so in .vimrc it is used.
* To set font in GUI apps use `lxappearance` and choose `Dejavu Sans Book` for example,
to set fonts in QT apps use `qt5ct` and choose `Dejavu Sans` and `Roboto Mono [GOOG]`.
* Other apps like `meld` or `vscode` can be configured separately from itself
