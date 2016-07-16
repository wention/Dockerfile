# Dockerizing thunder xware
# xware version: Xware1.0.31 release date: 2014-08-27

FROM ubuntu:14.04.4

MAINTAINER wention <xuyi.828@gmail.com>

# change the default mirrors
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/' /etc/apt/sources.list

RUN rm /bin/sh && ln -s /bin/bash /bin/sh && \
    apt-get update && apt-get install -y zlib1g-dev lib32z1 lib32ncurses5 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    mkdir -p /opt/xware

COPY xware /opt/xware
COPY start.sh /opt/xware
VOLUME /opt/xware/TDDOWNLOAD

WORKDIR /opt/xware
RUN chmod +x start.sh && chmod +x /opt/xware/portal
CMD ["./start.sh"]

