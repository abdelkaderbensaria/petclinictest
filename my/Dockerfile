FROM ubuntu:latest
MAINTAINER Bibin Wilson
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install mysql-client mysql-server curl
# Changes the bind address to 0.0.0.0 on my.cnf file to get remote access
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
ENV user root
ENV password root
ENV access WRITE
ADD ./startup.sh /usr/local/bin/start.sh
copy schema.sql /usr/local/bin
copy privileges.sql /usr/local/bin
RUN chmod +x /usr/local/bin/startup.sh
EXPOSE 3306
ENTRYPOINT /usr/sbin/mysqld
