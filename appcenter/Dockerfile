FROM alpine

# Update and Upgrade the packages
RUN apk update
RUN apk upgrade

# Install NodeJS and NPM as package
RUN apk add --no-cache \
    nodejs \
    npm

# Install AppCenter-CLI as npm-package
RUN npm install -g \
    appcenter-cli