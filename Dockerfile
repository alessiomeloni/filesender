FROM php:8.2-fpm
RUN apt-get update && apt-get install -y \
    git unzip zlib1g-dev libzip-dev curl \
  && docker-php-ext-install zip pdo_mysql
WORKDIR /var/www/html
RUN git clone --branch master https://github.com/filesender/filesender.git . \
  && cd optional-dependencies/s3 \
  && curl -sS https://getcomposer.org/installer | php \
  && php composer.phar install
COPY config/config_custom.php config/config_custom.php
EXPOSE 80
