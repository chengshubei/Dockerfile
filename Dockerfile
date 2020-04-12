FROM ubuntu:18.04
MAINTAINER chengshubei<1246691129@qq.com>
#使用当前服务器的时区文件覆盖镜像内时区(请确保当前服务器时区正确)
COPY ./localtime /etc/
RUN mkdir -p /usr/local/node
#通过官方tar.xz文件解压安装的nodejs可直接运行,无副作用,安装方法见仓库installNode
COPY ./node /usr/local/node
ENV PATH $PATH:/usr/local/node/bin