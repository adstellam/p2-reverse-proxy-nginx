# syntax=docker/dockerfile:1
FROM nginx:latest

# Copy default nginx configuration file to the /etc/nginx/sites-available folder and to the /etc/nginx/conf.d folder
COPY default /etc/nginx/sites-available/default
COPY default /etc/nginx/conf.d/default.conf

# Expose listening ports and declare volume mount paths.
EXPOSE 80/tcp
EXPOSE 443/tcp
EXPOSE 22080/tcp
EXPOSE 22443/tcp
VOLUME ["/opt/angular/dist", "/etc/ssl", "/var/log/nginx"]

# Use ENTRYPOINT and CMD of the base nginx image.