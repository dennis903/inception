#!/bin/sh

cp ./my.cnf ./etc/mysql/my.cnf

service mysql start

echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON *.* TO 'wordpress'@'%' IDENTIFIED BY 'wordpress' WITH GRANT OPTION" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

while : true

do
        sleep 1
done

bash