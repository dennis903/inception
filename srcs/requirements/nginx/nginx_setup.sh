#!/bin/bash

openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=Lee/CN=localhost" -keyout localhost.dev.key -out localhost.dev.crt
mv localhost.dev.crt etc/ssl/certs/
mv localhost.dev.key etc/ssl/private/
chmod 600 etc/ssl/certs/localhost.dev.crt etc/ssl/private/localhost.dev.key

cp ./tmp/default etc/nginx/sites-available/
echo "<!DOCTYPE html>" > /var/www/html/wordpress/index.html
echo "<html>" >> /var/www/html/wordpress/index.html
echo "<body>" >> /var/www/html/index.html
echo "<h1>I'm hyeolee hello</h1>" >> /var/www/html/wordpress/index.html
echo "</body>" >> /var/www/html/wordpress/index.html
echo "</html>" >> /var/www/html/wordpress/index.html
/usr/sbin/nginx -g "daemon off;"