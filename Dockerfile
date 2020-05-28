FROM alpine:3.11.6

RUN apk add --no-cache postgresql-client zstd

ADD script.sh /script.sh

ENTRYPOINT /script.sh