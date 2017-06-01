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

    config.vm.define "large-db" do |cassandra|
      cassandra.vm.box = "ubuntu/trusty64"
      cassandra.vm.hostname = "large-db"
      cassandra.vm.network "private_network", ip: "192.168.33.40"
      cassandra.vm.network "forwarded_port", guest: 7199, host: 7199
      cassandra.vm.network "forwarded_port", guest: 7000, host: 7000
      cassandra.vm.network "forwarded_port", guest: 7001, host: 7001
      cassandra.vm.network "forwarded_port", guest: 9160, host: 9160
      cassandra.vm.network "forwarded_port", guest: 9042, host: 9042
    end

    config.vm.define "fast-db" do |cassandra|
      cassandra.vm.box = "ubuntu/trusty64"
      cassandra.vm.hostname = "cassandra"
      cassandra.vm.network "private_network", ip: "192.168.33.40"
      cassandra.vm.network "forwarded_port", guest: 7199, host: 7199
      cassandra.vm.network "forwarded_port", guest: 7000, host: 7000
      cassandra.vm.network "forwarded_port", guest: 7001, host: 7001
      cassandra.vm.network "forwarded_port", guest: 9160, host: 9160
      cassandra.vm.network "forwarded_port", guest: 9042, host: 9042
    end
end
