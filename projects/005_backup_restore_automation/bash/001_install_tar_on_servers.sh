#!/bin/bash

while read -r server
 do
   echo "============================="
   echo "Inatlling tar on ${server}"
   echo "============================="
   ssh -n ${server} "
     sudo dnf install tar -y
   "
done < servers.txt
