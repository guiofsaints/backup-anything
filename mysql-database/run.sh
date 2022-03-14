#!/usr/bin/env sh

BACKUP_FILENAME=./mysql-database/backup/$(date +'%Y-%m-%d').sql

mysqldump \
    --host "$MYSQL_HOST" \
    --port "$MYSQL_PORT" \
    --user "$MYSQL_USERNAME" \
    --password "$MYSQL_PASSWORD" \
    --triggers --routines \
    --no-create-db \
    --single-transaction \
    --result-file "$BACKUP_FILENAME" \
    --databases $*
