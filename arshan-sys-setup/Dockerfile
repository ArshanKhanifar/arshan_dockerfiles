# Use a base image that includes a Linux distribution (e.g., Ubuntu)
FROM ubuntu:latest

# Install Git and Bash
RUN apt-get update && apt-get install -y git bash curl

ENV ENVIRONMENT=docker

RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ArshanKhanifar/arshans_system_setup/master/system_setup.sh)"

# Set the default command to launch Bash
CMD ["/bin/zsh"]

