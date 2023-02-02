#!/bin/bash
 
if [ $(id -u) -ne 0 ]; then
	echo "Must be run as root."
	echo "Try 'sudo bash $0'"
	exit 1
fi

if [ -f "/opt/influx-schema.txt" ]; then
	influx -import -path=/opt/influx-schema.txt
fi
