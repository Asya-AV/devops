FROM alpine:3.18

RUN apk add --no-cache nginx && \
    mkdir -p /var/www/web && \
    mkdir -p /run/nginx && \
    adduser -D -g 'www' www && \
    chown -R www:www /var/lib/nginx && \
    chown -R www:www /var/www/web

COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /var/www/web

EXPOSE 8080

USER www

CMD ["nginx", "-g", "daemon off;"]