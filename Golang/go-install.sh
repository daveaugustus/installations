#!/bin/bash
# Written by: Dave Augustus

# https://golang.org/dl/go1.15.6.linux-amd64.tar.gz
						
go_download_URL=$1

# download the golang file in tag.gz
wget $go_download_URL

# Find the go which ends with tar.gz
go_tar_file=`find ./ -name "go1*tar.gz" | cut -d\/ -f2`



# Untar the file and put into /usr/local/
tar -C /usr/local -xzf $go_tar_file

#Golang Path setup
user=`whoami`

# Create Go workspace folder if it doesn't exists

if [ ! -d /home/$user/Go_Work ]; then
  mkdir -p /home/$user/Go_Work/bin /home/$user/Go_Work/src /home/$user/Go_Work/pkg;
fi

# mkdir /home/$user/Go_Work
# mkdir 


rm $go_tar_filex

echo installed