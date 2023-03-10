#!/bin/bash

sudo systemctl disable volumio-autoplay.service
sudo systemctl stop volumio-autoplay.service
sudo rm /etc/systemd/system/volumio-autoplay.service
sudo rm /usr/local/bin/volumio-autoplay.sh

echo "uninstall volumio-autoplay done."
