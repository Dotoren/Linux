#!/bin/bash

#RESTART APACHE:

service apache2 restart &&

#RESTART MUNIN:

service munin-node restart &&

echo "stap 3 succes"