FROM alpine:3.11

RUN apk add --no-cache caddy tar wget ca-certificates ruby

COPY bootstrap.rb entrypoint.sh /

EXPOSE 80 443

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/caddy", "--log", "stdout"]

