# Docker for AppCenter-CLI

```Dockerfile
FROM alpine

RUN apk update
RUN apk upgrade

RUN npm add --update --no-cache \
    nodejs \
    npm

RUN npm add --no-cache \
    appcenter-cli
```
