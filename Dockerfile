FROM alpine:3.5

RUN apk add --no-cache caddy

COPY Caddyfile.template entrypoint.sh /

EXPOSE 80 443
ENV SITE ""

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/caddy", "--conf", "/etc/Caddyfile", "--log", "stdout"]

