FROM php:7.2-apache
COPY backend/ /var/www/html/

RUN docker-php-ext-install mysqli

COPY /.docker/backend/vhost.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 9091