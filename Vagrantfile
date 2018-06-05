# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "client01" do |client01|
    client01.vm.box = "centos/7"
    client01.vm.hostname = 'ansinble-node1'
    client01.vm.box_url = "centos/7"
    client01.vm.network :private_network, ip: "172.0.0.101"
    client01.vm.synced_folder "../data", "/vagrant_data", disabled: true
    client01.vm.provision "shell", path: "post_task_clients.sh"
    client01.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--cpus", 2]
      v.customize ["modifyvm", :id, "--name", "ansinble-node1"]
    end
  end
  
  config.vm.define "client02" do |client02|
    client02.vm.box = "centos/7"
    client02.vm.hostname = 'ansinble-node2'
    client02.vm.box_url = "centos/7"
    client02.vm.network :private_network, ip: "172.0.0.102"
    client02.vm.synced_folder "../data", "/vagrant_data", disabled: true
    client02.vm.provision "shell", path: "post_task_clients.sh"
    client02.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--cpus", 2]
      v.customize ["modifyvm", :id, "--name", "ansinble-node2"]
    end
  end
  
  config.vm.define "server" do |server|
    server.vm.box = "centos/7"
    server.vm.hostname = 'ansible-controller-node'
    server.vm.box_url = "centos/7"
    server.vm.network :private_network, ip: "172.0.0.100"
    server.vm.synced_folder "../data", "/vagrant_data", disabled: true
    server.vm.provision "shell", path: "post_task.sh"
    server.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--cpus", 4]
      v.customize ["modifyvm", :id, "--name", "ansible-controller-node"]
    end
  end
end
