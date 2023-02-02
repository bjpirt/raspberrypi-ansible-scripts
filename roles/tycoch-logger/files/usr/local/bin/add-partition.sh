#!/bin/bash

set -ex

LAST_SECTOR=$(fdisk -l | grep  mmcblk0p2 | awk '{print $3}')
NEW_START=$(( LAST_SECTOR + 1 ))

fdisk /dev/mmcblk0 <<EOF
n
p

$NEW_START

w
EOF

mkfs -t ext3 /dev/mmcblk0p3
