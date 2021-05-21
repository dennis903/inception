FROM debian:buster

LABEL       maintainer="<hyeolee.student.42seoul.kr>"

RUN         apt-get update && apt-get -y upgrade && apt-get -y install \
            mariadb-server php-mysql

COPY        ./mysql_setup.sh ./
COPY        ./config.inc.php ./tmp
COPY        ./my.cnf ./tmp

EXPOSE      3306
CMD         bash mysql_setup.sh