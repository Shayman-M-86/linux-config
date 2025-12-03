FROM ubuntu:latest

# Basic tools
RUN apt update && apt install -y \
    openssh-server \
    zsh \
    git \
    curl

# SSH setup
RUN mkdir /var/run/sshd
RUN echo 'root:password123' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Expose SSH
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
