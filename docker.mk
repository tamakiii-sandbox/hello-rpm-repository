.PHONY: help build bash

IMAGE := tamakiii-sandbox/hello-rpm-repository

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: Dockerfile
	docker build -t $(IMAGE) .

bash: build
	docker run -it --rm $(IMAGE) $@
