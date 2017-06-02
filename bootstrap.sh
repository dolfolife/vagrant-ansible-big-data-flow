
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible sshpass -y
sudo ansible-galaxy install grycap.zookeeper davey-dev.cassandra
