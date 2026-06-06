#!/bin/bash

while read -r server
do
    echo "============================================"
    echo "LARGEST FILES ON ${server}"
    echo "____________________________________________"

    ssh -n ${server} "
        sudo du -ah | sort -rh | head
    "
done < servers.txt