# DOCKER-VERSION 1.0.0

FROM ubuntu:14.04
MAINTAINER Rob Landers <landers.robert@gmail.com>

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y build-essential software-properties-common curl rsync dnsutils unzip inotify-tools && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV PATH /package/admin/s6-2.1.3.0/command:$PATH

RUN touch /etc/leapsecs.dat

ADD root /

ENTRYPOINT ["/package/admin/s6-2.1.3.0/command/s6-svscan","/etc/s6"]
CMD []