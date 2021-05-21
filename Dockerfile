FROM node:alpine as builder

LABEL maintainer="Wuxi <wuxi@wufeng-network.com>"

RUN  \
     apk update && \
     apk add --no-cache zip && \