#!/bin/bash
###################################################
# Verify Website Availability
###################################################

while read -r server
do 
    echo "========================================="
    echo CHECKING ${server}
    echo "_________________________________________"
    echo ""

    curl http://${server}

    echo ""
    echo ""

done < servers.txt
