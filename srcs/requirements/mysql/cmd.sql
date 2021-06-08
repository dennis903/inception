CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'MYSQL_USER'@'%' identified by 'MYSQL_ROOT_PASSWORD';
GRANT ALL PRIVILEGES ON wordpress.* TO 'MYSQL_USER'@'%' identified by 'MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MYSQL_ROOT_PASSWORD';
FLUSH PRIVILEGES;
-- use mysql
-- update user set plugin='mysql_native_password' where user='root';