
FROM ubuntu:16.04
MAINTAINER Matt Haught <matt@haught.org>

RUN apt-get -q update && \
    apt-get -qy dist-upgrade && \
    apt-get install -qy \
    curl

RUN mkdir -p /opt/hdhomerun \
             /opt/hdhomerun/bin \
             /opt/hdhomerun/etc

RUN curl -O -o /opt/hdhomerun/bin/hdhomerun_record \
         -L https://download.silicondust.com/hdhomerun/hdhomerun_record_linux

ADD hdhomerun.conf /opt/hdhomerun/etc/

EXPOSE 65001/udp 65002

VOLUME ["/data"]

CMD ["/opt/hdhomerun/bin/hdhomerun_record foreground \
      --conf /opt/hdhomerun/etc/hdhomerun.conf"]