# ansible

sudo yum -y install epel-release
sudo yum -y install ansible

ansible-playbook -i localhost middleware.yml -k -v
ansible-playbook -i localhost application.yml -k -v
