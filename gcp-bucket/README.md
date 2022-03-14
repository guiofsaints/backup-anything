# GCP Bucket Backup

Shell script to backup files from GCP bucket.

## Requirements

- [GSUtil](https://cloud.google.com/storage/docs/gsutil_install)
- Zip
- MacOS or Linux

## Configure

Step 1: After install gsutil, run this command to configure Google Cloud:

```bash
gcloud init
```

Step 2: rename .env.example to .env and edit:

```text
GCP_BUCKET_PATH=
```

## How to use

Run script:

```bash
./gcp-bucket/run.sh
```

Backup output: **gcp-bucket/backup/**
