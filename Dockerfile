FROM nginx:alpine

RUN apk add --no-cache bash gettext

COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY start-nginx.sh /start-nginx.sh
COPY remove_be.js /var/www/remove_be.js

RUN chmod +x /start-nginx.sh

ENTRYPOINT ["/start-nginx.sh"]
