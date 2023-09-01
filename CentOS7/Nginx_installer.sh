#!/usr/bin/env bash

# 升级、安装必须模块
echo "正在安装 依赖 gcc ..."
yum -y install gcc

echo "正在安装 依赖 pcre pcre-devel ..."
yum install -y pcre pcre-devel

echo "正在安装 依赖 zlib zlib-devel ..."
yum install -y zlib zlib-devel

echo "正在安装 依赖 openssl openssl-devel ..."
yum install -y openssl openssl-devel

echo "正在下载 nginx-1.9.9.tar.gz ..."
wget http://nginx.org/download/nginx-1.9.9.tar.gz

echo "正在创建解压目录 /usr/local/nginx_install ..."
mkdir /usr/local/nginx_install

echo "正在解压至目录 /usr/local/nginx_install ..."
tar -zxvf nginx-1.9.9.tar.gz -C /usr/local/nginx_install

echo "正在切换至目录 /usr/local/nginx_install/nginx-1.9.9/ ..."
cd /usr/local/nginx_install/nginx-1.9.9/

echo "正在安装 ..."
./configure --prefix=/etc/nginx --with-http_stub_status_module --with-http_ssl_module
make
make install

echo "正在创建软连接 ..."
ln -s /etc/nginx/sbin/nginx /usr/bin/nginx

echo "正在检查已安装版本 ..."
nginx -v

echo "正在切回root目录 ..."
cd /root

echo ":) 完成 ..."

