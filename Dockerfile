FROM node:alpine as builder

LABEL maintainer="Wuxi <wuxi@wufeng-network.com>"

RUN  \
    apk update && \
    apk add openjdk8 && \
    apk add gradle && \
    JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk && \
    export JAVA_HOME=$JAVA_HOME && \
    JRE_HOME=$JAVA_HOME/jre && \
    export JRE_HOME=$JRE_HOME && \
    CLASS_PATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib && \
    export CLASS_PATH=$CLASS_PATH && \
    PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin && \
    ANDROID_HOME=/home/sdk && \
    export ANDROID_HOME=$ANDROID_HOME && \
    PATH=$ANDROID_HOME/tools:$PATH && \
    PATH=$ANDROID_HOME/platform-tools:$PATH && \
    source /etc/profile