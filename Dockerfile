# syntax=docker/dockerfile:1
FROM nginx:latest
COPY ./nginx.conf /etc/nginx/conf.d/default.conf 
COPY ./angular/dist/* /opt/angular/dist
