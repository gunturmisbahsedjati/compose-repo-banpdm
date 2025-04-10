# FROM nginx:latest

FROM nginx:1.27.4

USER root

RUN apt update && apt install -y curl \
    && apt install -y nano \
    && apt install -y iputils-ping


COPY default.conf /etc/nginx/conf.d/default.conf


RUN service nginx restart