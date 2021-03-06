# Themes
There are 3 themes for uniform GTK/Qt look:

 * adwaita
 * breeze
 * kvantum themes

(c) https://wiki.archlinux.org/index.php/Uniform_look_for_Qt_and_GTK_applications (see packages from there)

# Configuration

1. To configure theme for Gtk use lxappearance
2. To configure theme for Qt4 use qtconfig-qt4
   (not that Qt4 is deprecated for example in Manjaro and can be installed only
    from AUR, so to get qtconfig-qt4 or breeze-kde4 or such a lot of packages has to be
    installed from AUR, and as there are probably not many Qt4 apps left in repositories
    it may not be worth installing, so lxappearance + qt5ct may be enough)
3. To configure theme for Qt5 use qt5ct AND add this to .bashrc/.zshrc: export QT_QPA_PLATFORMTHEME=qt5ct
   (to check whether it is working run smth like QT_QPA_PLATFORMTHEME=qt5ct kdiff3 from terminal)
   (c) https://wiki.archlinux.org/index.php/Qt#Configuration_of_Qt5_apps_under_environments_other_than_KDE_Plasma
4. For chromium go to Settings -> Use GTK+ theme
5. For QtCreator use Tools -> Options -> Environment and Tools -> Options -> Text Editors
6. For vim download powerline fonts (e.g. nerd-fonts-complete = 2Gb), use "Roboto Mono for Powerline Regular" 
   (or just "Roboto Mono Regular" as it seems to support powerline, it it in ttf-roboto-mono package) or 
   "RobotoMono Nerd Font Mono Regular" or other powerline font and install vim-arline, vim-airline-themes

# Kvantum themes

For kvantum themes Kvantum Manager should be used instead (it has a lot of themes): 
https://www.youtube.com/watch?v=Ei4dUD233k0

# Dark themes

For dark themes adwaita dark, breeze dark or kvantum themes can be used
