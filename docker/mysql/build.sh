#!/usr/bin/env bash

docker rm -f wordpress_mysql
docker build --no-cache -t wordpress_mysql -f docker/mysql/Dockerfile .
