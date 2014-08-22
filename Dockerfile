FROM centos:centos6

RUN yum -y install wget
RUN wget --no-check-certificate https://public-yum.oracle.com/public-yum-ol6.repo -O /etc/yum.repos.d/public-yum-ol6.repo
RUN wget --no-check-certificate https://public-yum.oracle.com/RPM-GPG-KEY-oracle-ol6 -O /etc/pki/rpm-gpg/RPM-GPG-KEY-oracle
RUN yum -y install oracle-rdbms-server-11gR2-preinstall
