# ansible

1. sudo yum -y install epel-release
2. sudo yum -y install ansible git  
3. ssh-keyscan github.com >> ~/.ssh/known_hosts; git clone git@github.com:katsudonik/ansible.git; cd ansible

3. run below
* ansible-playbook -i localhost middleware.yml -k -v -t "common,mysql,python"
* ansible-playbook -i localhost application.yml -k -v
* ansible-playbook -i localhost cakephp.yml -k -v  
  http://cakephp:8080 (guest: 80, host:8080)  
  reference: https://soarcode.jp/posts/135, http://www.ryuzee.com/contents/blog/6108
* ansible-playbook -i localhost rails.yml -k -v  
  http://localhost:9300 (guest: 3000, host:9300)

## elastic search

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
jupyter notebook --generate-config
```

https://qiita.com/syo_cream/items/05553b41277523a131fd  
edit
```
c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.open_browser = False
c.NotebookApp.password = 'sha1:******'
```

run
```
jupyter notebook --ip=* --no-browser
```

## python2
```
source activate pyt2
pip install numpy tensorflow keras
jupyter notebook --ip=* --no-browser --allow-root
```

# run ansible from specify
```
ansible-playbook --start-at="[name]"
```

# upload file to google drive:
https://qiita.com/aviscaerulea/items/53123ce5b79c80e31a71
