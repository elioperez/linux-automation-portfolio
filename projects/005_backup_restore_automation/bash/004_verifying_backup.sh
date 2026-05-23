#!/bin/bash

echo "VERIFYING BACKUP"

for file in ./backups/*.tar.gz
    do
        echo "Checking ${file}"
        
        tar -tzf ${file} > /dev/null

        if [ $? -eq 0 ]
        then 
            echo "Backup is OK..."
        else
            echo "Backup is CORRUPTED..."
        fi
        echo
    done