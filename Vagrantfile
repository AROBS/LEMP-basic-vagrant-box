# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.5.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.hostname = "php-nginx-mysql"

  # Set the version of chef to install using the vagrant-omnibus plugin
  config.omnibus.chef_version = :latest

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "opscode_ubuntu-12.04_provisionerless"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box"

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  config.vm.network :private_network, ip: "33.33.33.10"
  # xdebug
  config.vm.network "forwarded_port", guest: 9001, host: 9001
  # graylog2
  config.vm.network "forwarded_port", guest: 9000, host: 9000

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "./data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
   config.vm.provider :virtualbox do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #
  #   # Use VBoxManage to customize the VM. For example to change memory:
     vb.customize ["modifyvm", :id, "--memory", "2048"]
   end
  #
  # View the documentation for the provider you're using for more
  # information on available options.

  # configuration for local VM provisioning
  config.vm.define "local" do |local|
    role = "dev.local"
    external = JSON.parse(File.read("roles/".concat(role).concat(".json")),{:symbolize_names => true, :allow_nan => true})
    local.vm.provision :chef_solo do |chef|  
      servername = external[:default_attributes][:app][:servername]
      local.hostmanager.aliases = [servername, "www."+servername]
      chef.custom_config_path = "Vagrantfile.chef"
      chef.cookbooks_path = ["cookbooks", "my_cookbooks"]
      chef.roles_path = "roles"
      chef.add_role(role)
    end

    local.vm.provision "shell" do |s|
        s.inline = "echo Running composer install...;cd "+external[:default_attributes][:app][:base_dir]+"/build;ant deploy_local"
        s.inline = "sh /vagrant_data/build/deploy.sh"
    end

    # a shell script to be always run when vagrant starts
    local.vm.provision "shell", run: "always" do |s|
        s.inline = "sh /vagrant_data/startup/startup.sh"
    end
  end

  # configuration for demo VM provisioning
#  config.vm.define "demo" do |demo|
#    role = "dev.demo"
#    external = JSON.parse(File.read("roles/".concat(role).concat(".json")),{:symbolize_names => true, :allow_nan => true})
#    demo.vm.provision :chef_solo do |chef|  
#      servername = external[:default_attributes][:app][:servername]
#      demo.hostmanager.aliases = [servername, "www."+servername]
#      chef.custom_config_path = "Vagrantfile.chef"
#      chef.cookbooks_path = ["cookbooks", "my_cookbooks"]
#      chef.roles_path = "roles"
#      chef.add_role(role)
#    end
#    demo.vm.provision "shell" do |s|
#      s.inline = "echo Running composer install...;cd "+external[:default_attributes][:app][:base_dir]+"/build;ant deploy_local"
#      s.inline = "sh /vagrant_data/build/deploy.sh"
#    end
#
#    # a shell script to be always run when vagrant starts
#    demo.vm.provision "shell", run: "always" do |s|
#    	s.inline = "sh /vagrant_data/startup/startup.sh"
#    end
#  end

end


