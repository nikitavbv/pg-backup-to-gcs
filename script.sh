source /google-cloud-sdk/path.bash.inc

touch ~/.pgpass
chmod 0600 ~/.pgpass
echo $POSTGRES_HOST:${POSTGRES_PORT:-5432}:$POSTGRES_DATABASE:$POSTGRES_USER:$POSTGRES_PASSWORD > ~/.pgpass

pg_dump -U $POSTGRES_USER -F t $POSTGRES_DATABASE -h $POSTGRES_HOST -p ${POSTGRES_PORT:-5432} > backup.sql

zstd -${COMPRESSION_LEVEL:-19} backup.sql
