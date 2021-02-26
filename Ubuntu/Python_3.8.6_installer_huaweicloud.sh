#!/usr/bin/env bash

# 升级、安装必须模块
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install build-essential checkinstall
sudo apt-get -y install openssl
sudo apt-get -y install libssl-dev
sudo apt-get -y install libreadline-gplv2-dev libncursesw5-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

echo "正在下载 Python-3.8.6 ..."
wget https://mirrors.huaweicloud.com/python/3.8.6/Python-3.8.6.tar.xz  # 下载Python包
echo "正在解压 Python-3.8.6.tar.xz ..."
tar -xvJf Python-3.8.6.tar.xz  # 解压Python包
echo "进入解压后目录 Python-3.8.6 ..."
cd Python-3.8.6 || return  # 进入解压后的目录
echo "正在检测安装平台的目标特征的 ..."
./configure --prefix=/usr/local/python3  # 检测你的安装平台的目标特征的
echo "正在编译、安装 ..."
make && make install  # 编译、安装
echo "正在建立 Python3 的软连接..."
ln -s /usr/local/python3/bin/python3 /usr/bin/python3  # 建立软连接
echo "正在建立 pip3 的软连接..."
ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3  # 建立软连接
echo "返回上级目录 ..."
cd ..
echo "删除文件夹 Python-3.8.6 ..."
rm -rf Python-3.8.6  # 删除文件夹
echo "删除文件 Python-3.8.6.tar.xz ..."
rm -f Python-3.8.6.tar.xz  # 删除Python包
echo ":) Python-3.8.6 安装完成！"
