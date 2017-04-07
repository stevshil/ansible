Vagrant.configure("2") do |config|

  # RHEL Puppet client
  config.vm.define :pc do | pc |
    config.vm.provider "virtualbox" do | vb |
      vb.memory = 512
      vb.name = "RHEL PC"
    end
    pc.vm.host_name = "pc.al.local"
    pc.vm.box = "bento/centos-7.2"
    pc.vm.provision :shell, :path => 'bin/puppet.sh'
  end

  config.vm.define :dev do | dev |
    config.vm.provider "virtualbox" do | vb |
      vb.memory = 512
      vb.name = "RHEL PC"
    end
    dev.vm.host_name = "test.al.local"
    dev.vm.box = "bento/centos-7.2"
    dev.vm.provision :shell, :path => 'bin/puppet.sh'
  end
end
