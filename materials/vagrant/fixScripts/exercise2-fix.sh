#!/bin/bash
#add fix to exercise2 here

#curl --resolve www.ascii-art.de:80:5.35.226.130 http://www.ascii-art.de/ascii/ab/007.txt
sudo sed -i 's/127.0.0.1 www.ascii-art.de/5.35.226.130 www.ascii-art.de/g' /etc/hosts