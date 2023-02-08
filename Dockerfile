FROM ubuntu


# USER root
RUN apt-get update \
  && apt install -y curl \
  && apt install -y gnupg \
  && apt install -y software-properties-common \
  && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
  && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" \
  && apt update \
  && apt install -y docker-ce \
  apt install python3-pip -y && \
  pip3 install --upgrade pip && \
  pip3 install ansible && \
  apt install openssh-server openssh-client -y && \
  apt install sshpass -y 
#   && usermod -aG docker ${USER}

# ENV PATH=$PATH:/usr/bin/docker

# CMD ["systemctl, start", "--version"]
