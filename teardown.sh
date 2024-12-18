#!/bin/sh

# Clean out and remove all containers/images

docker-compose stop
docker-compose rm -fv
docker network rm wp-wordpress
rm -rf ./wordpress
rm -rf ./dbdata
rm -rf ./logs
