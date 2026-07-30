#!/bin/sh
set -e

envsubst '${PORTAINER_HOSTNAME} ${PORTAINER_PORT}' \
    < /etc/nginx/templates/default.conf.template \
    > /etc/nginx/conf.d/default.conf

exec nginx -g 'daemon off;'
