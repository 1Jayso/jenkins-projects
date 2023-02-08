FROM ubuntu

RUN pull 23.0.0-cli-alpine3.17
#   && usermod -aG docker ${USER}

ENV PATH=$PATH:/usr/bin/docker

CMD ["docker", "--version"]
