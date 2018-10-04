FROM ubuntu:16.04

MAINTAINER alfin hidayat <https://github.com/kahidna>

RUN apt-get update && apt-get install -y apache2 mysql-server php7.2 phpmyadmin perl nano curl 

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 80 443 3306

CMD ['./entrypoint.sh']