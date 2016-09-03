# 创建 youpin-nginx 容器
    docker run -d --restart always --privileged=true -p 80:80 -p 443:443 --volumes-from youpin-data --link youpin-php:php --name youpin-nginx youpin/nginx
