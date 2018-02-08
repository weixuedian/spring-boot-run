# Version 1.0
FROM anapsix/alpine-java:8u144b01_jdk_unlimited
# 维护者信息
MAINTAINER weixuedian <weixuedian@qq.com>

ENV  ENTRY_FILE=/opt/entry.sh

COPY entry.sh ${ENTRY_FILE}

RUN chmod +x ${ENTRY_FILE}


# 容器启动命令,默认只有一个CMD
CMD ["/opt/entry.sh"]
