#!/bin/bash
#add fix to exercise5-server1 here

vagrant@server1:~/.ssh$ ssh-keygen
vagrant@server1:~/.ssh$ ssh-copy-id server2
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/vagrant/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
vagrant@server2's password:

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'server2'"
and check to make sure that only the key(s) you wanted were added.

vagrant@server1:~/.ssh$ cat id_rsa.pub

vagrant@server1:~/.ssh$ ssh server2
Last login: Wed Aug 24 09:07:42 2022 from 192.168.60.10
vagrant@server2:~$
vagrant@server2:~$ logout
Connection to server2 closed.
