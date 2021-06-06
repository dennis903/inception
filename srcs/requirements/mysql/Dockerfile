FROM 	debian:buster

RUN		apt-get update && apt-get -y upgrade \
		&& apt-get -y install \
		mariadb-server vim procps

COPY	./my.cnf	./tmp/
COPY	./mysql_setup.sh	./usr/sbin/
COPY	./cmd.sql	./
COPY	./wordpress.sql	./

RUN		mkdir -p /run/mysqld
RUN		chmod +x /usr/sbin/mysql_setup.sh
RUN		chmod 644 ./tmp/my.cnf
EXPOSE	3306

CMD		bash /usr/sbin/mysql_setup.sh
