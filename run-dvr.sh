#!/bin/sh

curl -o /opt/hdhomerun/bin/hdhomerun_record \
    -SL https://download.silicondust.com/hdhomerun/hdhomerun_record_linux

exec /opt/hdhomerun/bin/hdhomerun_record foreground --conf /opt/hdhomerun/etc/hdhomerun.conf >> /proc/1/fd/1