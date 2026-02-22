#!/bin/bash

# Usage: sudo ./write_debian_usb.sh debian.iso /dev/sdX

ISO="$1"
DEVICE="$2"

if [ -z "$ISO" ] || [ -z "$DEVICE" ]; then
    echo "Usage: sudo $0 <debian.iso> <device>"
    echo "Example: sudo $0 debian-12.iso /dev/sdb"
    exit 1
fi

echo "Writing $ISO to $DEVICE..."
sudo umount ${DEVICE}?* 2>/dev/null

sudo dd if="$ISO" of="$DEVICE" bs=4M status=progress conv=fsync

echo "Done."
