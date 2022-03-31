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


