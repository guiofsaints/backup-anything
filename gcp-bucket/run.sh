#!/bin/bash

source ./gcp-bucket/.env

# read from envfile
# GCP_BUCKET_PATH=

BACKUP_DIR=./gcp-bucket/backup/$(date +"%Y-%m-%d")
ZIP_NAME=images-$(date +"%Y-%m-%d").zip

[ -d $BACKUP_DIR ] || mkdir -p $BACKUP_DIR

echo "###################################"
echo "#           Backup Bucket         #"
echo "###################################"

# backup bucket
gsutil -m cp -r \
  "gs://$GCP_BUCKET_PATH" \
  ./$BACKUP_DIR

# zip bucket
cd $BACKUP_DIR
zip -r $ZIP_NAME ./images

echo "###################################"
echo "Bucket backup finished :)"
