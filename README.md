# server_maker 
[![Fork me on Gitee](https://gitee.com/ZeroSeeker/server_maker/widgets/widget_3.svg)](https://gitee.com/ZeroSeeker/server_maker)

#### 介绍
服务器快速部署脚本
- CentOS7
  - installer_20220426.sh
    - 介绍
    ```text
    包含：
        卸载当前安装的python3版本
        安装：Python-3.8.6
        安装：Redis
    ```
  - 
- Ubuntu

#### 安装教程 Python3.8.6
1.  适用于linux环境下的Python安装
- Python3的安装：
    - 进入服务器/root目录
    - 拉取文件：git clone https://gitee.com/ZeroSeeker/server_maker.git
    - 进入文件夹：cd server_maker
    - 使用 chmod a+x Python_3.8.6_installer.sh 赋予脚本执行权限
    - 使用 ./Python_3.8.6_installer.sh 执行脚本
    - 如果在线下载python包太慢，可以将下载好的包上传再安装
- 依赖的安装：
    - 升级pip: pip3 install --upgrade pip -i https://mirrors.aliyun.com/pypi/simple
    - 在本地生成依赖文件：pip3 freeze > requirements.txt 
    - 上传到服务器：scp /Users/.../requirements.txt root@your_server_ip:/root
    - 安装：while read requirement; do pip3 install $requirement -i https://mirrors.aliyun.com/pypi/simple; done < requirements.txt # 报错后跳过继续执行

2.  Ubuntu中无法正确安装使用yum，改为使用apt-get
3.  注意不同系统的安装依赖有所不同，需要根据自己的系统选择安装脚本

#### 安装教程 Nginx
```shell
cd /root/server_maker/CentOS7
chmod a+x Nginx_installer.sh
./Nginx_installer.sh
```

#### 使用说明

1.  检查当前环境
- 检查是否安装了git
```shell script
[root@... CentOS7]# git --version
git version 1.8.3.1
```

- 安装git
```shell script
sudo yum -y install git
```

- 查看系统是否已经安装了Python3，并查看安装的版本：
```shell script
[root@... CentOS7]# python3 --version
Python 3.6.8
[root@... CentOS7]# pip3 --version
pip 9.0.3 from /usr/lib/python3.6/site-packages (python 3.6)
```

- 查看安装位置：
```shell script
[root@... CentOS7]# which python3
/usr/bin/python3
[root@... CentOS7]# which pip3
/usr/bin/pip3
```

- 卸载当前安装的python3：
```shell script
rpm -qa|grep python3|xargs rpm -ev --allmatches --nodeps  # 卸载pyhton3
whereis python3 |xargs rm -frv  # 删除所有残余文件
```

2.  使用示例
- 拉取项目
```shell
sudo git clone https://gitee.com/ZeroSeeker/server_maker.git
```
- 执行脚本
```shell
cd server_maker
cd [your os]
sudo chmod a+x Python_3.8.6_installer_huaweicloud.sh
sudo ./Python_3.8.6_installer_huaweicloud.sh
```

3.  没有yum
```shell
sudo apt-get install yum
```

#### 常见问题
- python3: error while loading shared libraries: libpython3.5m.so.1.0: cannot open shared object file:  
    解决：
    ```text
    错误原因:centos系统默认加载/usr/lib,/lib下面库文件，python默认安装到非此类文件夹。不过可以通过添加库配置信息

    步骤如下：
    
    cd /etc/ld.so.conf.d
    
    vi python3.conf
    
    编辑 添加库文件路径 /usr/local/python3/lib
    
    退出保存
    
    运行 :
    ldconfig
    ```

#### 快捷安装
```shell
# 下载服务器安装脚本
wget https://gitee.com/lazypy/server_maker/releases/download/20230914.1/make_my_server.sh

# 赋予脚本执行权限
sudo chmod a+x make_my_server.sh

# 执行脚本
./make_my_server.sh
```
