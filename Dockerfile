FROM debian:stable

LABEL maintainer Knut Ahlers <knut@ahlers.me>

RUN set -ex \
 && mkdir -p \
      /opt/shoutcast \
      /var/log/shoutcast

WORKDIR /opt/shoutcast

ADD "http://download.nullsoft.com/shoutcast/tools/sc_serv2_linux_x64-latest.tar.gz" /opt/shoutcast/
RUN set -ex \
 && tar -xzf sc_serv2_linux_x64-latest.tar.gz

VOLUME ["/etc/shoutcast"]

EXPOSE 8001 8002
CMD ["/opt/shoutcast/sc_serv", "/etc/shoutcast/shoutcast.conf"]
