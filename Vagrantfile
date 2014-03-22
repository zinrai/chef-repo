# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "vsftpd"
  config.vm.box = "opscode_centos-6.4"

  config.vm.network :private_network, ip: "192.168.11.11"
  config.vm.network :forwarded_port, guest: 21, host: 3001
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
end
