#!/usr/bin/env bash

rm -rf /etc/my.cnf.d
rm -rf /etc/my.cnf
cp -R /app/config/mysql/my.cnf.d /etc/my.cnf.d
cp /app/config/mysql/my.cnf /etc/my.cnf
service mariadb restart

mariadb -u root -e "CREATE USER 'root'@'%' IDENTIFIED BY 'root';"
mariadb -u root -e "CREATE DATABASE wordpress;"
mariadb -u root -e "GRANT ALL ON *.* TO 'root'@'%';"

tail -f /dev/null

