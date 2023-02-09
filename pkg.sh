#!/bin/bash
#Authore: Raoul
#Date: 02/05/2023
#Descriptoins: installatoin software packages in centos7


#Check the current user
 echo "current user is... "
  whoami

#check current working Diretory
 echo "current working Directory is..."
  pwd

#UPDATE THE SYSTEM
 echo "upgrading..."
  sudo yum upgrade -y
  sudo yum update -y

#INSTALL PACKAGES IN THE SYSTEM
 echo "install packages..."
  sudo yum install finger -y
  sudo yum install wget -y   
  sudo yum install unzip -y 
  sudo yum install curl -y 

#INSTALL EDITOR IN THE SYSTEM
 echo "install editor..." 
  sudo yum install vim -y
  sudo yum install nano -y 

#SETUP GIT IN OUR SYSTEM 
 echo "install git and check the version..."
  sudo yum install git -y 
  git --version 

#INSTALLATION APACHE SOFTWARE 
 echo "install httpd..."
  sudo yum install httpd -y 

#START AND THE DAEMON
 echo "start httpd..."
  sudo systemctl start httpd

#ENABLE THE DAEMON
 echo "enable httpd ..."
  sudo systemctl enable httpd 

#CHECK THE DAEMON IS RUNNING
 echo "check the daemon status..." 
  sudo systemctl status httpd

#OPEN THE FIREWALL IN THE SYSTEM
 echo "open firewall and add the port..."
  sudo firewall-cmd --permanent --add-port=80/tcp
  sudo firewall-cmd --reload 

#CHECK IF THE PORT 80 IS OPEN 
 echo "check the port is open..."
  sudo netstat -tulnp              
