CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'wordpress'@'%' identified by 'wordpress';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%' identified by 'wordpress' WITH GRANT OPTION;
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'wordpress';
FLUSH PRIVILEGES;
use mysql
update user set plugin='mysql_native_password' where user='root';