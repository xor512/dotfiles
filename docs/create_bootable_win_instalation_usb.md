# Why doesn't plain dd works?

    "Microsoft windows xp professional sp3 for clients.iso"
     This is an ISO9660 image with zeros in the first 32768 bytes.
     You can use USB Writer or dd or cat to write it into a USB store,
     but it can't boot as a disk drive because there's no MBR.
     Using isohybrid on it will make it a bootable ISO on USB...
     what happens after that it will depend on the ISO boot loader.

(c) https://forums.linuxmint.com/viewtopic.php?t=207148

# What to do

* Use isohybrid:

    * How create isohybrid

        isohybrid -v /path/to/name.iso

    * or for UEFI 

        isohybrid --uefi -v output.iso

    * and then dd

        sudo dd bs=4M if=win_installation_iso of=/dev/sd[drive letter] status=progress oflag=sync

(c) https://wiki.manjaro.org/index.php/Burn_an_ISO_File#Writing_to_a_USB_Stick_in_Linux

* Use woeusb (woeusbgui for example from that program) which is available in AUR
