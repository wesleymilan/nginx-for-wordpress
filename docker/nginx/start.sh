#!/usr/bin/env bash

# Wordpress
if [ ! -d "/app/www/wordpress" ]; then
  if [ ! -d "/app/www" ]; then
    mkdir /app/www
  fi
  echo "Downloading Wordpress..."
  cd /app/www/
  wget https://wordpress.org/wordpress-6.0.2.tar.gz
  tar -xvzf wordpress-6.0.2.tar.gz
  chown -R nginx:nginx /app/www/wordpress && chmod -R 775 /app/www/wordpress
  echo "Wordpress created"
else
  echo "Wordpress OK"
fi
rm -rf /etc/nginx
cp -R /app/config/nginx /etc
service nginx restart

rm -rf /etc/php8
cp -R /app/config/php8 /etc/php8
service php-fpm8 restart

# Keep Container Running
tail -f /dev/null
