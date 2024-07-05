build:
	docker build -t arshankhanifar/$(name):latest -f $(name).Dockerfile .

run:
	docker run --rm --name $(name) -it arshankhanifar/$(name):latest

push:
	docker push arshankhanifar/$(name):latest

build-multiplatform:
	docker buildx build --platform linux/amd64,linux/arm64 \
		-t arshankhanifar/$(name):latest -f $(name).Dockerfile . --push
