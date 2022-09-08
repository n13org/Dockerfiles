FROM alpine as fontdownloader

RUN apk update \
    apk upgrade

RUN apk add --no-cache \
    wget
WORKDIR /figlet-fonts
RUN wget ftp://ftp.figlet.org/pub/figlet/fonts/contributed/*

FROM alpine

RUN apk update \
    apk upgrade

RUN apk add --no-cache \
    figlet \
    figlet-doc
COPY --from=fontdownloader /figlet-fonts/* /usr/share/figlet/fonts/

WORKDIR /out
VOLUME /out

ENTRYPOINT ["figlet"]
