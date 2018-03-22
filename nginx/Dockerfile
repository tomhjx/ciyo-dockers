FROM nginx:1.10.1

MAINTAINER tomhjx-NGINX "tom_hejiaxi@163.com"


ADD  nginx.conf      /etc/nginx/nginx.conf
ADD  locations.conf      /etc/nginx/locations.conf
ADD  sites-enabled/*    /etc/nginx/servers/
RUN  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
EXPOSE 80
VOLUME ["/data1"]

