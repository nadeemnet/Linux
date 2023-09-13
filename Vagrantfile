# Vagrantfile for almalinux. almalinux is based on RHEL
Vagrant.configure("2") do |config|
  config.vm.box_check_update = false
  config.vm.box = "almalinux/8"
  config.vm.provider "virtualbox"
  config.vm.hostname = "almalinux8"
  config.vm.define "almalinux8"
  config.vm.provision "shell", path: "config.sh"
end

# config.sh for above file
#!/usr/bin/env bash
# sudo yum groupinstall -y "Development Tools"
sudo yum update -y
sudo yum install -y vim-enhanced
sudo yum install -y python3.11
sudo yum install -y git
sudo yum install -y golang
