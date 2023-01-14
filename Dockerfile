FROM  ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
ENV MYSQL_ALLOW_EMPTY_PASSWORD=true

ADD schema/sakila-schema.sql /tmp/sakila-schema.sql
ADD schema/sakila-data.sql /tmp/sakila-data.sql

RUN apt-get update && apt-get -y install mysql-server vim

RUN service mysql restart \
    && mysql -u root < /tmp/sakila-schema.sql \
    && mysql -u root < /tmp/sakila-data.sql

ENTRYPOINT mysqld_safe --bind-address=0.0.0.0