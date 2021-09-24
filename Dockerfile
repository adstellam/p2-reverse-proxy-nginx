# syntax=docker/dockerfile:1
FROM nginx:latest

# Copy nginx.conf to the /etc/nginx folder
COPY nginx.conf /etc/nginx/nginx.conf

# Copy default nginx configuration file to the /etc/nginx/sites-available folder and to the /etc/nginx/conf.d folder
COPY default /etc/nginx/sites-available/default
COPY default /etc/nginx/conf.d/default.conf

# Expose listening ports and declare volume mount paths.
EXPOSE 80 443 22080 22443
VOLUME ["/opt/angular/dist", "/etc/ssl", "/var/log/nginx"]

# Use ENTRYPOINT and CMD of the base nginx image.