DOCKER_ACCOUNT := arshankhanifar
PROJECT_NAME := arshan-system-setup
TAG := $(DOCKER_ACCOUNT)/$(PROJECT_NAME)
SHELL := zsh

build:
	docker build -t $(TAG) .

publish:
	docker push $(TAG)

run:
	docker run -it --rm $(TAG) /bin/$(SHELL)

