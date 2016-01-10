# Vagrant useful commands

## Basic commands
* `vagrant init <box-name>`
* `vagrant up`
* `vagrant status`
* `vagrant global-status`
* `vagrant halt [vagrant_Id]` (pause vm)
* `vagrant suspend [vagrant_Id]` (shutdown vm)
* `vagrant destroy [vagrant_Id]` (delete files)

## Snapshot
* `vagrant snapshot save <name>`
* `vagrant snapshot list`
* `vagrant snapshot restore <name>`


## Creating a vagrant base box form an existing one

    Best practices - Clean vagrant machine before generate box
    Remove APT cache: sudo apt-get clean
    Compact space:  sudo dd if=/dev/zero of=/EMPTY bs=1M && sudo rm -f /EMPTY
    Clear bash history: cat /dev/null > ~/.bash_history && history -c

After setup your vagrant machine:
1. `vagrant package --output <boxFilename.box>` (Create a box file)
2. `vagrant box add <name> <boxName.box>`
3. `vagrant destroy` (Destroy origin vagrant machine)
4. `vagrant init <name>` (Create new vagrant with created base box)
5. `vagrant up`


### Aditional informations

##### Connect on vagrant machine ssh with putty
* generate .ppk with *private_key* vagrant machine - puttygen.exe

##### Define environment variable JAVA_HOME for VAGRANT machine
* `sudo echo "JAVA_HOME=/usr/lib/jvm/java-7-openjdk-i386/" >> /home/vagrant/.bashrc`
