FROM alpine

MAINTAINER huangkaibin <huangkaibin@seedland.cc>

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk -U add python python-dev py-pip build-base && \
    rm -r /var/cache/apk/* && \
    mkdir /code

ADD . /
RUN test -f /requirements.txt && pip install -r /requirements.txt

WORKDIR /code