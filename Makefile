start:
	cd srcs;	\
	docker-compose -f docker-compose.yml up -d --build

set:
	sudo chmod 777 /var/run/docker.sock
	sudo chmod 777 /etc/hosts
	sudo mkdir ~/data
	sudo mkdir	~/data/wp
	sudo mkdir	~/data/db
	echo "0.0.0.0	hyeolee.42.fr" >> /etc/hosts
down:
	cd srcs;	\
	docker-compose -f docker-compose.yml down --rmi all
clean:
	cd srcs;	\
	docker-compose -f docker-compose.yml down --rmi all
	sudo rm -rf	/home/hyeolee/data
fclean: clean
	
re: clean all

