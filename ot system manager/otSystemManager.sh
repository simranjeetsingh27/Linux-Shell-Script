#!/bin/bash

action=$1

addUser()
{
username=$1

sudo useradd -m $username -s /bin/bash    
echo "User $username created"  
}

addUser_to_Group()
{
username=$1 
groupname=$2

sudo usermod -a -G $groupname $username  
echo "User $username added in group $groupname"
}

updateGroup()
{
username=$1
groupname=$2

sudo usermod -g $groupname $username
echo "Group $groupname updated"
}

enablePasswordBasedLogin()
{
username=$1

sudo sed -i "41s/PasswordAuthentication no/PasswordAuthentication yes/1" /etc/ssh/sshd_config
sudo systemctl restart sshd.service
ssh $username@localhost

}

disablePasswordBasedLogin()
{
user=$1

sudo sed -i "41s/PasswordAuthentication yes/PasswordAuthentication no/1" /etc/ssh/sshd_config
sudo systemctl restart sshd.service
ssh $username@localhost

}

enablePubkeyAuthentication()
{
username=$1

sudo sed -i "27s/PubkeyAuthentication no/PubkeyAuthentication yes/1" /etc/ssh/sshd_config
sudo systemctl restart sshd.service
ssh $username@localhost

}

disablePubkeyAuthentication()
{
user=$1

sudo sed -i "27s/PubkeyAuthentication yes/PubkeyAuthentication no/1" /etc/ssh/sshd_config
sudo systemctl restart sshd.service
ssh $username@localhost
}


case $action in 

addUser ) addUser $username 
;;
addUser_to_Group ) addUser_to_Group $username $groupname 
;;
updateGroup ) updateGroup $username $groupname 
;;
enablePasswordBasedLogin ) enablePasswordBasedLogin $username 
;;
disablePasswordBasedLogin ) disablePasswordBasedLogin $username 
;;
enablePubkeyAuthentication ) enablePubkeyAuthentication $username 
;;
disablePubkeyAuthentication ) disablePubkeyAuthentication $username 
;;

esac
