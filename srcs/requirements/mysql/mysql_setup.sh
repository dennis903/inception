#!/bin/sh

cp -rp ./tmp/my.cnf   ./etc/mysql/my.cnf
service mysql start
chown -R mysql:mysql /var/lib/mysql
chown -R mysql:mysql /var/log/mysql
sed -i -e "s|MYSQL_DATABASE|$MYSQL_DATABASE|g" ./cmd.sql
sed -i -e "s|MYSQL_ROOT_PASSWORD|$MYSQL_ROOT_PASSWORD|g" ./cmd.sql
sed -i -e "s|MYSQL_USER|$MYSQL_USER|g" ./cmd.sql
sed -i -e "s|MYSQL_PASSWORD|$MYSQL_PASSWORD|g" ./cmd.sql
mysql -u root -p$MYSQL_ROOT_PASSWORD < cmd.sql
mysql -u root -p$MYSQL_ROOT_PASSWORD < wordpress.sql
ps -e | grep mysqld | awk '{print $1}' > a
kill -kill `cat a`
sleep 2
mysqld_safe --user=root