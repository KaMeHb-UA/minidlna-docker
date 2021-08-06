FROM alpine:edge

RUN apk --no-cache add minidlna

COPY docker-entrypoint.sh /usr/bin/

EXPOSE 1900/udp
EXPOSE 8200

ENTRYPOINT [ "docker-entrypoint.sh" ]
