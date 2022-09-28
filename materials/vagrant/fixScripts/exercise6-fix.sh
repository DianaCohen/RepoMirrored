#!/bin/bash
#add fix to exercise6-fix here

if ! [ "$#" -ge 2 ]; then
	echo "E: Wrong number of arguments. '$0' must get at least two arguments!"
	exit 1
fi

if  [ "$HOSTNAME" = "server1" ]
then
	dest=vagrant@server2
else
	dest=vagrant@server1
fi

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