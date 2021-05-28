#!/bin/bash

mv wordpress /var/www/html/
chown -R www-data:www-data /var/www/html/wordpress

cp ./tmp/wp-config.php /var/www/html/wordpress/
service php7.3-fpm start

while : true

do
        sleep 1
done

bash
