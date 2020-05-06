# Dockerfiles
Various Dockerfiles. I use them for "playground" and in real ci-cd-automation and DevOps topics. Most of the images are published to [n13.org on Docker Hub](https://cloud.docker.com/u/n13org/repository/list).

## Docker-Deployer

```Dockerfile
FROM alpine:latest

LABEL MAINTAINER="Nicolas Karg <docker@n13.org>"

ENV PKG_VERSION=4.4.19-r1

RUN apk add --no-cache --update bash docker docker-

CMD ["bash"]
```

## Start a Bash as Docker and mount a folder as workspace inside

```sh
docker run -it -v D:\n13.org\Dockerfiles\:/ws n13org/bash
```

## Deploy - Docker Images

```sh
./deploy.sh bash 4.4.19-r1 true
```