# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "server" do |server|
    server.vm.box = "centos/7"
    server.vm.hostname = 'ansible-controller-node'
    server.vm.box_url = "centos/7"
    server.vm.network :private_network, ip: "172.0.0.100"
    server.vm.synced_folder "../data", "/vagrant_data", disabled: true
    server.vm.provision "shell", inline: "useradd srv_ansible; echo 'ansible' | passwd srv_ansible --stdin"
    server.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--cpus", 4]
      v.customize ["modifyvm", :id, "--name", "ansible-controller-node"]
    end
  end

  config.vm.define "client01" do |client01|
    client01.vm.box = "centos/7"
    client01.vm.hostname = 'ansinble-node1'
    client01.vm.box_url = "centos/7"
    client01.vm.network :private_network, ip: "172.0.0.101"
    client01.vm.synced_folder "../data", "/vagrant_data", disabled: true
    client01.vm.provision "shell", inline: "useradd srv_ansible; echo 'ansible' | passwd srv_ansible --stdin"
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
    client02.vm.provision "shell", inline: "useradd srv_ansible; echo 'ansible' | passwd srv_ansible --stdin"
    client02.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--cpus", 2]
      v.customize ["modifyvm", :id, "--name", "ansinble-node2"]
    end
  end
  
  config.vm.define "client03" do |client03|
    client03.vm.box = "centos/7"
    client03.vm.hostname = 'ansinble-node3'
    client03.vm.box_url = "centos/7"
    client03.vm.network :private_network, ip: "172.0.0.103"
    client03.vm.synced_folder "../data", "/vagrant_data", disabled: true
    client03.vm.provision "shell", inline: "useradd srv_ansible; echo 'ansible' | passwd srv_ansible --stdin"
    client03.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--cpus", 2]
      v.customize ["modifyvm", :id, "--name", "ansinble-node3"]
    end
  end

  config.vm.define "client04" do |client04|
    client04.vm.box = "centos/7"
    client04.vm.hostname = 'ansinble-node4'
    client04.vm.box_url = "centos/7"
    client04.vm.network :private_network, ip: "172.0.0.104"
    client04.vm.synced_folder "../data", "/vagrant_data", disabled: true
    client04.vm.provision "shell", inline: "useradd srv_ansible; echo 'ansible' | passwd srv_ansible --stdin"
    client04.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--cpus", 2]
      v.customize ["modifyvm", :id, "--name", "ansinble-node4"]
    end
  end

  config.vm.define "client05" do |client05|
    client05.vm.box = "centos/7"
    client05.vm.hostname = 'ansinble-node5'
    client05.vm.box_url = "centos/7"
    client05.vm.network :private_network, ip: "172.0.0.105"
    client05.vm.synced_folder "../data", "/vagrant_data", disabled: true
    client05.vm.provision "shell", inline: "useradd srv_ansible; echo 'ansible' | passwd srv_ansible --stdin"
    client05.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--cpus", 2]
      v.customize ["modifyvm", :id, "--name", "ansinble-node5"]
    end
  end

  config.vm.define "client06" do |client06|
    client06.vm.box = "centos/7"
    client06.vm.hostname = 'ansinble-node6'
    client06.vm.box_url = "centos/7"
    client06.vm.network :private_network, ip: "172.0.0.106"
    client06.vm.synced_folder "../data", "/vagrant_data", disabled: true
    client06.vm.provision "shell", inline: "useradd srv_ansible; echo 'ansible' | passwd srv_ansible --stdin"
    client06.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--cpus", 2]
      v.customize ["modifyvm", :id, "--name", "ansinble-node6"]
    end
  end
end
