# ansible

1. sudo yum -y install epel-release
2. sudo yum -y install ansible git  
3. ssh-keyscan github.com >> ~/.ssh/known_hosts; git clone git@github.com:katsudonik/ansible.git; cd ansible

3. run below
* ansible-playbook -i localhost middleware.yml -k -v
* ansible-playbook -i localhost application.yml -k -v

### start elasticsearch: minimal:2060255232 Byte(2G)
/etc/init.d/elasticsearch start

### start kibana
/etc/init.d/kibana start

### set jdbc driver
src=ojdbc8.jar dest=/usr/share/logstash/bin/ojdbc8.jar

### start logstash
/usr/share/logstash/bin/logstash 

### stop firewalld (centos7)
systemctl stop firewalld

## elastic_docker
3. ansible-playbook -i localhost middleware.yml -k -v -t 'elastic_docker'
4. cd ~/docker; docker-compose up (if rebuild, run "docker-compose down --rmi all" once)




# jupyter

vagrantfile:
```
Vagrant.configure("2") do |config|
  # *snip*
  config.vm.network "forwarded_port", guest: 8888, host: 8888
  # *snip*
end
```

```
pip install jupyter
jupyter notebook --generate-config
```

edit
```
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False
```

run
```
jupyter notebook --ip=* --no-browser
```
