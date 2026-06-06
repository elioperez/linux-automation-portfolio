#!/bin/bash

####################################################
# Verify SSH Authentication
####################################################

while read -r server
do
    echo "======================================"
    echo "TESTING ${server}"
    echo "______________________________________"

    ssh -n -o BatchMode=yes elio@${server} hostname

    echo ""

done < servers.txt
