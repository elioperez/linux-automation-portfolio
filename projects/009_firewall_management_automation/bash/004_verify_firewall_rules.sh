#!/bin/bash

####################################################
# Verify Firewall Rules
####################################################

while read -r server
do
    echo "=========================================="
    echo "VERIFYING: ${server}"
    echo "__________________________________________"

    ssh -n ${server} '
        sudo firewall-cmd --list-services
    '
done < servers.txt