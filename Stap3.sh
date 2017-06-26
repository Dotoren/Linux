#!/bin/bash

#installeren van munin
apt-get -y install munin munin-node munin-plugins-extra

#sed -i 's/#dbdir/var/lib/munin / dbdir/var/lib/munin' /etc/munin/munin.conf
