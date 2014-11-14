FROM ubuntu:14.04
MAINTAINER Knut Ahlers <knut@ahlers.me>

RUN useradd -m shoutcast && \
    mkdir /opt/shoutcast

WORKDIR /opt/shoutcast

RUN apt-get update && \
    apt-get install -y wget && \
    wget http://download.nullsoft.com/shoutcast/tools/sc_serv2_linux_x64-latest.tar.gz && \
    tar -xzf sc_serv2_linux_x64-latest.tar.gz

VOLUME ["/etc/shoutcast"]

EXPOSE 8000

USER shoutcast
ENTRYPOINT ["/opt/shoutcast/sc_serv", "/etc/shoutcast/shoutcast.conf"]