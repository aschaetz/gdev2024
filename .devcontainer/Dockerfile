FROM ubuntu:22.04

# Create non-root user TODO: Additional groups
ARG USERNAME=phymgr
ARG USER_UID=1000
ARG USER_GID=$USER_UID


# Install tools as root
RUN apt update -y &&  \
    apt install -y sshfs

# Create ubuntu user with sudo privileges
RUN useradd -ms /bin/bash $USERNAME && \
    usermod -aG sudo $USERNAME
# New added for disable sudo password
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER $USERNAME
WORKDIR /home/$USERNAME