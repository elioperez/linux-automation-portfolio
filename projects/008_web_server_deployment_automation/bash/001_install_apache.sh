#!/bin/bash
# Install apache service on multiple servers

while read -r server
do
    echo "===================================="
    echo "INSTALLING APACHE ON ${server}"
    echo "____________________________________"

    ssh -n ${server} '
        sudo dnf install httpd -y
        sudo systemctl enable httpd
        sudo systemctl start httpd
    '
    echo ""
done < servers.txt
