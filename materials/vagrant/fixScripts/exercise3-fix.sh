#!/bin/bash
#add fix to exercise3 here

sudo chmod -R 755 /etc/apache2/sites-available/000-default.conf
sudo echo "ServerName 192.168.60.10" >> /etc/apache2/sites-available/000-default.conf
cd /etc/apache2/sites-available
a2dissite 000-default.conf
cd /etc/apache2/sites-available
systemctl restart apache2