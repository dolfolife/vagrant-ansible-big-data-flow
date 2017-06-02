# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.define "ansible-server" do |mafdet|
      mafdet.vm.box = "ubuntu/trusty64"
      mafdet.vm.hostname = "ansible-server"
      mafdet.vm.network "private_network", ip: "192.168.33.10"
      mafdet.vm.provision :shell, path: "bootstrap.sh"
      config.vm.synced_folder "ansible-server/", "/home/vagrant/provision"
    end

    config.vm.define "zookeeper" do |zookeeper|
      zookeeper.vm.box = "ubuntu/trusty64"
      zookeeper.vm.hostname = "zookeeper"
      zookeeper.vm.network "private_network", ip: "192.168.33.20"
      zookeeper.vm.network "forwarded_port", guest: 2181, host: 2181
    end

    config.vm.define "kafka" do |kafka|
      kafka.vm.box = "ubuntu/trusty64"
      kafka.vm.hostname = "kafka"
      kafka.vm.network "private_network", ip: "192.168.33.30"
      kafka.vm.network "forwarded_port", guest: 9092, host: 9092
    end

    config.vm.define "large-db" do |large_db|
      large_db.vm.box = "ubuntu/trusty64"
      large_db.vm.hostname = "large-db"
      large_db.vm.network "private_network", ip: "192.168.33.40"
    end

    config.vm.define "fast-db" do |fast_db|
      fast_db.vm.box = "ubuntu/trusty64"
      fast_db.vm.hostname = "fast-db"
      fast_db.vm.network "private_network", ip: "192.168.33.50"
    end
end
