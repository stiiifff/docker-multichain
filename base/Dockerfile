FROM ubuntu:xenial
MAINTAINER Steve Degosserie "stiiifff@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
        && apt-get upgrade -q -y \
        && apt-get dist-upgrade -q -y \
        && apt-get install -q -y wget \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* \
        && cd /tmp \
        && wget http://www.multichain.com/download/multichain-latest.tar.gz \
        && tar -xvzf multichain-latest.tar.gz \
        && cd multichain-* \
        && mv multichaind multichain-cli multichain-util /usr/local/bin \
        && cd /tmp \
        && rm -Rf multichain*

CMD ["/bin/bash"]
