#!/bin/bash



datestr=$(date)

/usr/local/bin/volumio play

echo $datestr "volumio-autoplay.sh done at:  "    >> /var/log/volumio-autoplay


