FROM centos:centos6

RUN useradd vcp
RUN yum install -y wget tar git unzip
RUN yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel
RUN wget https://services.gradle.org/distributions/gradle-3.4.1-bin.zip
RUN mkdir /opt/gradle
RUN unzip -d /opt/gradle gradle-3.4.1-bin.zip
RUN rm -f gradle-3.4.1-bin.zip
ENV PATH $PATH:/opt/gradle/gradle-3.4.1/bin
RUN mkdir -p /usr/local/vc/
RUN rpm -Uvh http://ftp.riken.jp/Linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum -y install libaio

RUN mkdir /root/.ssh
COPY id_rsa /root/.ssh/id_rsa
RUN chmod -R 600 /root/.ssh
RUN ssh-keyscan github.com >> ~/.ssh/known_hosts
RUN git clone git@github.com:katsudonik/elasticsearch_java_sample.git /usr/local/vc/elasticsearch_java_sample
RUN cd /usr/local/vc/elasticsearch_java_sample; gradle build

EXPOSE 8080

COPY myapp.sh /tmp
RUN  chmod 755 /tmp/myapp.sh
ENTRYPOINT /tmp/myapp.sh && tail -f /dev/null
