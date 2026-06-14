#!/bin/bash

####################################################
# Open Required Ports
####################################################

while read -r server
do
    echo "=========================================="
    echo "OPENING PORTS: ${server}"
    echo "__________________________________________"

    ssh -n ${server} '
        sudo firewall-cmd --permanent --add-service=http
        sudo firewall-cmd --permanent --add-service=https
        sudo firewall-cmd --reload
    '
done < servers.txt