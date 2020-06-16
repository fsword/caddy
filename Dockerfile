FROM alpine:3.12

RUN apk add --no-cache caddy tar ca-certificates ruby
RUN apk add --no-cache busybox-extras
RUN apk add --no-cache curl
COPY bootstrap.rb entrypoint.sh /

EXPOSE 80 443

ENV CONF_FILE "/etc/caddy/caddy.conf"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/caddy", "--log", "stdout", "-agree"]

