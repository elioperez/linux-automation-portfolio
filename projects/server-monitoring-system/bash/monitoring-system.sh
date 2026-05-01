#!/bin/bash

while read server; do

echo "==============================================================="
echo "               SYSTEM MONITOR IN ${server}"
echo "==============================================================="
echo ""
echo " CPU Usage: "
ssh -n ${server} "
top -bn 1 | grep 'Cpu'
echo ""
echo " Memory Usage: "
free -h
echo ""
echo " Disk Usage: "
df -h
"
done < servers.txt

