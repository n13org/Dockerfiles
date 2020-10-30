FROM minlag/mermaid-cli:8.8.0

LABEL maintainer "Nicolas Karg <nicolas.karg@kargware.com>" \
      maintainer.org="KargWare - https://kargware.com"

WORKDIR /data

RUN yarn global add @mermaid-js/mermaid-cli@8.8.2-beta.8 --prefix /usr/local

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
