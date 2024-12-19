#!/bin/sh

# Clean out and remove all containers/images and data

docker-compose stop
docker-compose rm -fv
docker network rm app-network
rm -rf ./data-wordpress
rm -rf ./data-mysql
rm -rf ./logs
