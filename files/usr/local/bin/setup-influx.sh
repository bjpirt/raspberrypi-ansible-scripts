#!/bin/bash
 
if [ $(id -u) -ne 0 ]; then
	echo "Must be run as root."
	echo "Try 'sudo bash $0'"
	exit 1
fi

mkdir /data/influxdb
chown -R influxdb:influxdb /data/influxdb

mkdir /data/chronograf
chown -R chronograf:chronograf /data/chronograf

systemctl daemon-reload
systemctl restart influxdb
systemctl restart chronograf

influx -import /usr/local/tycoch/software/influx-setup/influx-setup.txt