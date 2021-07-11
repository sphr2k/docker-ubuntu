FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

#RUN sed -i 's|http://de.|http://|g' /etc/apt/sources.list
RUN apt-get update 
RUN apt-get install -y --no-install-recommends bash-completion curl wget software-properties-common ca-certificates nano git net-tools iputils-ping gpg build-essential automake autoconf

CMD tail -f /dev/null
