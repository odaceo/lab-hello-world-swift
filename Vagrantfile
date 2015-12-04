# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL

    sudo apt-get update

    # Install prerequesites
    sudo apt-get install -y clang
	
    # Move to the opt directory
    cd /opt

    # Download the Swift package signature
    wget https://swift.org/builds/ubuntu1404/swift-2.2-SNAPSHOT-2015-12-01-b/swift-2.2-SNAPSHOT-2015-12-01-b-ubuntu14.04.tar.gz.sig

    # Download the Swift package
    wget https://swift.org/builds/ubuntu1404/swift-2.2-SNAPSHOT-2015-12-01-b/swift-2.2-SNAPSHOT-2015-12-01-b-ubuntu14.04.tar.gz

    # Import the Swift PGP keys
    wget -q -O - https://swift.org/keys/all-keys.asc | sudo gpg --import -

    # Make sure the PGP keys are up-to-date
    sudo gpg --keyserver hkp://pool.sks-keyservers.net --refresh-keys Swift

    # Make sure the signature match
    sudo gpg --verify swift-2.2-SNAPSHOT-2015-12-01-b-ubuntu14.04.tar.gz.sig

    # Extract the Swift package
    sudo tar xzf swift-2.2-SNAPSHOT-2015-12-01-b-ubuntu14.04.tar.gz

    # Add the Swift toolchain to the path
    echo 'export PATH=/opt/swift-2.2-SNAPSHOT-2015-12-01-b-ubuntu14.04/usr/bin:"${PATH}"' > /etc/profile.d/swift.sh

  SHELL
end
