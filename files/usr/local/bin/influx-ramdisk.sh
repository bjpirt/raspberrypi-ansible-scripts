#!/bin/bash

mkdir -p /data-ramdisk/oneday
chown -R influxdb:influxdb /data-ramdisk/oneday

mkdir -p /data-ramdisk/wal
chown -R influxdb:influxdb /data-ramdisk/wal

mkdir -p /data-ramdisk/_internal
chown -R influxdb:influxdb /data-ramdisk/_internal