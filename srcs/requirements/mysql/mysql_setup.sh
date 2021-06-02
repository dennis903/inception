#!/bin/sh

cp ./my.cnf ./etc/mysql/my.cnf

mysql_install_db --user=root 
service mysql start

mysql < cmd.sql

mysqld -u root
