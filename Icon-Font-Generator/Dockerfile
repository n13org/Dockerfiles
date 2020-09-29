#FROM node:lts-alpine
#FROM node:alpine
FROM node:14.11.0-alpine3.11
#FROM node

# Install Phython 3
RUN apk add --update --no-cache python3

# Install make
RUN apk add --update --no-cache make

# Install g++
RUN apk add --update --no-cache build-base

# Install icon-font-generator via npm
RUN npm install -g icon-font-generator@2.1.10

# Volomes
VOLUME /home/work
WORKDIR /home/work

# Create a script
COPY entrypoint.sh /entrypoint.sh
RUN chmod 0755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
#ENTRYPOINT ["/bin/sh", "-c", "/entrypoint.sh", "fn-svg-webfont", "./assets/fonts", "./_layouts", "./_sass"]

# The default args / parameter for entrypoint.sh
CMD ["fnt-svg-webfont", "./assets/fonts", "./_layouts", "./_sass"]
