#!/bin/bash

###################################################
# Configure Firewalld
###################################################

while read -r server
do
    echo "======================================"
    echo "OPNENING HTTP SERVICES ON ${server}"
    echo "______________________________________"

    ssh -n ${server} '
        sudo firewall-cmd --permanent --add-service=http
        sudo firewall-cmd --reload

    '
done < servers.txt