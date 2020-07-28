# Find which devices is an external storage

* sudo fdisk -l
* gnome-disks

# Find UUID of this device

* sudo blkid
* ls -l /dev/disk/by-uuid
* sudo lsblk -f

# Edit /etc/fstab

Somethig like

        UUID=70C5B79F22D4722E                     /mnt/music     ntfs    defaults,uid=1000,rw  0  0
