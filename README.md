# bootable_usb
A simple shell script to write a Debian ISO image to a USB flash drive using dd.

```
chmod +x write_debian_usb.sh
sudo ./write_debian_usb.sh <debian.iso> <device>
sudo ./write_debian_usb.sh debian-12.x.x-amd64-netinst.iso /dev/sdb
```

Verify the USB

You can check the USB after writing:
```
lsblk -f
sudo fdisk -l /dev/sdX
```
