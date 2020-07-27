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

# Applications

 * Firefox (w/ uBlock origin, Dark Mode)
 * Link2SD (phones has to be rooted)
 * Skype (this shit does not want to SD card, have to root and use Link2SD or similar)
 * OLX
 * jakdojade.pl
 * Total Commander
 * K9 or FairEmail (next disable Gmail app through Settings -> Apps -> Gmail -> Force stop -> Disable)
 * Element
