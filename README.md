# Raspberry Pi Ansible Scripts

An Ansible playbook to set up a Raspberry Pi

# Getting Started

- Flash Raspbian to an SD card
- Configure WiFi via the config file on /boot
- Enable SSH via the config fle on /boot
- Install Ansible locally

Clone this repository somewhere. Run ansible with the hosts file configured to point at the system you want to configure:

```
ansible-playbook -k -u pi -i hosts -l tycoch site.yml
```
