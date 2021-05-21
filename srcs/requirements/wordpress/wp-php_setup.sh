#!/bin/bash

openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=Lee/CN=localhost" -keyout localhost.dev.key -out localhost.dev.crt
mv localhost.dev.crt etc/ssl/certs/
mv localhost.dev.key etc/ssl/private/
chmod 600 etc/ssl/certs/localhost.dev.crt etc/ssl/private/localhost.dev.key

cp ./tmp/default etc/nginx/sites-available/

mv wordpress /var/www/html/
chown -R www-data:www-data /var/www/html/wordpress

cp ./tmp/wp-config.php /var/www/html/wordpress/

service nginx start
service php7.3-fpm start

bash
