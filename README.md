# server_maker

#### 介绍
服务器部署指南

#### 软件架构
软件架构说明


#### 安装教程

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

2.  xxxx
3.  xxxx

#### 使用说明

1.  xxxx
2.  xxxx
3.  xxxx

#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


#### 特技

1.  使用 Readme\_XXX.md 来支持不同的语言，例如 Readme\_en.md, Readme\_zh.md
2.  Gitee 官方博客 [blog.gitee.com](https://blog.gitee.com)
3.  你可以 [https://gitee.com/explore](https://gitee.com/explore) 这个地址来了解 Gitee 上的优秀开源项目
4.  [GVP](https://gitee.com/gvp) 全称是 Gitee 最有价值开源项目，是综合评定出的优秀开源项目
5.  Gitee 官方提供的使用手册 [https://gitee.com/help](https://gitee.com/help)
6.  Gitee 封面人物是一档用来展示 Gitee 会员风采的栏目 [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)
