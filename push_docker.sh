#!/usr/bin/env bash
# this tags and uploads an image to Docker hub

dockerpath="vdhinh/app"

# authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker login &&\
    docker image tag app $dockerpath

# push image
docker image push $dockerpath