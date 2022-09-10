#!/usr/bin/env bash

docker-compose stop
rm -rf database/mysql
./docker/mysql/build.sh
docker-compose up