# MySQL Database Backup

Shell script to backup data from MySQL Database.

## Requirements

* `mysqldump`

## Get startd

```
git clone https://github.com/gui-text/backup-anything.git && cd backup-anything
```

## Configure

Step 1: Copy `.env.example` to `.env` and edit:

```text
MYSQL_HOST=
MYSQL_PORT=
MYSQL_USERNAME=
MYSQL_PASSWORD=
MYSQL_DATABASE=
```

## How to use

Run script:

```
./mysql-database/run.sh
```

Backup output: **mysql-database/backup/**
