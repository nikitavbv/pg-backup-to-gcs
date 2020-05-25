FROM alpine:3.11.6

RUN apk add --no-cache postgresql-client

ADD script.sh /script.sh

ENTRYPOINT /script.sh