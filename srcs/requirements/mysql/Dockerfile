FROM debian:buster

RUN 	apt-get update && apt-get -y upgrade \
		&& apt-get -y install \
		mariadb-server	\
		vim
RUN		apt-get update && apt-get -y upgrade && apt-get -y install procps

RUN		mkdir -p /run/mysqld
COPY	./mysql_setup.sh /usr/sbin/mysql_setup.sh
RUN 	chmod +x /usr/sbin/mysql_setup.sh
COPY	./my.cnf ./
RUN		chmod 644 ./my.cnf
COPY	./cmd.sql ./
COPY	./wordpress.sql ./


EXPOSE 3306

ENTRYPOINT ["/usr/sbin/mysql_setup.sh"]
