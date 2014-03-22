# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "jenkins"
  config.vm.box = "opscode_centos-6.4"

  config.vm.network :private_network, ip: "192.168.11.11"
  config.vm.network :forwarded_port, guest: 8080, host: 8080
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
  #config.omnibus.chef_version = "11.10.4"

end
