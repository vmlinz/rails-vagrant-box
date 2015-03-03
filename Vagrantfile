# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box      = 'ubuntu/trusty64'
  config.vm.hostname = 'rails-dev-box'

  config.vm.provider :virtualbox do |vbox, override|
    vbox.memory = 2048
  end

  config.vm.network :forwarded_port, guest: 3000, host: 3030
  config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true
  config.vm.provision :shell, path: 'postinstall.sh', keep_color: true, privileged: false
end
