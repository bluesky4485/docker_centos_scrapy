FROM centos:latest
MAINTAINER kolehank ulifehacker@gmail.com

RUN yum -y install wget
# 换为国内镜像，以加速docker image制作速度，非中国镜内用户请注释掉下一行
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
RUN wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

# 增加最新版本nginx的repo
RUN echo "# nginx.repo" > /etc/yum.repos.d/nginx.repo \
    && echo "[nginx]" >> /etc/yum.repos.d/nginx.repo \
    && echo "name=nginx repo" >> /etc/yum.repos.d/nginx.repo \
    && echo "baseurl=http://nginx.org/packages/centos/7/x86_64$basearch/" >> /etc/yum.repos.d/nginx.repo \
    && echo "gpgcheck=0" >> /etc/yum.repos.d/nginx.repo \
    && echo "enabled=1" >> /etc/yum.repos.d/nginx.repo 

RUN yum clean all && yum makecache

RUN yum -y update

RUN yum groupinstall "Development Tools" -y

RUN mkdir /apps
RUN wget -O /apps/get-pip.py https://bootstrap.pypa.io/get-pip.py

RUN python /apps/get-pip.py

# 容器命令执行
cmd ["/bin/bash"]