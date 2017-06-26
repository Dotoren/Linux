#!/bin/bash
#installeren van syslog-ng

sudo apt-get update
sudo apt-get install syslog-ng

#installeren van salt master en minion op de hoofdserver
apt-get install salt-master
apt-get install salt-minion