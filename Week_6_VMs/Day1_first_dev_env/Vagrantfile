# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  
  # Creating Vagrant box with this specific example:
  config.vm.box = "ubuntu/xenial64"

  # Static IP
  config.vm.network "private_network", ip: "192.168.50.4"
  
  # Ease of use:
  # Essentially changing IP to a URL that we can easily use
  # Search how to add a host, that will allow us to go to a normal link
  # development.local --> endup in the welcome to nginx website
  config.vm.hostname = "development.local"
 
end
