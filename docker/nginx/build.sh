#!/usr/bin/env bash

# Remove Old Image
docker rm -f wordpress_nginx

# No Cache Build
docker build --no-cache -t wordpress_nginx -f docker/nginx/Dockerfile .
