#!/bin/bash

chown -R www-data:www-data wordpress

mkdir -p var/www/html/wordpress
mv ./wordpress /var/www/html/
cp -rp ./wordpress/. /var/www/html/wordpress
mv ./tmp/www.conf /etc/php/7.3/fpm/pool.d/
cp -rp ./tmp/wp-config.php /var/www/html/wordpress/

service php7.3-fpm start
service php7.3-fpm stop
/usr/sbin/php-fpm7.3 -F