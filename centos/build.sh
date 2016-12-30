#!/bin/bash

# 清除已有的
docker stop centos
docker rm centos
docker rmi kolehank/centos 

# 重新生成
docker build -t kolehank/centos ./
