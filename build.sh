#!/bin/sh

# Docker build
docker build . -t bsjung/egov

# Docker push
docker push bsjung/egov:latest
