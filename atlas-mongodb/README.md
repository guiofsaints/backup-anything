# Atlas MongoDB Backup

Shell script to backup data from Atlas MongoDB.

## Requirements

- [MongoDB Database Tools](https://docs.mongodb.com/database-tools/installation/installation-macos/)
- MacOS or Linux

## Configure

After install MongoDB Database Tools, rename file mongodb.yaml.example to mongodb.yaml and write the URI:

```text
uri: mongodb+srv://<user>:<passwd>@<host>/<db>
```

## How to use

Run script:

```bash
./atlas-mongodb/run.sh
```

Backup output: **atlas-mongodb/backup/**
