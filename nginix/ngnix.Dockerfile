FROM registry.access.redhat.com/ubi8/nginx-124

ADD . /app

WORKDIR /app

EXPOSE 8080

CMD nginx -g "daemon off;"
