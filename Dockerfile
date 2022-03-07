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


cat <<EOT >> /etc/bash.bashrc

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
EOT

CMD tail -f /dev/null
