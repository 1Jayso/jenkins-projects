FROM ubuntu

RUN apt update && apt install vim -y
USER root
WORKDIR /app

COPY . .
RUN chmod +x /app/docker.sh; \
  ./docker.sh

 
#   && usermod -aG docker ${USER}

# ENV PATH=$PATH:/usr/bin/docker

# CMD ["systemctl, start", "--version"]
