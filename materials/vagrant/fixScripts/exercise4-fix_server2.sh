#!/bin/bash
#add fix to exercise4-server2 here

Error:
ssh: Could not resolve hostname server1: Temporary failure in name resolution

Fix:
sudo nano /etc/hosts
I have added this line to /etc/hosts file: 192.168.60.10   server1
