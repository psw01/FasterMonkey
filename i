#!/bin/bash    
echo `ifconfig tun0 2>/dev/null|awk '/inet / {print $2}'` > /tmp/ip.txt
echo `ifconfig tun0 2>/dev/null|awk '/inet / {print $2}'`
echo `ifconfig eth0 2>/dev/null|awk '/inet / {print $2}'`
