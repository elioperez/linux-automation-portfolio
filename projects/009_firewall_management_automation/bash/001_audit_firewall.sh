#!/bin/bash

####################################################
# Firewall Audit
####################################################

while read -r server
do
    echo "=========================================="
    echo "AUDIT FIREWALL: ${server}"
    echo "__________________________________________"

    ssh -n ${server} '
        sudo firewall-cmd --list-all
    '
    echo ""

done < servers.txt