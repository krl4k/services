#!/bin/bash
rc default
/etc/init.d/mariadb setups
/etc/init.d/mariadb start

mysql -uroot <<MYSQL_SCRIPT
CREATE DATABASE DATABASE;
CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON DATABASE* TO 'admin';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

#mysql -uroot DB < DB.sql

/etc/init.d/mariadb stop
exec /usr/bin/mysqld_safe