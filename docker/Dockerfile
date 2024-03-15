# PHP-FPM
FROM php:8.2-fpm-alpine3.17 as fpm

ARG USER='www-data'
ARG GROUP='www-data'

COPY ./docker/php/fpm/conf.d/extras.conf $PHP_INI_DIR/../php-fpm.d/extras.conf
COPY ./docker/php/fpm/conf.d/extras.ini $PHP_INI_DIR/conf.d/php-fpm.ini
COPY ./docker/php/php.ini-production $PHP_INI_DIR/php.ini

WORKDIR /var/www/html

USER ${USER}

CMD php-fpm
EXPOSE 9000

# NGINX
FROM nginx:1.24.0-alpine as nginx

COPY ./docker/nginx/templates /etc/nginx/templates

EXPOSE 80