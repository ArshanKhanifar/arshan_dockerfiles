DOCKER_ACCOUNT := arshankhanifar
PROJECT_NAME := arshans-system-setup
TAG := $(DOCKER_ACCOUNT)/$(PROJECT_NAME)
SHELL := zsh
SHARED_DIRECTORY := "shared"

build:
	docker build -t $(TAG) .

publish:
	docker push $(TAG)

run: build
	docker run -it --rm \
		-v ./$(SHARED_DIRECTORY):/home/$(SHARED_DIRECTORY) \
 		$(TAG) /bin/$(SHELL)
