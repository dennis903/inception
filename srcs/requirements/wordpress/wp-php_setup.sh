#!/bin/bash

chown -R www-data:www-data wordpress

mkdir -p var/www/html/wordpress
mv ./wordpress /var/www/html/
cp -rp ./wordpress/. /var/www/html/wordpress
mv ./tmp/www.conf /etc/php/7.3/fpm/pool.d/
sed -i -e "s|WORDPRESS_DB_NAME|$WORDPRESS_DB_NAME|g" ./tmp/wp-config.php
sed -i -e "s|WORDPRESS_DB_USER|$WORDPRESS_DB_USER|g" ./tmp/wp-config.php
sed -i -e "s|WORDPRESS_DB_PASSWORD|$WORDPRESS_DB_PASSWORD|g" ./tmp/wp-config.php
sed -i -e "s|WORDPRESS_DB_HOST|$WORDPRESS_DB_HOST|g" ./tmp/wp-config.php
cp -rp ./tmp/wp-config.php /var/www/html/wordpress/
service php7.3-fpm start
service php7.3-fpm stop
/usr/sbin/php-fpm7.3 -F