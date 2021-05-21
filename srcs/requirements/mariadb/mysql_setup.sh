#!/bin/bash

cp ./tmp/my.cnf etc/

echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON *.* TO 'hyeolee'@'%' IDENTIFIED BY '1111' WITH GRANT OPTION" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

bash