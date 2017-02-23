# Ubuntu useful commands

### Ubuntu basic commands
* `sudo <command>`  (run command with root user)
* `chmod 777 <file|dir>` (gives permission to file or directory)
* `mkdir <dir>`
* `rmdir <dir>`
* `mv <source> <dest>`
* `tar -[options] <zip>` (compacts / descompacts file)
* `cp -R <source> <dest>` (copy recursive files)
* `sudo passwd <username>` (force reset password)
* `ls [options]` - list files
  > ls -a -l
* `ln [options] <target> [linkname]` - create a link
  > ln -s /home/users/download/ downloadDir
* `df -h` - show disk usage
* `man [program]` - display linux manual page
* `([process] &)`- keep running process after ending ssh session

 
### Advanced Packaging Tool (apt) commands
* `apt-cache search <packagename>` (search package with packagename)
* `apt-cache show <packagename>` (show information of package)
* `sudo apt-get update` (update system packages)
* `sudo apt-get upgrade` (upgrade software packages)
* `sudo apt-get install <package>` (install package)
* `sudo apt-get install <package1> <package2>` (install multi packages)
* `sudo apt-get install <package>=<version>` (install specific package version)
* `sudo apt-get remove <package>` (remove package without their configuration)
* `sudo apt-get purge <package>` (completely remove package including their configuration)
* `sudo apt-get clean` (clean up disk)
* `sudo apt-get --download-only source <package>` (downloading source code package)
* `sudo apt-get changelog <package>` (check changelog of package)
* `sudo apt-get check` (checks for broken dependencies)
* `sudo apt-get autoclean` (deletes all .deb files from /var/cache/apt/archives)
* `dpkg --get-selections | grep <search>`  (find installed packages)

##### Install add-apt
    sudo apt-get install python-software-properties

##### Install open jdk
    sudo apt-get install openjdk-8-jre
    sudo apt-get install default-jdk

##### Install oracle jdk
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt-get update
    sudo apt-get install oracle-java8-installer

##### Install oracle jdk auto accept license
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

##### Define user variables
  `echo "export PATH=$PATH:/home/me/play" >> ~/.profile` - E.g play path to PATH variable
  `. ~/.profile` - To immediately reflect changes
