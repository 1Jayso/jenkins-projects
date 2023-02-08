FROM ubuntu


USER root
WORKDIR /opt
COPY . /opt/
RUN chmod +x /opt/docker.sh && /opt/docker.sh && \
  pip3 install ansible && \
  apt install openssh-server openssh-client -y && \
  apt install sshpass -y 
#   && usermod -aG docker ${USER}

# ENV PATH=$PATH:/usr/bin/docker

# CMD ["systemctl, start", "--version"]
