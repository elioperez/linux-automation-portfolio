#!/bin/bash

BACKUP_SERVER="192.168.56.123"
REMOTE_DIR="/home/elio/backup-storage"

echo "==========================================="
echo "TRANSFERRING BACKUPS"
echo "-------------------------------------------"

#Create remote "backup-storage" dir
ssh -n elio@${BACKUP_SERVER} "mkdir -p ${REMOTE_DIR}"

scp ./backups/*.tar.gz elio@$BACKUP_SERVER:$REMOTE_DIR

echo "Backup transfer completed..."

ssh -n elio@${BACKUP_SERVER} "ls ${REMOTE_DIR}"