.PHONY: build

DOCKER_REGISTRY=my-host
PROJECT=docker_network-backend
IMAGE=$(DOCKER_REGISTRY)/$(PROJECT)

build: 
	echo $(IMAGE)
	@docker build -t $(IMAGE) .
