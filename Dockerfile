FROM ubuntu

ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

RUN sed -i 's/# deb/deb/g' /etc/apt/sources.list

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       bash-completion curl wget software-properties-common ca-certificates \
       nano git net-tools iputils-ping gpg build-essential automake autoconf \
       lsb-release sudo iproute2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

<<<<<<< HEAD

RUN echo ' \n\
if ! shopt -oq posix; then \n\
  if [ -f /usr/share/bash-completion/bash_completion ]; then \n\
    . /usr/share/bash-completion/bash_completion \n\
  elif [ -f /etc/bash_completion ]; then \n\
    . /etc/bash_completion \n\
  fi \n\
fi \n'  >> /etc/bash.bashrc

=======
>>>>>>> parent of 7e98e73 (Update Dockerfile)
CMD tail -f /dev/null
