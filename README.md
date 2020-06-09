# pg-backup-to-gcs

[![Docker image build](https://img.shields.io/github/workflow/status/nikitavbv/pg-backup-to-gcs/Build%20docker%20image)][build]
[![Docker Pulls](https://img.shields.io/docker/pulls/prom/prometheus.svg?maxAge=604800)][hub]
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)][license]

Backup your postgres database to Google Cloud Storage.

## Usage

```
docker run --network database_network -e POSTGRES_PASSWORD=database_password -e POSTGRES_USER=user -e POSTGRES_HOST=database_host -e POSTGRES_DATABASE=database_name -e GOOGLE_CLOUD_KEY=$(cat service_account.json) -e BACKUP_GCS_BUCKET=bucket_name pg_backup
```

## Environment variables

| variable          | optional?             | description                                                                                                          |
|-------------------|-----------------------|----------------------------------------------------------------------------------------------------------------------|
| POSTGRES_HOST     | no                    | postgres database host                                                                                               |
| POSTGRES_PORT     | yes, 5432 by default  | postgres database port                                                                                               |
| POSTGRES_DATABASE | no                    | database name                                                                                                        |
| POSTGRES_USER     | no                    | username to login to database                                                                                        |
| POSTGRES_PASSWORD | no                    | password to login to database                                                                                        |
| COMPRESSION_LEVEL | yes, 19 by default    | compression level for sql dump. Possible values are between 0 (no compression) and 19 (max compression) inclusively. |
| GOOGLE_CLOUD_KEY  | no                    | service account key with access to gcs bucket                                                                        |
| BACKUP_GCS_BUCKET | no                    | gcs bucket to upload backups to                                                                                      |
| BACKUP_PREFIX     | yes, empty by default | prefix to path or name of backup file                                                                                |

[hub]: https://hub.docker.com/r/nikitavbv/pg-backup-to-gcs/
[build]: https://github.com/nikitavbv/pg-backup-to-gcs/actions
[license]: https://tldrlegal.com/license/mit-license