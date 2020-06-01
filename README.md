# pg-backup-to-gcs
Backup your postgres database to Google Cloud Storage.

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