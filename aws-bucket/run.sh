#!/usr/bin/env sh

set -a

. ./aws-bucket/.env

BACKUP_DIR=./aws-bucket/backup/$(date +'%Y-%m-%d')

aws s3 cp --recursive \
    "s3://$AWS_S3_BUCKET" \
    "$BACKUP_DIR"
