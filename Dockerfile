FROM ubuntu

RUN apt update && apt install vim -y
USER root
WORKDIR /opt

COPY . .
RUN chmod +x /opt/docker.sh && /opt/docker.sh
 
#   && usermod -aG docker ${USER}

# ENV PATH=$PATH:/usr/bin/docker

# CMD ["systemctl, start", "--version"]
