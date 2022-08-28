#!/bin/bash
#add fix to exercise5-server2 here

vagrant@server2:~/.ssh$ ssh-keygen
vagrant@server2:~$ ssh-copy-id server1
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/vagrant/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
vagrant@server1's password:

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'server1'"
and check to make sure that only the key(s) you wanted were added.

vagrant@server:~/.ssh$ cat id_rsa.pub

vagrant@server2:~$ ssh server1
Last login: Mon Aug 22 17:18:58 2022 from 10.0.2.2
vagrant@server1:~$ logout
Connection to server1 closed.
vagrant@server2:~$
