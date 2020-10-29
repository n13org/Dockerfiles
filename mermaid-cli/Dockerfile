FROM minlag/mermaid-cli:8.8.0

LABEL maintainer "Nicolas Karg <nicolas.karg@kargware.com>" \
      maintainer.org="KargWare - https://kargware.com"

WORKDIR /data

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]