#!/bin/bash

####################################################
# Remove Unused Services
####################################################

while read -r server
do
    echo "=========================================="
    echo "REMOVING UNUSED PORTS: ${server}"
    echo "__________________________________________"

    ssh -n ${server} '
        sudo firewall-cmd --permanent --remove-service=cockpit
        sudo firewall-cmd --reload
    '

done < servers.txt