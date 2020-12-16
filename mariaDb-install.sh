#!/bin/bash
# Written by: Dave Augustus

sudo dnf update -y
sudo dnf install mysql-community-server -y
sudo systemctl enable mysqld.service
sudo systemctl start mysqld.service
sudo mysql_secure_installation
