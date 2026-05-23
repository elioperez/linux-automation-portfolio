#!/bin/bash

RESTORE_DIR="./restored"

mkdir -p ${RESTORE_DIR}

echo "RESTORING BACKUP"

for file in ./backups/*.tar.gz
    do
        echo "Restoring ${file}"
        
        tar -xzf ${file} -C ${RESTORE_DIR}

        echo "Restore completes for ${file} ...!"
    done