# syntax=docker/dockerfile:1
FROM nginx:latest
COPY ./nginx.conf /etc/nginx/conf.d/default.conf 
COPY ./angular/dist/* /opt/angular/dist/
EXPOSE 80/tcp
EXPOSE 443/tcp
VOLUME /etc/ssl
