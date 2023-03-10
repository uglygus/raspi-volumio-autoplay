#!/bin/bash

#curl -O https://raw.githubusercontent.com/fire1ce/raspberry-pi-power-button/main/power_button.py
#curl -O https://raw.githubusercontent.com/fire1ce/raspberry-pi-power-button/main/power_button.service

if (( $EUID != 0 )); then
    echo "Please run as root, ie: sudo install.sh"
    echo 
    exit
fi

echo stop service...
systemctl stop volumio-autoplay.service

echo -- cd /home/volumio/raspi-volumio-autoplay
cd /home/volumio/raspi-volumio-autoplay

echo install service...
cp volumio-autoplay.service /etc/systemd/system

echo install volumio-autoplay.sh...
cp volumio-autoplay.sh  /usr/local/bin

echo Reload daemons...
systemctl daemon-reload

echo start service...
systemctl start volumio-autoplay.service

#sudo systemctl enable autoplay.service

echo "-- install-autoplay.sh -- done."
