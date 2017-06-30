#!/bin/bash

#installeren van munin
sudo apt-get -y install munin munin-node munin-plugins-extra &&

#installeren van apache
sudo apt-get -y install apache2 libcgi-fast-perl libapache2-mod-fcgid &&

#enable van fcgif module in apache
sudo a2enmod fcgid &&

#configs van munin
sudo sed -i 's*#dbdir	/var/lib/munin*dbdir	/var/lib/munin*' /etc/munin/munin.conf &&
sudo sed -i 's*#htmldir /var/cache/munin/www*htmldir /var/cache/munin/www*' /etc/munin/munin.conf &&
sudo sed -i 's*#logdir /var/log/munin*logdir /var/log/munin*' /etc/munin/munin.conf &&
sudo sed -i 's*#rundir	/var/run/munin*rundir	/var/run/munin*' /etc/munin/munin.conf &&
sudo sed -i 's*#tmpldir  /etc/munin/templates*tmpldir  /etc/munin/templates*' /etc/munin/munin.conf &&

#edit munin.conf om apache toegang te geven van ext. ip - MAAK BACKUP van orginele file:
mv /etc/munin/apache24.conf /etc/munin/apache24.conf_bak &&

echo "Alias /munin /var/cache/munin/www
<Directory /var/cache/munin/www>
 # Require local
 Require all granted
 Options FollowSymLinks SymLinksIfOwnerMatch
 Options None
</Directory>

ScriptAlias /munin-cgi/munin-cgi-graph /usr/lib/munin/cgi/munin-cgi-graph
<Location /munin-cgi/munin-cgi-graph>
 # Require local
 Require all granted
 Options FollowSymLinks SymLinksIfOwnerMatch
 <IfModule mod_fcgid.c>
 SetHandler fcgid-script
 </IfModule>
 <IfModule !mod_fcgid.c>
 SetHandler cgi-script
 </IfModule>
</Location>" > /etc/munin/apache24.conf &&

echo "stap2 succes"