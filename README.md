# ansible

1. sudo yum -y install epel-release
2. sudo yum -y install ansible

3. run below
* ansible-playbook -i localhost middleware.yml -k -v
* ansible-playbook -i localhost application.yml -k -v

### start elasticsearch
/etc/init.d/elasticsearch start

### start kibana
/etc/init.d/kibana start

### set jdbc driver
src=ojdbc8.jar dest=/usr/share/logstash/bin/ojdbc8.jar

### start logstash
service logstash start

