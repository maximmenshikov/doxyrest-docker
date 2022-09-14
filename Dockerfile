FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y liblua5.2 lua5.2 libexpat1 wget

RUN wget -O doxyrest.tar.xz https://github.com/vovkos/doxyrest/releases/download/doxyrest-2.1.3/doxyrest-2.1.3-linux-amd64.tar.xz && \
    tar xvf doxyrest.tar.xz --strip-components=1 -C /usr/local
