FROM nginx:1.18.0-alpine

LABEL MAINTAINER="alex.nogara@gmail.com"

ENV PROJECT_NAME=symfony
ENV PROJECT_DOCKER_DIR=/var/www/symfony
ENV PHP_SERVICE_NAME=symfony-php

COPY ./config/default.conf.tpl /etc/nginx/conf.d/default.conf.tpl
COPY ./scripts/start.sh /start.sh

RUN apk add curl vim && chmod 775 /start.sh

EXPOSE 80
EXPOSE 443

WORKDIR /var/www

ENTRYPOINT ["sh", "/start.sh"]