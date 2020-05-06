FROM node:lts-alpine

# Update and Upgrade the packages
RUN apk update
RUN apk upgrade

# Install AppCenter-CLI as npm-package
RUN npm install -g \
    appcenter-cli
