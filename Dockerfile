#final stage
FROM alpine:latest

MAINTAINER Gauransh Kumar <gauransh@datazip.io>

RUN apk update && apk add --no-cache syslog-ng

EXPOSE 514/tcp 514/udp

COPY syslog-ng.conf /etc/
CMD ["/usr/sbin/syslog-ng", "-F", "-f", "/etc/syslog-ng.conf"]
