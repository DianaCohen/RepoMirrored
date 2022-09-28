#!/bin/bash
#add fix to exercise5-server2 here

sudo apt-get update
sudo apt-get -y install sshpass
sshpass -p vagrant ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@server1