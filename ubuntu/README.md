# Ubuntu useful commands

-- intall add-apt
sudo apt-get install python-software-properties

-- install open jdk
sudo apt-get update

sudo apt-get install openjdk-8-jre
sudo apt-get install default-jdk


-- install oracle jdk

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

sudo apt-get install oracle-java8-installer

-- auto accept license
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

-- define environment variable JAVA_HOME
sudo update-alternatives --config java
OR
export JAVA_HOME=/usr/lib/jvm/<java-jdk>

chmod 777 <file|dir>
mkdir <dir>
rmdir <dir>
mv <source> <dir>
tar -[options] <zip> -C <dest>
cp -R <source> <dest> copy recursive

sudo passwd <username> (reset password)

sudo echo "JAVA_HOME=/usr/lib/jvm/java-7-openjdk-i386/" >> /home/vagrant/.bashrc

apt-get remove (uninstall but maintain config files)
apt-get purge (all clean)
sudo apt-get purge byobu* (remove package)
dpkg --get-selections | grep byobu  (find packages)

remove APT cache
sudo apt-get clean

“zero out” the drive
sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -f /EMPTY
let’s clear the Bash History
cat /dev/null > ~/.bash_history && history -c 