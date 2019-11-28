FROM php-fpm:7.2

RUN apt-get update && apt-get install -Y \
    wget

RUN cd /tmp && wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --quiet
RUN mv /tmp/composer.phar /usr/local/bin/composer
