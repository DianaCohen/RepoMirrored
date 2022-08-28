#!/bin/bash
#add fix to exercise2 here

Error:
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>403 Forbidden</title>
</head><body>
<h1>Forbidden</h1>
<p>You don't have permission to access this resource.</p>
<hr>
<address>Apache/2.4.41 (Ubuntu) Server at www.ascii-art.de Port 80</address>
</body></html>

Fix:
With IP address the traceroute was ok but with the name wasn't, ther is a problem with the name resolve.

vagrant@server1:~$ sudo apt install traceroute

vagrant@server1:/$ traceroute www.ascii-art.de
traceroute to www.ascii-art.de (127.0.0.1), 30 hops max, 60 byte packets
 1  localhost (127.0.0.1)  0.224 ms  0.024 ms  0.012 ms

vagrant@server1:/$ traceroute 5.35.226.130
traceroute to 5.35.226.130 (5.35.226.130), 30 hops max, 60 byte packets
 1  _gateway (10.0.2.2)  0.484 ms  0.237 ms  0.170 ms
 2  _gateway (10.0.2.2)  5.498 ms  7.298 ms  7.093 ms

vagrant@server1:/$ curl --resolve www.ascii-art.de:80:5.35.226.130 http://www.ascii-art.de/ascii/ab/007.txt

Or changing the hosts file: 
vagrant@server1:/etc$ sudo nano hosts
I replaced this line: "127.0.0.1 www.ascii-art.de", with this line: "5.35.226.130 www.ascii-art.de"

