# Configuration

* https://github.com/amq/firefox-debloat
* https://wiki.archlinux.org/index.php/Firefox/Tweaks#Change_Performance_settings


# Addons

* Dark Reader
* Dark New Tab
* New Tab Override to set new tab to about:blank
* Disconnect
* Google search link fix
* HTTPS Everywhere
* Print to PDF
* Tab Mover
* Tab Session Manager
* uBlock Origin (for slower PCs)
* uMatrix
* Video Speed Controller

# Restore session after crash

If Firefox has crashed or you've launched it and found out that open tabs are gone apart from pressing "Restore session" button you can also try:

        lz4jsoncat ~/.mozilla/firefox/xxxxxxxx.default/sessionstore-backups/recovery.jsonlz4 > output.json

