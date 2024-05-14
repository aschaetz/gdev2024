FROM ubuntu:22.04

# Create non-root user TODO: Additional groups
ARG USERNAME=phymgr
ARG USER_UID=1000
ARG USER_GID=$USER_UID


# Install tools as root
RUN apt update -y &&  \
    apt install sshfs -y && \
    apt install sudo -y

# Create user with sudo privileges
RUN useradd -ms /bin/bash $USERNAME && \
    usermod -aG sudo $USERNAME
# Disable sudo password
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN mkdir -p /phymgr/.ssh && \
#    chmod 0700 /phymgr/.ssh
COPY keys/id_rsa /home/phymgr/.ssh/id_rsa
#COPY ./keys/known_hosts /home/phymgr/.ssh/

RUN chown -R user:phymgr /home/phymgr/.ssh
RUN echo "Host remotehost\n\tStrictHostKeyChecking no\n" >> /home/phymgr/.ssh/config

USER $USERNAME
WORKDIR /home/$USERNAME