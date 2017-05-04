FROM mysql

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE petclinic
ENV MYSQL_USER root
ENV MYSQL_PASSWORD root

# copy over the script that creates my tables and populates them
copy schema.sql tmp/
copy privileges.sql tmp/

# one line that took me hours to figure out
ONBUILD run mysql -uroot -p root petclinic < tmp/schema.sql && \
          mysql -uroot -p root petclinic < tmp/privileges.sql \

    
EXPOSE 3306


