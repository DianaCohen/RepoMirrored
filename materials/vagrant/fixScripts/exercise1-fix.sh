#!/bin/bash
#add fix to exercise1 here

Error:
curl: (7) Failed to connect to www.textfiles.com port 80: No route to host

Fix:
vagrant@server1:~$ sudo ip route show
default via 10.0.2.2 dev enp0s3 proto dhcp src 10.0.2.15 metric 100
10.0.2.0/24 dev enp0s3 proto kernel scope link src 10.0.2.15
10.0.2.2 dev enp0s3 proto dhcp scope link src 10.0.2.15 metric 100
192.168.60.0/24 dev enp0s8 proto kernel scope link src 192.168.60.10
208.86.224.90 dev enp0s8 scope link src 192.168.60.10
vagrant@server1:~$
vagrant@server1:~$ sudo ip route del 208.86.224.90 dev enp0s8 scope link src 192.168.60.10
vagrant@server1:~$
vagrant@server1:~$ sudo ip route show
default via 10.0.2.2 dev enp0s3 proto dhcp src 10.0.2.15 metric 100
10.0.2.0/24 dev enp0s3 proto kernel scope link src 10.0.2.15
10.0.2.2 dev enp0s3 proto dhcp scope link src 10.0.2.15 metric 100
192.168.60.0/24 dev enp0s8 proto kernel scope link src 192.168.60.10
vagrant@server1:~$
vagrant@server1:~$ curl http://www.textfiles.com/art/bnbascii.txt
