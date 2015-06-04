Vagrant.configure(2) do |config|
    config.vm.box = 'trusty-server'
	config.vm.box_url = 'https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box'
	
	config.vm.network "forwarded_port", guest: 3000, host: 3000
	
	config.vm.provision :shell do |shell|
		shell.inline = "mkdir -p /etc/puppet/modules;
		puppet module install maestrodev/rvm --modulepath=/etc/puppet/modules;
		puppet module install puppetlabs-ruby --modulepath=/etc/puppet/modules;
		puppet module install puppetlabs-passenger --modulepath=/etc/puppet/modules;
	end
	
	config.vm.provision :puppet,
	    :manifests_path => 'manifests'
end