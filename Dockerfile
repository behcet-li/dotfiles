FROM ubuntu:17.04

RUN apt-get update -qq && \
      apt-get install --no-install-recommends -y git vim zsh curl ca-certificates && \
      apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /root
COPY . /root

ENTRYPOINT [ "/bin/bash" ]
CMD [ "bootstrap" ]
