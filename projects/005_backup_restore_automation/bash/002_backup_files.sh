#!/bin/bash

BACKUP_DIR="./backups"
DATE=$(date +%F_%H-%M-%S)

mkdir -p "${BACKUP_DIR}"

while read -r server
do
    echo "================================"
    echo "Creating backup on ${server}"
    echo "================================"

    ssh -n ${server} "
        sudo tar -czf /tmp/${server}_backup_${DATE}.tar.gz /etc
    "

    scp "${server}:/tmp/${server}_backup_${DATE}.tar.gz" "${BACKUP_DIR}"

    echo "Backup copied from ${server}..."

done < servers.txt