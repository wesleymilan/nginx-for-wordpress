#!/usr/bin/env bash

rm -rf /etc/my.cnf.d
rm -rf /etc/my.cnf
cp -R /app/config/mysql/my.cnf.d /etc/my.cnf.d
cp /app/config/mysql/my.cnf /etc/my.cnf
service mariadb restart

sleep 5

mariadb -u root -e "CREATE USER 'root'@'%' IDENTIFIED BY 'root';" > /dev/null 2>&1
mariadb -u root -e "CREATE DATABASE wordpress;" > /dev/null 2>&1
mariadb -u root -e "GRANT ALL ON *.* TO 'root'@'%';" > /dev/null 2>&1

echo "MySQL started"

tail -f /dev/null

