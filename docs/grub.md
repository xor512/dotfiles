# Boot menu on start

* GRUB_CMDLINE_UB_TIMEOUT_STYLE=menu
* GRUB_TIMEOUT=5

# To disable IPv6 (but why? Also this is not enough AFAIR)

* GRUB_CMDLINE_LINUX_DEFAULT="ipv6.disable=1" # append

# LUKS

* GRUB_CMDLINE_LINUX="cryptdevice=/dev/sda5:lvm"
* GRUB_ENABLE_CRYPTODISK=y

# Reboot hangs

* GRUB_CMDLINE_LINUX_DEFAULT="reboot=pci" # append

# Show log while loading

* Remove "quite" from GRUB_CMDLINE_LINUX_DEFAULT or smth


