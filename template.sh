#!/bin/bash
# Author: Dave Augustus


#check for the Linux distribution first

#get the OS distro
distro=$(cat /etc/os-release | grep -i name | head -1 | cut -f2 -d "=")


if [ $distro == "Fedora" ]
then
	echo "You are running $distro machine!"



elif [$distro == '"Ubuntu"']
then
	echo "You are running $distro machine!"


else
	echo "The script hasn't recognised the OS!"
	exit 0
fi
