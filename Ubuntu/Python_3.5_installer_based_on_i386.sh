#!/usr/bin/env bash
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install build-essential
sudo apt-get -y install checkinstall
sudo apt-get -y install openssl
sudo apt-get -y install libssl-dev
sudo apt-get -y install software-properties-common
sudo apt install -y python3-pip
sudo pip3 install requests -i https://mirrors.aliyun.com/pypi/simple