FROM alpine:latest

LABEL MAINTAINER="Nicolas Karg <docker@n13.org>"

ENV PKG_VERSION=4.4.19-r1

RUN apk add --no-cache --update \ 
    bash=${PKG_VERSION} \
    bash-doc=${PKG_VERSION}

CMD ["bash"]
