# Use a base image that includes a Linux distribution (e.g., Ubuntu)
FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y git bash curl wget gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs

RUN npm install -g pnpm

ENV ENVIRONMENT=docker

RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ArshanKhanifar/arshans_system_setup/master/system_setup.sh)"

WORKDIR /home

RUN sed -i 's|ZSH_THEME="robbyrussell"|ZSH_THEME="clean"|' /root/.zshrc

CMD ["/bin/zsh"]

