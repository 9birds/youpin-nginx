#
# Nginx Dockerfile
# version 1.0
#
FROM youpin/ubuntu
MAINTAINER Leo <jiangwenhua@yoyohr.com>

#Update nginx.list
COPY nginx.list /etc/apt/sources.list.d/nginx.list
COPY nginx_signing.key /root/nginx_signing.key

RUN apt-key add /root/nginx_signing.key \
    && apt-get update \
    && DEBIAN_FRONTEND="noninteractive" \
        apt-get install -y nginx \
    && rm -rf /var/lib/apt/lists/*
