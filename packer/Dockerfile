FROM alpine:latest
LABEL MAINTAINER="Nicolas Karg <docker@n13.org>"

ENV PKG_VERSION=1.4.3
# ENV PACKER_SHA256SUM=c89367c7ccb50ca3fa10129bbbe89273fba0fa6a75b44e07692a32f92b1cbf55

# RUN apk add --update git bash wget openssl

ADD https://releases.hashicorp.com/packer/${PKG_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip ./
# ADD https://releases.hashicorp.com/packer/${PKG_VERSION}/packer_${PACKER_VERSION}_SHA256SUMS ./

# RUN sed -i '/.*linux_amd64.zip/!d' packer_${PKG_VERSION}_SHA256SUMS
# RUN sha256sum -cs packer_${PKG_VERSION}_SHA256SUMS
RUN unzip packer_${PKG_VERSION}_linux_amd64.zip -d /bin
RUN rm -f packer_${PKG_VERSION}_linux_amd64.zip

ENTRYPOINT ["/bin/packer"]