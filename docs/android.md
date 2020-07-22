# To use SD-card as internal one:

  * Turn on USB debugging
  * adb shell
  * sm list-disks # will show smth like disk:179:64
  * sm partition disk:179,64 private # format whole card for internal storage
  * sm partition disk:179,64 mixed 50 # format part of the card for internal storage and part for external
  * sm partition disk:179,64 public 100 # to return to normal

# Applications

 * Link2SD (phones has to be rooted)
 * Skype (this shit does not want to SD card, have to root and use Link2SD or similar)
 * OLX
 * Total Commander


