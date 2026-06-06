#!/bin/bash

while read -r server
do
    echo "=============================="
    echo "DELETE TEMP FILES ON ${server}"
    echo "______________________________"

    ssh -n ${server} '
        sudo find /tmp -type f -mtime +3
        echo ""
        echo "Temporary files removed...!"
        echo ""
    '
done < servers.txt