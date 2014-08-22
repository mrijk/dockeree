FROM centos

RUN yum -y install wget
RUN wget --no-check-certificate https://public-yum.oracle.com/public-yum-ol7.repo -O /etc/yum.repos.d/public-yum-ol7.repo
