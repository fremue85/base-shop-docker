FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    openssh-client \
    php7.4 \
    php7.4-mbstring \
    php7.4-xml \
    jq \
    curl \
    unzip \
    zip \
    wget \
    && curl -sS http://getcomposer.org/installer | php -- --filename=composer \
    && chmod a+x composer \
    && mv composer /usr/local/bin/composer \
    && wget https://nodejs.org/download/release/v12.22.1/node-v12.22.1-linux-x64.tar.gz \
    && tar -C /usr/local --strip-components 1 -xzf node-v12.22.1-linux-x64.tar.gz \
    && node -v \
    && npm -v \
    && composer --version \
    && npm i -g gulp-cli
