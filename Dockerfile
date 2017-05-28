FROM alpine:3.6
RUN apk add haproxy=1.7.5-r1 \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    --no-cache
VOLUME /etc/haproxy
STOPSIGNAL SIGUSR1
ENTRYPOINT ["haproxy", "-db"]
CMD ["-f", "/etc/haproxy"]
