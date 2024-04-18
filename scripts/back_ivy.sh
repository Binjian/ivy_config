#!/usr/bin/env bash
 
BACKUP_PATH="/ore/n-ivy"
EXCLUDE_DIR='{"/vlt","/dpt","/ore","/btr","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"}'
SOURCE_DIR="/"
 
sudo rsync -aAXv ${SOURCE_DIR} --exclude=${EXCLUDE_DIR} ${BACKUP_PATH}
# sudo rsync -aAXv --no-links --info=skip0 ${SOURCE_DIR} --exclude=${EXCLUDE_DIR} ${BACKUP_PATH}
 
if [ $? -eq 0 ]; then
    echo "Backup completed successfully"
else
    echo "Some error occurred during backup"
fi
