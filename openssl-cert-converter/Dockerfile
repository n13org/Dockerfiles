FROM alpine:latest

# Install OpenSSL
RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf "/var/cache/apk/*"

# Create and set mount volume
WORKDIR /tmp
VOLUME  /tmp

# Copy the entrypoint file and make it executeable
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
