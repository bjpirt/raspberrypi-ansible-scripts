#!/bin/bash

mkdir -p /data-ramdisk/oneday
chown -R influxdb:influxdb /data-ramdisk/oneday
rm -rf /data/influxdb/data/tycoch/oneday
ln -sf /data-ramdisk/oneday /data/influxdb/data/tycoch/oneday
chown -R influxdb:influxdb /data/influxdb/data/tycoch/oneday

mkdir -p /data-ramdisk/wal
chown -R influxdb:influxdb /data-ramdisk/wal
rm -rf /data/influxdb/wal
ln -sf /data-ramdisk/wal /data/influxdb/wal
chown -R influxdb:influxdb /data/influxdb/wal

mkdir -p /data-ramdisk/_internal
chown -R influxdb:influxdb /data-ramdisk/_internal
rm -rf /data/influxdb/data/_internal
ln -sf /data-ramdisk/_internal /data/influxdb/data/_internal
chown -R influxdb:influxdb /data/influxdb/data/_internal
