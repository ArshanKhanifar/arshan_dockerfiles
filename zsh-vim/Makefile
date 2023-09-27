DOCKER_ACCOUNT := arshankhanifar
PROJECT_NAME := arshans-system-setup
TAG := $(DOCKER_ACCOUNT)/$(PROJECT_NAME)
SHELL := zsh
SHARED_DIRECTORY := "shared"

build:
	docker build -t $(TAG) .

build-x86:
	docker buildx build --platform x86_64 -t $(TAG) .

publish-x86: build-x86
	docker push $(TAG)

publish: build
	docker push $(TAG)

run: build
	docker run -it --rm \
		-v ./$(SHARED_DIRECTORY):/home/$(SHARED_DIRECTORY) \
 		$(TAG) /bin/$(SHELL)
