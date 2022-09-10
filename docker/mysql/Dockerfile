# our base image
FROM alpine:latest

# specify the port number the container should expose
EXPOSE 3306

# Installing Services
RUN apk update
RUN apk add bash
RUN apk add openrc
RUN mkdir /run/openrc && touch /run/openrc/softlevel
RUN rc-status

RUN apk add mariadb
RUN apk add mariadb-client
RUN /etc/init.d/mariadb setup
