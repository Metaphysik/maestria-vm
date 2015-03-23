# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty32"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 8080, host: 8081

  config.vm.synced_folder "./maestria-api", "/maestria-api"
  config.vm.synced_folder "./maestria-web", "/maestria-web"
  config.vm.synced_folder "./.config", "/etc/nginx/sites-enabled"


  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get upgrade -y
    sudo apt-get install -y nginx vim htop
    sudo apt-get install -y sqlite3 php5-common php5-fpm php5-cli php5-sqlite
  SHELL

  config.vm.provision "shell", inline: "sudo service nginx restart", run: "always"
end

Vagrant.configure("2") do |config|
end
