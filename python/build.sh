#!/bin/bash

# 清除已有的
docker stop python
docker rm python
docker rmi kolehank/python 

# 重新生成
docker build -t kolehank/python ./
