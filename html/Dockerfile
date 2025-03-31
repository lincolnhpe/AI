FROM nginx

COPY . /usr/share/nginx/html

RUN mkdir -p /var/cache/nginx/client_temp /var/cache/nginx/proxy_temp /var/cache/nginx/fastcgi_temp /var/cache/nginx/uwsgi_temp /var/cache/nginx/scgi_temp \
    && chmod 700 /var/cache/nginx/*_temp \
    && chown -R nginx:nginx /var/cache/nginx

EXPOSE 80

