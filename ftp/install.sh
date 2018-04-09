p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Monaco; color: #f4f4f4; background-color: #000000; background-color: rgba(0, 0, 0, 0.85)}
p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Monaco; color: #f4f4f4; background-color: #000000; background-color: rgba(0, 0, 0, 0.85); min-height: 16.0px}
span.s1 {font-variant-ligatures: no-common-ligatures}




echo -e "安装 pure-ftpd\n"


apt install -y pure-ftpd


systemctl enable  pure-ftpd






#添加用户


echo -e "增加用户 wwwftp\n"


useradd -d /dev/null -s /bin/false wwwftp






mkdir -pv /data/web


chown -R wwwftp:www-data /data/web






echo -e "增加 ftp 用户 xxxx, 请输入密码\n"


pure-pw useradd xxxx -u wwwftp -d /data/web


pure-pw list






echo -e "修改配置 pure-ftpd\n"


pure-pw mkdb


sudo ln -s /etc/pure-ftpd/pureftpd.passwd /etc/pureftpd.passwd


sudo ln -s /etc/pure-ftpd/pureftpd.pdb /etc/pureftpd.pdb


sudo ln -s /etc/pure-ftpd/conf/PureDB /etc/pure-ftpd/auth/PureDB






#让pureftpd支持本地账户登录


echo "yes" > /etc/pure-ftpd/conf/DontResolve


echo "*,25681" > /etc/pure-ftpd/conf/Bind


echo "UTF-8" > /etc/pure-ftpd/conf/FSCharset


echo "1000" > /etc/pure-ftpd/conf/MinUID


echo "yes" > /etc/pure-ftpd/conf/NoAnonymous


echo "no" > /etc/pure-ftpd/conf/PAMAuthentication


echo "/etc/pure-ftpd/pureftpd.pdb" > /etc/pure-ftpd/conf/PureDB


echo "no" > /etc/pure-ftpd/conf/UnixAuthentication






echo -e "启动 pure-ftpd 服务\n"


/etc/init.d/pure-ftpd restart