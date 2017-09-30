FROM centos:centos6

#Install WGET
RUN yum install -y wget

 #Install tar
RUN yum install -y tar

RUN yum -y install java-1.7.0-openjdk-devel.x86_64

RUN rpm -Uvh http://ftp.riken.jp/Linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm

RUN yum -y install tomcat

RUN useradd vcp

RUN yum -y install libaio

EXPOSE 8080

COPY myapp.sh /tmp
RUN  chmod 755 /tmp/myapp.sh
ENTRYPOINT /tmp/myapp.sh && tail -f /dev/null