FROM centos:7.6.1810
LABEL maintainer="whimthen@gmail.com"

# gcc for cgo
RUN yum update -y && yum install -y gcc-c++ wget

# git
RUN yum install -y git

ENV GOLANG_VERSION 1.12.5
ENV goRelArch linux-amd64

RUN set -eux; \
	\
	url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; \
	wget -O go.tgz "$url"; \
	tar -C /usr/local -xzf go.tgz; \
	rm go.tgz; \
	\
	export PATH="/usr/local/go/bin:$PATH"; \
	go version

ENV PATH /usr/local/go/bin:$PATH
