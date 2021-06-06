#!/bin/sh

cp -rp ./tmp/my.cnf   ./etc/mysql/my.cnf
service mysql start
chown -R mysql:mysql /var/lib/mysql
chown -R mysql:mysql /var/log/mysql
/usr/bin/mysql < wordpress.sql
/usr/bin/mysql < cmd.sql
kill -9 `ps -elf | grep sql | grep -v grep | awk '{print $4}'`
sleep 4
mysqld_safe --user=root