# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "vsftpd"
  config.vm.box = "opscode_centos-6.4"

  config.vm.network :public_network, :ip => "192.168.0.1", :netmask => "255.255.255.0", :bridge => "eth0"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
end
