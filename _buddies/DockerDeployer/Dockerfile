FROM ubuntu:latest

LABEL MAINTAINER="Nicolas Karg <docker@n13.org>"

# RUN apk add --no-cache --update \ 
#     bash \
#     docker \
#     docker-doc \
#     docker-bash-completion

RUN apt-get update 
# RUN apt-get --assume-yes upgrade
RUN apt-get install --assume-yes bash
RUN apt-get install --assume-yes docker-ce

COPY ./deploy.sh /scripts/deploy.sh
RUN chmod +x /scripts/deploy.sh

# RUN apk update

# # Start Docker Service
# # https://github.com/gliderlabs/docker-alpine/issues/183
# RUN apk add openrc --no-cache
# RUN rc-update add docker boot
# RUN service docker start

CMD ["bash"]
