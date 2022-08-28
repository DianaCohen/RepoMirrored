#!/bin/bash
#add fix to exercise3 here

Error:
Forbidden
You don't have permission to access this resource.

Apache/2.4.41 (Ubuntu) Server at 192.168.60.10 Port 80

Fix:
I don't what exactly solved my problem, but i think one of these steps did:
It was: drwxr-x---  2 vagrant vagrant    4096 Aug 20 11:41 apache2
vagrant@server1:/var/log$ sudo chown -R vagrant:vagrant /var/log/apache2
vagrant@server1:/var/log$ sudo chmod -R 755 /var/log/apache2
It became: drwxr-xr-x  2 vagrant vagrant    4096 Aug 20 11:41 apache2

vagrant@server1:/$ cd /etc/apache2/sites-available
vagrant@server1:/etc/apache2/sites-available$ ls
000-default.conf  default-ssl.conf
vagrant@server1:/etc/apache2/sites-available$ ls -l
total 12
-rw-r--r-- 1 root root 1427 Aug 20 16:26 000-default.conf
-rw-r--r-- 1 root root 6338 Feb 23  2021 default-ssl.conf

vagrant@server1:/etc/apache2/sites-available$ sudo chown -R vagrant:vagrant /etc/apache2/sites-available/000-default.conf
vagrant@server1:/etc/apache2/sites-available$ sudo chmod -R 755 /etc/apache2/sites-available/000-default.conf
vagrant@server1:/etc/apache2/sites-available$ sudo chmod -R 755 /etc/apache2/sites-available/default-ssl.conf
vagrant@server1:/etc/apache2/sites-available$ ls -l
total 12
-rwxr-xr-x 1 vagrant vagrant 1427 Aug 20 16:26 000-default.conf
-rwxr-xr-x 1 root    root    6338 Feb 23  2021 default-ssl.conf
vagrant@server1:/etc/apache2/sites-available$ sudo mkdir /var/www/192.168.60.10
vagrant@server1:/etc/apache2/sites-available$ sudo nano 000-default.conf

"<VirtualHost *:80="">
        # The ServerName directive sets the request scheme, hostname and port that
        # the server uses to identify itself. This is used when creating
        # redirection URLs. In the context of virtual hosts, the ServerName
        # specifies what hostname must appear in the request's Host: header to
        # match this virtual host. For the default virtual host (this file) this
        # value is not decisive as it is used as a last resort host regardless.
        # However, you must set it for any further virtual host explicitly.
        ServerName 192.168.60.10

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html
        ServerAlias www.192.168.60.10
"

vagrant@server1:/etc/apache2/sites-available$ sudo a2dissite 000-default.conf
Site 000-default disabled.
To activate the new configuration, you need to run:
  systemctl reload apache2
vagrant@server1:/etc/apache2/sites-available$ sudo systemctl restart apache2

The message is: Hello world
