#!/bin/bash

while read -r server
do
  echo "==============================="
  echo "CLEANING LOGS ON ${server}"
  echo "_______________________________"

  ssh -n ${server} '
    sudo find /var/log -type f -name "*.log" -mtime +7 -delete
    echo ""
    echo "Old logs removed...!"
    echo ""
  '
done < servers.txt