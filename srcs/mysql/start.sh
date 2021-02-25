#!/bin/bash
rc default
/etc/init.d/mariadb setup
/etc/init.d/mariadb start
#
mysql -uroot <<MYSQL_SCRIPT
CREATE DATABASE mydb;
CREATE USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON DATABASE* TO 'root';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

#mysql -uroot DB < DB.sql
#mysql -u root -p
/etc/init.d/mariadb stop
exec /usr/bin/mysqld_safe
#/bin/sh