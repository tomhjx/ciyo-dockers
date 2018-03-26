FROM centos:7
MAINTAINER "Linhua Tang" <linhua@staff.weibo.com>

ENV VERSION 1.0.0
ENV OPENRESTY_VERSION 1.9.7.3
ENV OPENRESTY_PREFIX /usr/local
ENV NGINX_PREFIX /usr/local/nginx
ENV VAR_PREFIX /var/nginx
ENV LOG_PREFIX /var/nginx/logs
ENV CONF_PATH /usr/local/nginx/conf/nginx.conf
ENV PHP_VERSION 5.6.34
ENV TMP_PATH /tmp/uve_core_install
RUN yum install -y wget
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup;wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo;yum clean all && yum check-update;yum makecache;

COPY php5/ext $TMP_PATH

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;\
readonly NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1); \
echo "NPROC=$NPROC"; \
echo "Installing packages..."; \
yum install -y gcc gcc-c++ automake autoconf wget git bzip2 bzip2-devel libjpeg-devel libvpx-devel freetype-devel libpng-devel libmcrypt-devel libXpm-devel pcre pcre-devel openssl openssl-devel gd gd-devel libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel libxml2 libxml2-devel curl curl-devel libcurl libcurl-devel wget zlib zlib-devel; \
echo "Downloading openresty..."; \
curl -sSL http://openresty.org/download/openresty-${OPENRESTY_VERSION}.tar.gz | tar -xvz; \
cd openresty-${OPENRESTY_VERSION}; \
./configure \
    --prefix=$OPENRESTY_PREFIX \
    --user=gateway \
    --group=gateway \
    --http-client-body-temp-path=$VAR_PREFIX/client_body_temp \
    --http-proxy-temp-path=$VAR_PREFIX/proxy_temp \
    --http-log-path=$LOG_PREFIX/access.log \
    --error-log-path=$LOG_PREFIX/error.log \
    --pid-path=$VAR_PREFIX/nginx.pid \
    --lock-path=$VAR_PREFIX/nginx.lock \
    --conf-path=$CONF_PATH \
    --with-luajit \
    --with-ipv6 \
    --with-http_stub_status_module \
    --with-pcre \
    --with-http_realip_module \
    --with-http_ssl_module \
    --without-http_ssi_module \
    --without-http_userid_module \
    --without-http_uwsgi_module \
    --without-http_scgi_module \
    -j${NPROC}; \
 echo "Building..."; \
 make -j${NPROC}; \
 echo "Installing..."; \
 make install; \
echo "Add gateway user..."; \
useradd -M -s /sbin/nologin gateway; \
echo "Clean..."; \
cd ..; \
rm -rf openresty-${OPENRESTY_VERSION}; \
echo "Install PHP"; \
cd $TMP_PATH; \
tar xjf libmcrypt-2.5.8.tar.bz2; \
cd libmcrypt-2.5.8; \
./configure; \
make -j${NPROC}; \
make install; \
cd $TMP_PATH; \
echo "Install MHash..."; \
tar xjf mhash-0.9.9.9.tar.bz2; \
cd mhash-0.9.9.9; \
./configure; \
make -j${NPROC}; \
make install; \
cd $TMP_PATH; \
echo "Install php5..."; \
wget http://cn2.php.net/get/php-${PHP_VERSION}.tar.bz2/from/this/mirror -O php-${PHP_VERSION}.tar.bz2; \
tar xjf php-${PHP_VERSION}.tar.bz2; \
cd php-${PHP_VERSION}; \
echo "Configure PHP..."; \
./configure --prefix=/usr/local/php5 --enable-fpm --with-fpm-user=gateway --with-fpm-group=gateway --enable-phpdbg --enable-phpdbg-webhelper --with-openssl  --with-zlib --enable-calendar --enable-bcmath --with-bz2 --with-curl --with-gd --with-jpeg-dir --with-png-dir --with-freetype-dir --with-gettext --enable-mbstring --disable-mbregex --with-mcrypt --with-mysqli --enable-pcntl --enable-shmop --enable-sockets --enable-sysvsem --enable-shmop --with-mhash --with-mysql-sock --enable-pdo --with-pdo-mysql; \
echo "Compiling PHP..."; \
make -j${NPROC}; \
make install; \
cd $TMP_PATH; \
echo "Install Libmemcached..."; \
tar xzf libmemcached-1.0.18.tar.gz; \
cd libmemcached-1.0.18; \
./configure; \
make -j${NPROC}; \
make install; \
cd $TMP_PATH; \
echo "Intall PHP Memcached Extension..."; \
wget http://pecl.php.net/get/memcached-2.2.0.tgz; \
tar -zxvf memcached-2.2.0.tgz; \
cd memcached-2.2.0; \
/usr/local/php5/bin/phpize; \
./configure --enable-memcached --with-php-config=/usr/local/php5/bin/php-config --disable-memcached-sasl; \
make -j${NPROC}; \
make install; \
cd $TMP_PATH; \
echo "Install PHP Redis extension..."; \
git clone https://github.com/phpredis/phpredis.git; \
cd phpredis; \
/usr/local/php5/bin/phpize; \
./configure --enable-redis --with-php-config=/usr/local/php5/bin/php-config; \
make -j${NPROC}; \
make install; \

