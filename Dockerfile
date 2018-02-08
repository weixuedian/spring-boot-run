# Version 1.0
FROM anapsix/alpine-java:8u144b01_jdk_unlimited
# 维护者信息
MAINTAINER weixuedian <weixuedian@qq.com>


# 容器启动命令,默认只有一个CMD

CMD ["/opt/entry.sh"]
