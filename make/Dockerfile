FROM alpine:3.9

RUN apk update \
    apk upgrade

RUN apk add --no-cache \
    make

COPY Makefile /Makefile

CMD ["/bin/sh"]
