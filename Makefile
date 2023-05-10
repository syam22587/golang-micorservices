BUILD_IMG := $(DOCKERMIRROR)golang:1.19.8-alpine3.17
BASE_IMG := $(DOCKERMIRROR)alpine:3.17
HTTP_PROXY := ${http_proxy}
HTTPS_PROXY := ${https_proxy}
DOCKER_BASENAME ?=${USER}
PROJECT_NAME := microservice-example

 


run-docker:
	docker build \
	--build-arg BUILD_IMG=${BUILD_IMG}  \
	--build-arg BASE_IMG=${BASE_IMG} \
	--build-arg VERSION=1.0.0 \
	--build-arg HTTP_PROXY=${http_proxy} \
	--build-arg HTTPS_PROXY=${https_proxy} \
	-t $(DOCKER_BASENAME)/$(PROJECT_NAME) .  
.PHONY: run-docker

docker:  run-docker 
