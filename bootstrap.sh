#!/bin bash

SETUP_LOC=/usr/local/tycoch/setup

apt-get update
apt-get install -y git ansible
mkdir -p $SETUP_LOC
echo -e "[tycoch]\nraspberrypi ansible_connection=local" > /tmp/ansible-hosts
ansible-pull -f -o -C master -d $SETUP_LOC -i /tmp/ansible-hosts -U https://github.com/bjpirt/tycoch-monitor-setup.git
rm /tmp/ansible-hosts
apt-get clean