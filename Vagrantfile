# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.synced_folder "src/", "/srv/website"
  config.vm.network :forwarded_port, guest: 3000, host: 8080
  config.vm.provision :shell, path: "bootstrap_root.sh"
  config.vm.provision :shell, path: "bootstrap_vagrant_1.sh", privileged: false
  config.vm.provision :shell, path: "bootstrap_vagrant_2.sh", privileged: false
#  config.vm.provision :shell, inline: "cd /srv/website && rails server", privileged: false
end
