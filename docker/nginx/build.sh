#!/usr/bin/env bash

# Remove Old Image
docker rm -f wordpress_nginx

# No Cache Build
docker build --no-cache -t wordpress_nginx -f docker/nginx/Dockerfile .

# Wordpress
mkdir www/ && cd www/
wget https://wordpress.org/wordpress-6.0.2.tar.gz && tar -xvzf wordpress-6.0.2.tar.gz
chown -R nginx:nginx /app/www/wordpress && chmod -R 775 /app/www/wordpress
