# ansible

1. sudo yum -y install epel-release
2. sudo yum -y install ansible

3. run below
* ansible-playbook -i localhost middleware.yml -k -v
* ansible-playbook -i localhost application.yml -k -v
