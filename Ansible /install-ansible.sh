#!/bin/bash

echo "Install Ansible"

PS3='Which Operating System are you on?: '

choice=("1 - CentOS/RHEL/Fedora" "2 - Debian/Ubuntu" "Quit")

select $ch in "${choice[@]}"
do
    case $ch in
    "1 - CentOS/RHEL/Fedora")
        echo "INSERT CODE HERE"
        ;;
    "2 - Debian/Ubuntu")
        echo "INSERT CODE HERE"
        ;;
    "Quit")
        break
        ;;
    *)  echo "invalid option $REPLY";;
    esac
done


# For Centos/RHEL/Fedora
# Install EPEL Repository: 
# yum -y install epel-release
# yum install ansible

# For Debian/Ubuntu
# apt-get update
# apt-get install lsb-release software-properties-common

# For Ubuntu
# apt-add-repository -y ppa:ansible/ansible
# apt-get update

# For Debian
# echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list.d/ansible-debian.list
# apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
# apt-get update

# apt-get install ansible 
