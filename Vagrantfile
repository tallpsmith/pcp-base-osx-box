# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "http://files.dryga.com/boxes/osx-sierra-0.3.1.box"

  # no need for synced folders
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.provision "shell", path: "provisioning/setup.sh"
end
