FROM		debian:buster

LABEL		maintainer="<hyeolee.student.42seoull.kr>"

RUN			apt-get update && apt-get -y upgrade && apt-get -y install \
			nginx	\
			openssl	\
			php-fpm \
			wget \
			vim
RUN			wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN 		wget https://wordpress.org/latest.tar.gz
RUN			tar -xvf latest.tar.gz

COPY		./wp-php_setup.sh ./
COPY		./default ./tmp
COPY		./wp-config.php		./tmp

EXPOSE		9000 9000

CMD			bash wp-php_setup.sh