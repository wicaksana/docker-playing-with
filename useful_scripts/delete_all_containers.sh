#!/bin/bash

# deletes all containers
docker rm -f $(docker ps -q -a)

# deletes all images
docker rmi -f $(docker images -q)
