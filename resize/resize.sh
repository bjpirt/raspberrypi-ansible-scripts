#!/bin/bash
set -ex
apt update
apt install -y kpartx

losetup -f /resize/2021-05-07-raspios-buster-armhf-lite-resized.img
kpartx -a /dev/loop1

mkdir -p /mnt/loop2
mount /dev/mapper/loop1p2 /mnt/loop2

# Resize to 3GB
sed -i 's/TARGET_END=$((ROOT_DEV_SIZE - 1))/TARGET_END=6291456/g' /mnt/loop2/usr/lib/raspi-config/init_resize.sh

umount /mnt/loop2
