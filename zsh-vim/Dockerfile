# Use a base image that includes a Linux distribution (e.g., Ubuntu)
FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y git bash curl wget gnupg make gcc g++ && \
    curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs

RUN npm install -g pnpm

ENV ENVIRONMENT=docker

# my own system setup 💕
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ArshanKhanifar/arshans_system_setup/master/system_setup.sh)"

# NVM
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash

# Set the default shell to /bin/zsh
SHELL ["/bin/zsh", "-c"]
ENV SHELL=zsh

RUN pnpm setup
RUN source /root/.zshrc && pnpm i -g turbo

WORKDIR /home

RUN sed -i 's|ZSH_THEME="robbyrussell"|ZSH_THEME="clean"|' /root/.zshrc

CMD ["/bin/zsh"]
