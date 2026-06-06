#!/bin/bash

while read -r server
do
    echo "================================="
    echo "DEPLOYING KEY TO ${server}"
    echo "_________________________________"

    ssh-copy-id elio@${server}

    echo ""

done < servers.txt