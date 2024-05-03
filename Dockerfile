FROM ubuntu:24.04

ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

RUN sed -i 's/# deb/deb/g' /etc/apt/sources.list

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       bash-completion curl wget software-properties-common ca-certificates \
       nano git net-tools iputils-ping gpg build-essential automake autoconf \
       lsb-release sudo iproute2 dnsutils yq jq \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD tail -f /dev/null
