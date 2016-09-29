.PHONY: all build-image publish-image
.DEFAULT_GOAL := all

DOCKER_REPO=thrawn01

build: build-image

build-image:
	docker build -t ${DOCKER_REPO}/mumble-server:latest .

run:
	@echo "Running Mumble on port 64738"
	-docker rm mumble-server
	docker run -p 64738:64738 --name mumble-server thrawn01/mumble-server:latest

publish:
	docker push ${DOCKER_REPO}/mumble-server:latest

all: build
