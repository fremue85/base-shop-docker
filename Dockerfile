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
    bash \
    && mkdir /var/www/log \
    && a2enmod rewrite \
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash \
    && export NVM_DIR="$HOME/.nvm" \
    && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" \
    && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" \
    && nvm install v11.15.0 \
    && npm i -g gulp-cli \
    && node -v
