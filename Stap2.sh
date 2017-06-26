#!/bin/bash

#installeren van apache
sudo apt-get -y install apache2 libcgi-fast-perl libapache2-mod-fcgid

#enable van fcgif module in apache
sudo a2enmod fcgid 

