FROM node:alpine as builder

LABEL maintainer="Wuxi <wuxi@wufeng-network.com>"

RUN  \
    apk update && \
    apk add openjdk8 && \
    apk add gradle && \
    export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk && \
    export JRE_HOME=$JAVA_HOME/jre && \
    export CLASS_PATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib && \
    export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin && \
    export ANDROID_HOME=/home/sdk && \
    export PATH=$ANDROID_HOME/tools:$PATH && \
    export PATH=$ANDROID_HOME/platform-tools:$PATH && \
    source /etc/profile