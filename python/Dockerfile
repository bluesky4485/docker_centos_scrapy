FROM kolehank/centos
MAINTAINER kolehank ulifehacker@gmail.com

RUN yum -y install python-devel libffi-devel openssl-devel fontconfig

# pip 国内镜像
RUN mkdir ~/.pip
RUN echo "[global]" > ~/.pip/pip.conf \
    && echo "index-url = http://mirrors.aliyun.com/pypi/simple/" >> ~/.pip/pip.conf \
    && echo "[install]" >> ~/.pip/pip.conf \
    && echo "trusted-host=mirrors.aliyun.com" >> ~/.pip/pip.conf 

RUN pip install Scrapy
RUN pip install -U selenium
COPY entrypoint.sh /apps/
RUN chmod +x /apps/entrypoint.sh
RUN wget -O /apps/phantomjs.tar.bz2 https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
#COPY phantomjs.tar.gz /apps/
RUN tar jxvf /apps/phantomjs.tar.bz2
RUN mv phantomjs-2.1.1-linux-x86_64/bin/phantomjs /bin/
RUN chmod +x /bin/phantomjs

# 容器命令执行
WORKDIR /apps/scrapy/
VOLUME ["/apps/scrapy"]

ENTRYPOINT ["/apps/entrypoint.sh"]

CMD ["scrapy"]
