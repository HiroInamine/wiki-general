# Vagrant useful commands

vagrant init [<box-name>]
vagrant up
vagrant status
vagrant global-status

vagrant halt
vagrant suspend
vagrant destroy

vagrant snapshot save <name>
vagrant snapshot list
vagrant snapshot restore <name>

vagrant package --output <boxName.box> (Create a box from a existing vagrant)
vagrant box add <name> <boxName.box>

# good practices before generate box
remove APT cache
sudo apt-get clean

“zero out” the drive
sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -f /EMPTY
let’s clear the Bash History
cat /dev/null > ~/.bash_history && history -c 


connect ssh with putty
puttygen.exe - generate .ppk from *private_key*