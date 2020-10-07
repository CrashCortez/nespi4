#!/bin/bash

sudo sed -i 's/critical/stable/' /etc/default/rpi-eeprom-update
sudo apt update
sudo apt -y full-upgrade
sudo rpi-eeprom-update -a
sudo reboot

#after reboot run ‘sudo rpi-eeprom-update’ you should have a eeprom current of 09 03 2020 or greater. You need need at least 07 16 2020 to boot from usb/HDD/ssd etc.
