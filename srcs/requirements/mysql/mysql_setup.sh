#!/bin/sh

cp ./my.cnf ./etc/mysql/my.cnf

service mysql start

mysql < cmd.sql

kill -9 `ps -ef | grep sql | grep -v grep | awk '{print $2}'`

sleep 4
mysqld_safe --user=root