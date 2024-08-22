#!/bin/bash

Function=$1
team=$2
username=$3

function addTeam()
{

sudo groupadd $team
sudo echo -e "\e[1;33m Newly Group ($team) that made has following igitnfo as of now \e[0m"
sudo grep -w $team /etc/group

}

function addUser()
{

sudo useradd $username
sudo usermod -a -G $team $username
sudo echo -e "\e[1;32m $username added to $team \e[0m"
sudo echo -e "\e[1;33m Now Showing the group $team members \e[0m"
sudo grep -w $team /etc/group
sudo chmod 755 /home/$username
cd /home/$username && mkdir {team,ninja} && cd
cd /home/$username && ls -lrth && cd

}


case $Function in

addTeam ) addTeam $team
          ;;
addUser ) addUser $username $team
          ;;
esac
