#!/bin/bash
#add fix to exercise6-fix here

On server2:
vagrant@server2:~$ nano test
This is the first file
vagrant@server2:~$
vagrant@server2:~$ nano test2
This is the second file
vagrant@server2:~$
vagrant@server2:~$ nano test3
This is the third file
vagrant@server2:~$
vagrant@server2:~$ nano test.sh

#!/bin/bash

if ! [ "$#" -ge 2 ]; then
	echo "E: Wrong number of arguments. '$0' must get at least two arguments!"
	exit 1
fi

dest=vagrant@server1

cmd="scp -vr"
while true; do
	if [ "$#" -gt 1 ]; then
		cmd="$cmd $1"
	else
		cmd="$cmd $dest:$2"
		break
	fi
	shift
done
shift

$cmd 2>&1 | grep Transferred | sed -e 's/Transferred: sent //' -e 's/,.*//'

vagrant@server2:~$ ls
home  test  test.sh  test2  test3 ubuntu
vagrant@server2:~$
vagrant@server2:~$ ./test.sh test test2 test3
3400

On server1:
vagrant@server1:~$ ls
bakcup  test  test2
