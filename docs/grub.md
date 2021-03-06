# Where to put this?

To /etc/default/grub. After that run update-grub which under the hood does the following:

        ~/tmp >>> cat /usr/bin/update-grub
        #! /bin/sh
        grub-mkconfig -o /boot/grub/grub.cfg

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

----------------------------------------------------------------
**_NOTE:_**

Issue

    What are the acpi and noapic kernel boot options?

ACPI stands for Advanced Configuration and Power Interface. It is the system that describes hardware to the operating system to let understand what hardware is present and to properly configure it, controls hardware actions such as the dynamic speed fans, the power button behavior, system sleep states, optionally to control frequencies of CPUs and helps to identify some system capabilities.

Note: some machines are able to boot without using ACPI

ACPI power-saving features are hierarchical, meaning that any device running "behind" another will be dependent on the power state of the parent device. For example, a device cannot be running in full-power "behind" a device that is sleeping or in stand-by mode. This also comes from the hardware design.

However, many hardware platforms ship with buggy or out-of-specification ACPI firmware which can cause any number of unspecified problems. If the machine is randomly powering off or failing to boot, disabling ACPI may help.

The consequences are that when ACPI is off, the server will be unable to turn itself off, as the soft shutdown cannot work after executing poweroff or shutdown -h now. It will be necessary to press/hold the shutdown/reboot button of that server, power off via Out-of-Band management or use some other external device (e.g. watchdog) to power off/reboot.
APIC

APIC stands for Advanced Programmable Interrupt Controller.

APIC is the replacement for the old PIC chip that, in the past, was embedded on motherboards and allowed the configuration of interrupts for peripherals like soundcards, IDE controllers, sharing/redirecting of interrupts. Disabling APIC removes the ability to make use of IRQ sharing or device IRQ remapping.
Applying boot options

By default, both features are enabled in the kernel, and can be disabled with the respective boot options acpi=off and noapic as shown below.

* Edit /boot/grub/grub.conf

*  Edit the kernel line and add the desired option. The following example disables both ACPI and APIC:

* kernel /vmlinuz-2.6.18-194.el5 ro root=/dev/VolGroup00/LogVol00 rhgb quiet noapic acpi=off

* Restart your system.
----------------------------------------------------------------

# Show log while loading

* Remove "quiet" from GRUB_CMDLINE_LINUX_DEFAULT or smth

#  Restoring GRUB 2 Boot Loader (from https://gparted.org/display-doc.php?name=help-manual&lang=C#gparted-fix-grub-boot-problem)

* Boot from Live media such as GParted Live or your GNU/Linux distribution image. Open a terminal window.

* Determine which partition contains the / file system for your GNU/Linux distribution.

    Use GParted to list the partitions on your disk device. Look for a partition that contains your GNU/Linux / file system. This Linux partition will likely use a file system such as ext2, ext3, ext4, or btrfs.

----------------------------------------------------------------
**_NOTE:_**

    If the / partition is on LVM then the Logical Volume Manager must be active. LVM can be started with the command:

        vgchange -a y

    With LVM, the equivalent of a disk partition is a Logical Volume. Logical Volumes can be listed with the command:

        lvscan
----------------------------------------------------------------

----------------------------------------------------------------
**_NOTE:_**

    If the / partition is on RAID, then the RAID must be active. Linux Software RAID can be started with the command:

        mdadm --assemble --scan
----------------------------------------------------------------

* Create a mount point directory by entering (as root):

            mkdir /tmp/mydir

* Mount the / partition on the mount point directory. For example assume the / file system is contained in the /dev/sda5 partition. Enter (as root):

            mount /dev/sda5 /tmp/mydir

* If you have a separate /boot partition, for example at /dev/sda3, then an extra step is required. Mount the /boot partition at /tmp/mydir/boot by entering (as root):

            mount /dev/sda3 /tmp/mydir/boot

----------------------------------------------------------------
**_NOTE:_**

    If you do not know whether you have a separate boot partition then you probably do not and can ignore this step.
----------------------------------------------------------------

* Prepare to change the root environment by entering (as root):

            mount --bind /dev /tmp/mydir/dev

            mount --bind /proc /tmp/mydir/proc

            mount --bind /sys /tmp/mydir/sys

* Change the root environment by entering (as root):

            chroot /tmp/mydir

* Reinstall GRUB 2 on the boot device. Note that the device name is used and not the partition name. For example, if the / partition is /dev/sda5 then the device is /dev/sda.

    For Debian, Ubuntu, and other offshoot GNU/Linux distributions, enter the command (as root):

            grub-install /dev/sda

    For CentOS, Fedora, openSUSE and other offshoot GNU/Linux distributions, enter the command (as root):

            grub2-install /dev/sda

* Exit the chroot environment by entering (as root):

            exit

* Reboot your computer.

# Restoring GRUB Legacy Boot Loader

Use the following steps to restore the GRUB Legacy boot loader:

* Boot from Live media such as your GNU/Linux distribution image. Open a terminal window.

----------------------------------------------------------------
**_NOTE:_**

    The Live media must contain the GRUB Legacy boot loader. If your GNU/Linux distribution uses GRUB Legacy, then the distribution Live media will also contain GRUB Legacy.
----------------------------------------------------------------

* Start the grub application from the command line (as root).

            grub

* Find where grub stage1 is located by using one of the following:

    If the /boot folder is stored in the / partition, use the command:

            grub> find /boot/grub/stage1

    If the /boot folder is stored in a partition different than the / partition, use the command:

            grub> find /grub/stage1

    The output from the find command might look like the following:

            (hd0,0)

    If more than one line is listed in the command output, you will need to decide which device you use for grub.

* Set the grub root device by specifying the device returned by the find command. This should be the partition containing the boot directory.

            grub> root (hd0,0)

* Reinstall the grub boot loader into the Master Boot Record (MBR) with:

            grub> setup (hd0)

    If you want to install the grub boat loader into the boot sector of a partition, instead specify a partition with:

            grub> setup (hd0,0)

* Exit grub.

            grub> quit

* Reboot your computer.
