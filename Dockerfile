FROM ubuntu:18.04

RUN apt-get update \
  && apt-get install -y curl \
  && apt-get install -y gnupg \
  && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
  && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" \
  && apt-get update \
  && apt-get install -y docker-ce \
  && usermod -aG docker ${USER}

ENV PATH=$PATH:/usr/bin/docker

CMD ["docker", "--version"]
