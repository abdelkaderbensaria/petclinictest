GRANT ALL PRIVILEGES ON *.* TO 'root'@'172.17.0.2' IDENTIFIED BY 'password' WITH GRANT OPTION;
SET PASSWORD FOR 'root'@'172.17.0.2' = PASSWORD('root');
FLUSH PRIVILEGES;
