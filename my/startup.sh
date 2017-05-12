#!/bin/bash
# This script starts the database server.
echo "Creating user $root for databases loaded from $url"
# Now the provided user credentials are added
/usr/sbin/mysqld &
sleep 5
echo "Creating user"
echo "CREATE USER '$root' IDENTIFIED BY '$root'" | mysql --default-character-set=utf8
echo "REVOKE ALL PRIVILEGES ON *.* FROM '$user'@'%'; FLUSH PRIVILEGES" | mysql --default-character-set=utf8
echo "GRANT SELECT ON *.* TO '$root'@'%'; FLUSH PRIVILEGES" | mysql --default-character-set=utf8
echo "finished"
echo "CREATE DATABASE wordpress" | mysql --default-character-set=utf8
 
if [ "$right" = "WRITE" ]; then
echo "adding write access"
echo "GRANT ALL PRIVILEGES ON *.* TO '$root'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql --default-character-set=utf8
fi
# And we restart the server to go operational
mysqladmin shutdown
echo "Starting MySQL Server"
/usr/sbin/mysqld
