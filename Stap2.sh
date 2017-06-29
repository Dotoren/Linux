#!/bin/bash

#installeren van munin
sudo apt-get -y install munin munin-node munin-plugins-extra &&

#installeren van apache
sudo apt-get -y install apache2 libcgi-fast-perl libapache2-mod-fcgid &&

#enable van fcgif module in apache
sudo a2enmod fcgid 

