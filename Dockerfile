FROM ubuntu:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    nano \
    apache2 \
    php \
    php-gd \
    php-mbstring \
    php-zip \
    php-curl \
    php-imagick \
    php-xml \
    php-mysql \
    php-soap \
    jq \
    curl \
    unzip \
    zip \
    wget \
    && mkdir /var/www/log \
    && a2enmod rewrite \
    && curl -sS http://getcomposer.org/installer | php -- --filename=composer \
    && chmod a+x composer \
    && mv composer /usr/local/bin/composer \
    && wget https://nodejs.org/download/release/v11.15.0/node-v11.15.0-linux-x64.tar.gz \
    && tar -C /usr/local --strip-components 1 -xzf node-v11.15.0-linux-x64.tar.gz \
    && node -v \
    && npm -v \
    && composer --version \
    && npm i -g gulp-cli
