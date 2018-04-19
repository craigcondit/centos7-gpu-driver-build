FROM centos:7.4.1708
MAINTAINER ccondit@randomcoder.com

RUN \	
	yum clean metadata && \
	yum -y upgrade && \
	yum -y install epel-release && \
	yum clean metadata && \
	yum -y install kernel-devel-3.10.0-693.21.1.el7.x86_64 kernel-3.10.0-693.21.1.el7.x86_64 make which tar rpm-build yum-utils gcc gcc-c++ createrepo jq dkms && \
	yum clean all

