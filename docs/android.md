# Root

Google for SuperSU.zip and SuperSU.apk. Use TWRP to install SuperSU.zip
and adb install to install SuperSU.apk (it will check/manage root settings).
If this doesn't work you might need some dancing like in
https://www.chinaphonearena.com/forum/showthread.php?tid=16681

# Install apk

1. Settings -> General -> Security -> Unknown sources
2. adb install xxx.apk (-r switch to update, -s switch to try to install to sd-card)

# Open shell

* adb shell

# sdcard location (for pull/push)

* /sdcard

# To use SD-card as internal one:

  * Turn on USB debugging
  * adb shell
  * sm list-disks # will show smth like disk:179:64
  * sm partition disk:179,64 private # format whole card for internal storage
  * sm partition disk:179,64 mixed 50 # format part of the card for internal storage and part for external
  * sm partition disk:179,64 public 100 # to return to normal

# Unlocking bootloader

1. Settings -> Developer settings -> Enable USB debugging
2. Settings -> Developer settings -> Enable OEM unlock
3. adb devices
3. adb reboot bootloader or adb reboot fastboot
4. fastboot devices
5. fastboot oem unlock or fastboot flashing unlock
6. fastboot reboot

# Pull/push commands

* adb push xxx.zip /data
* adb pull /data/xxx.zip ./xxx.zip

# TWRP (after unlocking bootloader)

1. First adb reboot bootloader or adb reboot fastboot
2. If you have enough space for proper TWRP: fastboot flash TWRP.img
3. If not you can stil boot it: fastboot boot TWRP.img

Then you can use adb push smth /data/ and use your TWRP Install feature or similar

# Disable auto-update (for phones with not enough memory

1. Open Google Play.
2. Tap the hamburger icon (three horizontal lines) on the top-left2.
3. Tap Settings.
4. Tap Auto-update apps.
5. To disable automatic app updates, select Do not auto-update apps.

# Applications

 * Gboard or Simple Keyboard (then Settings -> General -> Language & keyboard -> Current keyboard -> Gboard/Simple keyboard)
 * Firefox (w/ uBlock origin, Dark Mode, HTTPS Everywhere)
 * Skype, Whatapp, Element
 * OLX
 * jakdojade.pl
 * Total Commander
 * K9 (for this go to Settings -> General -> Google -> Manage your Google Account -> Security -> Less secure app access) or FairEmail (next disable Gmail app through Settings -> General -> Apps -> Gmail -> Force stop -> Disable)
 * Link2SD (phone has to be rooted)
 * Google Authenticator
 * Weawow (for older Android w/o Google weather widget)

