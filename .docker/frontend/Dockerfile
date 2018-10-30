FROM php:7.2-apache
COPY frontend/ /var/www/html/

RUN docker-php-ext-install mysqli

COPY /.docker/frontend/vhost.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 9090