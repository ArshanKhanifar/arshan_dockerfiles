DOCKER_ACCOUNT := arshankhanifar
PROJECT_NAME := arshans-system-setup
TAG := $(docker_org)/$(PROJECT_NAME)
SHELL := zsh
SHARED_DIRECTORY := "shared"

build:
	docker build -t $(TAG) .

build-x86:
	depot build -t $(TAG) .

publish-x86: build-x86
	docker push $(TAG)

publish: build
	docker push $(TAG)

# one-liner:
# docker run -it --rm -v ~/.cache/suno/bark_v0:/root/.cache/suno/bark_v0 arshankhanifar/arshans-system-setup:latest /bin/zsh
run: build
	docker run -it --rm \
		-v ./$(SHARED_DIRECTORY):/home/$(SHARED_DIRECTORY) \
 		$(TAG) /bin/$(SHELL)
