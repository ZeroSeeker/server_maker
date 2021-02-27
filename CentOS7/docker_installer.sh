#!/usr/bin/env bash
echo "正在 删除已经安装的docker ..."
sudo yum remove docker
sudo yum remove docker-client
sudo yum remove docker-client-latest
sudo yum remove docker-common
sudo yum remove docker-latest
sudo yum remove docker-latest-logrotate
sudo yum remove docker-logrotate
sudo yum remove docker-engine

echo "开始依赖"
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

echo "开始安装docker"
sudo yum install -y docker-ce docker-ce-cli containerd.io
echo "安装完成"

echo "启动docker"
sudo systemctl start docker

echo "测试运行"
sudo docker run hello-world
echo "显示镜像列表！"
docker images
