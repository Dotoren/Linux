#!/bin/bash
HST="$(hostname)" 
sed -i "/127.0.0.1/ a\127.0.0.1 $HST" /etc/hosts

sudo apt-get -y update
sudo apt-get -y upgrade

git clone https://github.com/Dotoren/Linux.git

echo "stap 1 succes"