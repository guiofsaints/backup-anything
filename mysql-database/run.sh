#!/usr/bin/env sh

BACKUP_FILENAME=./mysql-database/backup/$(date +'%Y-%m-%d').sql

check_var() {
    if test -z "$2"; then
        echo "Unknown \$$1 Variable" >&2
        exit 1
    fi
}

check_var 'MYSQL_HOST' "$MYSQL_HOST"
check_var 'MYSQL_PORT' "$MYSQL_PORT"
check_var 'MYSQL_USERNAME' "$MYSQL_USERNAME"
check_var 'MYSQL_PASSWORD' "$MYSQL_PASSWORD"

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
