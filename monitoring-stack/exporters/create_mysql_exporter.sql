-- Run in mysql to create user for mysqld_exporter
CREATE USER 'user'@'%' IDENTIFIED BY 'password';
GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'user'@'%';
FLUSH PRIVILEGES;

