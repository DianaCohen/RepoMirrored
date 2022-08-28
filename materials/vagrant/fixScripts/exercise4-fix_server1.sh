#!/bin/bash
#add fix to exercise4-server1 here

Error:
ssh: Could not resolve hostname server2: Temporary failure in name resolution

Fix:
sudo nano /etc/hosts
I have added this line to /etc/hosts file: 192.168.60.11   server2
