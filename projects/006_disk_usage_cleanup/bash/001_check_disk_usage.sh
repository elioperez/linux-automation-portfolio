#!/bin/bash

while read -r server
do
    echo "========================================="
    echo " DISK USAGE ON SERVER ${server}"
    echo "_________________________________________"

    ssh -n ${server} "
        df -h
        echo ""
        "
done < servers.txt
