#!/usr/bin/env bash

# 升级、安装必须模块
yum -y update
yum -y groupinstall "Development tools"
yum -y install wget
yum -y install libffi-devel
yum -y install zlib-devel
yum -y install bzip2-devel
yum -y install openssl-devel
yum -y install ncurses-devel
yum -y install sqlite-devel
yum -y install readline-devel
yum -y install tk-devel
yum -y install gdbm-devel
yum -y install db4-devel
yum -y install libpcap-devel
yum -y install xz-devel

echo "正在下载 Python-3.8.6 ..."
wget https://mirrors.huaweicloud.com/python/3.8.6/Python-3.8.6.tar.xz  # 下载Python包
echo "正在解压 Python-3.8.6.tar.xz ..."
tar -xvJf Python-3.8.6.tar.xz  # 解压Python包
echo "进入解压后目录 Python-3.8.6 ..."
cd Python-3.8.6 || return  # 进入解压后的目录
echo "正在检测安装平台的目标特征的 ..."
./configure --prefix=/usr/local/python3 --enable-shared  # 检测你的安装平台的目标特征的
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
echo "正在添加库文件路径..."
echo '/usr/local/python3/lib' > /etc/ld.so.conf.d/python3.conf
echo "正在更新配置..."
ldconfig
echo ":) Python-3.8.6 配置完成！"