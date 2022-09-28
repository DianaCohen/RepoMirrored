#!/bin/bash
#add fix to exercise4-server1 here

sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
sudo sed -i '$a\192.168.60.11  server2\' /etc/hosts
ssh-keygen -P '' -N '' -f "/home/vagrant/.ssh/id_rsa" -q