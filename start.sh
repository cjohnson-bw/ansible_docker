#!/bin/bash
# Set IDs to the current user for use in container
export UID=$(id -u)
export GID=$(id -g)

# Build, start, and attach to the container
docker-compose build
docker-compose up -d
docker attach ansible_docker

# Kill the container and clean up unneeded images
docker-compose down
docker image prune -f
