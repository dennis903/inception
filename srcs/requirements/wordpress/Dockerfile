FROM debian:buster

LABEL   maintainer="<hyeolee.student.42seoul.kr>"

RUN 	apt-get update && apt-get -y upgrade && apt-get -y install \
		php-fpm \
		wget \
		vim
RUN 		wget https://wordpress.org/latest.tar.gz
RUN			tar -xvf latest.tar.gz
RUN			rm latest.tar.gz

COPY		./wp-php_setup.sh ./
COPY		./wp-config.php		./tmp
COPY		./www.conf		./tmp

EXPOSE		9000

CMD			bash wp-php_setup.sh