FROM debian:buster

RUN			apt-get update && apt-get -y upgrade && apt-get -y install \
			nginx \
			openssl	\
			vim

COPY		./nginx_setup.sh ./
COPY		./default		./tmp
COPY		./nginx.conf	./tmp/
EXPOSE		443

CMD			bash ./nginx_setup.sh
