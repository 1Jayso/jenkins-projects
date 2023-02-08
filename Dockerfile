FROM ubuntu

RUN apt update && apt install vim -y
USER root
WORKDIR /app

COPY . /app/
ADD docker.sh /app/
RUN chmod +x /app/docker.sh && bash /app/docker.sh


 
#   && usermod -aG docker ${USER}

# ENV PATH=$PATH:/usr/bin/docker

# CMD ["systemctl, start", "--version"]
