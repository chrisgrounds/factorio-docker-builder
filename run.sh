#!/bin/bash

if [ -z "$FACTORIO_USERNAME" ]; then
    echo "Environment variable FACTORIO_USERNAME is not set."
    exit 1
fi

if [ -z "$FACTORIO_TOKEN" ]; then
    echo "Environment variable FACTORIO_TOKEN is not set."
    exit 1
fi

sed "s/{{FACTORIO_USERNAME}}/$FACTORIO_USERNAME/g; s/{{FACTORIO_TOKEN}}/$FACTORIO_TOKEN/g" ./factorio-template.yaml > ./factorio.yaml

docker compose -f factorio.yaml up -d
docker inspect --format="{{.Id}}" factorio
