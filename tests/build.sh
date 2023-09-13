#!/usr/bin/env bash
rm -f docker-compose.yml
rm -f Dockerfile
mv docker-compose-new.yml docker-compose.yml
mv Dockerfile-new Dockerfile
docker buildx build . --output type=docker,name=elestio4test/growthbook:latest | docker load
