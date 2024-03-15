include .env

install:
	@$(MAKE) -s down
	@$(MAKE) -s docker-build
	@$(MAKE) -s up

up:
	@docker-compose -p oop-task up -d

down:
	@docker-compose -p oop-task down --remove-orphans

ps:
	@docker-compose -p oop-task ps

restart: down up

logs:
	@docker-compose -p oop-task logs -f

docker-build: \
	docker-build-php-fpm \
	docker-build-nginx

docker-build-php-fpm:
	@docker build --target=fpm \
	--build-arg USER=1000 \
	--build-arg GROUP=1000 \
	-t localhost/oop-task-php-fpm:latest -f ./docker/Dockerfile .

docker-build-nginx:
	@docker build --target=nginx \
	-t localhost/oop-task-nginx:latest -f ./docker/Dockerfile .