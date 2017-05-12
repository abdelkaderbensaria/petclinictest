
FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE petclinic
ENV MYSQL_USER root


RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

# copy over the script that creates my tables and populates them
copy schema.sql /docker-entrypoint-initdb.d/
copy privileges.sql /docker-entrypoint-initdb.d/

# one line that took me hours to figure out

RUN chmod a+x /docker-entrypoint-initdb.d/schema.sql && chown root:root     /docker-entrypoint-initdb.d/schema.sql
RUN chmod a+x /docker-entrypoint-initdb.d/privileges.sql && chown root:root     /docker-entrypoint-initdb.d/privileges.sql    

EXPOSE 3306

CMD ["mysqld"]
