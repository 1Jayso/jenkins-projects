FROM ubuntu

RUN apt-get update \
  && apt-get install -y docker
#   && usermod -aG docker ${USER}

ENV PATH=$PATH:/usr/bin/docker

CMD ["docker", "--version"]
