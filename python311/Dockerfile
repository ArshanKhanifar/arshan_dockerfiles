# Use a base image that includes a Linux distribution (e.g., Ubuntu)
FROM python:3.11

ENV ENVIRONMENT=docker

WORKDIR /home

RUN apt-get update
RUN apt-get install -y git bash curl wget gnupg make jq

# install gcloud cli
RUN curl https://sdk.cloud.google.com | bash

# my own system setup 💕
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ArshanKhanifar/arshans_system_setup/master/system_setup.sh)"

# Set the default shell to /bin/zsh
SHELL ["/bin/zsh", "-c"]
ENV SHELL=zsh
RUN sed -i 's|ZSH_THEME="robbyrussell"|ZSH_THEME="clean"|' /root/.zshrc

# install uv
ADD --chmod=755 https://astral.sh/uv/install.sh /install.sh
RUN /install.sh && rm /install.sh

# add gcloud to path
RUN echo 'export PATH=$PATH:/root/google-cloud-sdk/bin' >> /root/.zshrc

# install rye & config
RUN curl -sSf https://rye-up.com/get | RYE_INSTALL_OPTION="--yes" bash
RUN echo 'export PATH=$PATH:/root/.rye/shims' >> /root/.zshrc
RUN /root/.rye/shims/rye config --set-bool default.use-uv=true

RUN source /root/.zshrc

# entrypoint command
CMD ["/bin/zsh"]
