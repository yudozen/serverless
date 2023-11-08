include .env

var:
	@echo IMAGE_NAME=${IMAGE_NAME}
	@echo CONTAINER_NAME=${CONTAINER_NAME}

build:
	docker compose build --progress=plain

build_nocache:
	docker compose build --progress=plain --no-cache

up: 
	docker compose up

down:
	docker compose down

sh:
	docker exec -it ${CONTAINER_NAME} /bin/bash

version:
	docker run --rm ${IMAGE_NAME} --version

login:
	docker login

push:
	docker push ${IMAGE_NAME}