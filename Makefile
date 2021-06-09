all:
	docker-compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env up -d --build
set:
	sudo chmod 777 /var/run/docker.sock
	sudo chmod 777 /etc/hosts
	sudo mkdir ~/data
	sudo mkdir	~/data/wp
	sudo mkdir	~/data/db
	echo "0.0.0.0	hyeolee.42.fr" >> /etc/hosts
down:
	docker-compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env down --rmi all
clean:
	docker-compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env down --rmi all
	rm -rf	~/home/hyeolee/data
fclean: clean
	
re: clean all

