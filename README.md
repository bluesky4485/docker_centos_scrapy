# 为什么要做这个配置包？

* windows安装scrapy实在是太郁闷，太多依赖安装不上
* 前一段时间采用Docker配置了php环境，但是alpine下scrapy可以使用但是phantomjs等浏览器没法运行，如果需要使用浏览器中间件的话，还是没办法得使用其他的linux版本
* 我希望用docker将其他window上面复杂的环境都搞一套，相对来说最熟的linux环境就是centos了，所以docker镜像也是用centos。

# 配置原则

* 默认采用中国大陆国内镜像，加速docker build的过程
* yum仓库和pip仓库都已经用国内的阿里云镜像

# 模块组成

* centos 最新版为基础包，目前是7
* python2.7&scrapy 1.3&phantomjs&selenium

> 其中phantomjs是直接使用的二进制编译好的包。

# 开始使用

* `git clone https://github.com/bluesky4485/docker_centos_scrapy.git`
* `cd docker_centos_scrapy && docker-compose build && docker-compose up -d`
* `docker run kolehank/python`
* `docker run -v path:/apps/scrapy kolehank/python startproject tutorial`

