#!/bin/bash
HST="$(hostname)" 
sed -i "/127.0.0.1/ a\127.0.0.1 $HST" /etc/hosts &&

sudo -s &&

sudo apt-get -y update &&
echo "update succes" &&
sudo apt-get -y upgrade &&

echo "stap 1 succes"