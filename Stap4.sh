#!/bin/bash
#installeren van syslog-ng

sudo apt-get install syslog-ng &&

#installeren van salt master en minion op de hoofdserver
sudo apt-get install salt-master &&
sudo apt-get install salt-minion &&

echo "stap 4 succes"