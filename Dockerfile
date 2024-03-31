FROM php:8.3.4-cli-alpine

ENV LANG=C.UTF-8
ENV TERM=xterm-256color

COPY opcache-dev.ini /usr/local/etc/php/conf.d/opcache.ini

RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini" && \
    apk update && apk upgrade -a && apk add --no-cache bash curl zip unzip make && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    docker-php-source delete && apk del curl && \
    rm -rf /var/cache/apk/* && \
    addgroup -g 1000 php-tools && adduser -D -u 1000 -G php-tools php-tools && \
    docker-php-ext-install opcache

USER php-tools
WORKDIR /tools
COPY --chown=php-tools php-tools.sh /tools/

RUN chmod +x /tools/php-tools.sh

RUN composer global require rector/rector --dev && \
    composer global require squizlabs/php_codesniffer --dev && \
    composer global require vimeo/psalm --dev

ENTRYPOINT ["/tools/php-tools.sh"]
