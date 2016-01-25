# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.hostname = 'cameo-box'
  config.vm.network 'forwarded_port', guest: 8501, host: 8501
  config.vm.network 'private_network', ip: '192.168.33.210'
  # config.vm.network 'public_network'

  config.vbguest.auto_update = false if config.methods.include? :vbguest

  config.vm.provider 'virtualbox' do |v|
    v.memory = 1024
  end

  # config.vm.synced_folder '../data', '/vagrant_data'
  config.vm.provision :ansible do |ansible|
    ansible.playbook = 'playbook.yml'
    ansible.extra_vars = {
      'consul_bind_addr' => '192.168.33.210'
    }
  end
end
