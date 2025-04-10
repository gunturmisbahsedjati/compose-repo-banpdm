# FROM nginx:latest

FROM nginx:1.27.4

USER root

RUN apt update && apt install -y curl

# COPY drive /usr/share/nginx/html
# COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# COPY index.html /usr/share/nginx/html/index.html

RUN service nginx restart