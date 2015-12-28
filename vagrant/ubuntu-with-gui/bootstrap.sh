#!/usr/bin/env bash

sudo apt-get update

# INSTALL APACHE
# apt-get install -y apache2
# if ! [ -L /var/www ]; then
#  rm -rf /var/www
#  ln -fs /vagrant /var/www
# fi


# INSTALL UBUNTU-DESKTOP
sudo apt-get install -y ubuntu-desktop

sudo apt-get update

# INSTALL VITUALBOX GUEST ADDTIONS
# sudo apt-get install -y linux-headers-generic build-essential dkms
# sudo mount /dev/cdrom /media/cdrom
# sudo sh /media/cdrom/VBoxLinuxAdditions.run
