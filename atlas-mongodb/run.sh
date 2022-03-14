#!/bin/bash

BACKUP_DIR=./atlas-mongodb/backup/$(date +"%Y-%m-%d")
CONFIG_FILE=./atlas-mongodb/mongodb.yaml

[ -d $BACKUP_DIR ] || mkdir -p $BACKUP_DIR

echo "###################################"
echo "#          Backup Database        #"
echo "###################################"

# backup database
mongodump --config $CONFIG_FILE \
  --out $BACKUP_DIR

echo "###################################"
echo "Database backup finished :)"
