FROM mysql:5.6

MAINTAINER k12-MYSQL "wlfkongl@163.com"
RUN  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN usermod -u 1000 mysql && \
	chown mysql.mysql /var/run/mysqld/ && \
	chown mysql.mysql /var/lib/mysql/
COPY src.sql /home/src.sql
COPY init.sh /home/init.sh
EXPOSE 3306
VOLUME ["/opt"]
