docker_org := arshankhanifar
project_name := python311
tag := $(docker_org)/$(project_name):latest
SHELL := zsh
SHARED_DIRECTORY := "shared"

build:
	docker build -t $(tag) .

push:
	docker push $(tag)

# You may need to set up a docker builder, to do so run:
# docker buildx create --name mybuilder --bootstrap --use
# refer to https://docs.docker.com/build/building/multi-platform/#building-multi-platform-images for more info
build-multiplatform:
	docker buildx build --platform linux/amd64,linux/arm64 -t $(tag) --push .

publish: build
	docker push $(tag)

# one-liner:
# docker run -it --rm -v ~/.cache/suno/bark_v0:/root/.cache/suno/bark_v0 arshankhanifar/arshans-system-setup:latest /bin/zsh
run:
	docker run -it --rm --name $(project_name) \
		-v ./$(SHARED_DIRECTORY):/home/$(SHARED_DIRECTORY) \
 		$(tag) /bin/$(SHELL)