#composer
RUN curl -sS https://getcomposer.org/installer | /usr/local/php5/bin/php;mv composer.phar /usr/local/bin/composer

COPY php5/php.ini /usr/local/php5/lib/php.ini

RUN cd $TMP_PATH; \
echo "Install icu ..."; \
wget http://download.icu-project.org/files/icu4c/52.1/icu4c-52_1-src.tgz;\
tar xf icu4c-52_1-src.tgz;\
cd icu/source;\
mkdir /usr/local/icu;\
./configure --prefix=/usr/local/icu;\
make && make install;

RUN cd $TMP_PATH; \
echo "Install PHP intl extension..."; \
cd php-${PHP_VERSION}/ext/intl/; /usr/local/php5/bin/phpize; ./configure -h; ./configure --enable-intl --with-icu-dir=/usr/local/icu/ --with-php-config=/usr/local/php5/bin/php-config ;make && make install ;\

RUN cd $TMP_PATH; \
echo "Install PHP memcache extension..."; \
wget http://pecl.php.net/get/memcache-3.0.8.tgz -O memcache.tar.gz;\
mkdir -p memcache; \
tar -zxvf memcache.tar.gz -C memcache --strip-components=1;\
cd memcache;\
/usr/local/php5/bin/phpize;\
./configure --with-php-config=/usr/local/php5/bin/php-config;\
make && make install ;


RUN cd $TMP_PATH; \
echo "Install PHP igbinary extension..."; \
git clone https://github.com/igbinary/igbinary;\
cd igbinary;\
/usr/local/php5/bin/phpize;\
./configure CFLAGS="-O2 -g" --enable-igbinary --with-php-config=/usr/local/php5/bin/php-config;\
make && make install ;

RUN cd $TMP_PATH; \
echo "Install ImageMagick ..."; \
wget https://www.imagemagick.org/download/ImageMagick.tar.gz;\
tar xvzf ImageMagick.tar.gz; \
cd ImageMagick-*; \
./configure --prefix=/usr/local/imagemagick;make;make install;

RUN cd $TMP_PATH; \
echo "Install PHP imagick extension..."; \
wget http://pecl.php.net/get/imagick-3.4.3.tgz -O imagick.tar.gz;\
mkdir -p imagick; \
tar xvzf imagick.tar.gz -C imagick --strip-components=1;\
cd imagick;\
/usr/local/php5/bin/phpize;\
./configure --with-php-config=/usr/local/php5/bin/php-config --with-imagick=/usr/local/imagemagick;\
make;make install;

RUN cd $TMP_PATH; \
echo "Install libdatrie..."; \
wget 'ftp://linux.thai.net/pub/ThaiLinux/software/libthai/libdatrie-0.2.9.tar.xz' -O libdatrie.tar.gz; \
mkdir -p libdatrie; \
tar xvf libdatrie.tar.gz -C libdatrie --strip-components=1;\
cd libdatrie;\
./configure --prefix=/usr/local/libdatrie;make;make install;

RUN cd $TMP_PATH; \
echo "Install PHP trie-filter extension..."; \
git clone http://github.com/wulijun/php-ext-trie-filter;\
cd php-ext-trie-filter;\
/usr/local/php5/bin/phpize;\
./configure --with-php-config=/usr/local/php5/bin/php-config --with-trie_filter=/usr/local/libdatrie;\
make;make install;

# 安装 Xdebug
RUN cd $TMP_PATH; \
echo "Install PHP xdebug extension..."; \
wget 'https://xdebug.org/files/xdebug-2.4.0.tgz' -O xdebug.tar.gz;\
mkdir -p xdebug; \
tar xvf xdebug.tar.gz -C xdebug --strip-components=1;\
cd xdebug;\
/usr/local/php5/bin/phpize;\
./configure --with-php-config=/usr/local/php5/bin/php-config;\
make;make install;


RUN echo "Clean ..."; \
rm -rf $TMP_PATH; \
rm -rf /usr/local/php5/etc; \
echo "Done";

#Install supervisor
RUN yum install -y python-setuptools; \
    easy_install supervisor && \
    mkdir -p /var/{log/supervisor,run/{sshd,supervisord}}

ADD supervisord.php5.conf /etc/

#Add user
RUN set -x && \
    useradd -r -s /sbin/nologin -m -k no www

#Update nginx config
ADD nginx/nginx.conf /usr/local/nginx/conf/
COPY php5/etc /usr/local/php5/etc
COPY php5/extini /usr/local/php5/lib/extini

ADD php5/start.sh /start.php5.sh
RUN chmod +x /start.php5.sh
RUN echo "export PATH=$PATH:/usr/local/php5/bin" >> /etc/bashrc;
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

VOLUME [ "/sys/fs/cgroup", "/usr/local/nginx/conf", "/data0/nginx/htdocs", "/data0/nginx/logs" ]
ENTRYPOINT ["/start.php5.sh"]
