build:
	make -C $(project) build

run:
	make -C $(project) run

push:
	make -C $(project) push

publish:
	make -C $(project) build-multiplatform