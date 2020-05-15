#!/bin/bash

DOLLAR='$' envsubst < /etc/nginx/conf.d/default.conf.tpl > /etc/nginx/conf.d/${PROJECT_NAME}.conf

nginx -g 'daemon off;'