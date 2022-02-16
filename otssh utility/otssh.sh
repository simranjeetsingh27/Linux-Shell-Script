#!/bin/bash

action=$1

addingcontent()
{

name_server_option=$2
name_server_name=$3
host_server_option_=$4
host_server_name=$5
user_name_option=$6
user_name=$7
port_option=$8
port_number=$9
pem_key_input=${10}
pem_key_path=${11}

cd ~/.ssh
Dir="server"
if [ ! -d "$Dir" ];
then
mkdir ~/.ssh/server
fi
cd

if [ $# -eq 7 ] ;
then
if [ $2 == "-n"  ] && [ $4 == "-h" ] && [ $6 == "-u" ] ;
then
cd ~/.ssh/server
touch $3
echo "Host $3
        HostName $5
        User $7" > $3
cd
echo -e "\e[1;33mAdded $3 details in the system\e[0m"
fi
fi

if [ $# -eq 9 ] ;
then
if [ "$2" == "-n" ] && [ "$4" == "-h" ] && [ "$6" == "-u" ] && [ "$8" == "-p" ] ;
then
cd ~/.ssh/server
touch $3
echo "Host $3
        HostName $5
        User $7
        Port $9" > $3
cd
echo -e "\e[1;33mAdded $3 details in the system\e[0m"
fi
fi

if [ $# -eq 11 ] ;
then
if [ "$2" == "-n"  ] && [ "$4" == "-h" ] && [ "$6" == "-u" ] && [ "$8" == "-p" ] && [ "${10}" == "-i" ] ;
then
cd ~/.ssh/server
touch $3
echo "Host $3
        HostName $5
        User $7
        Port $9
        IdentityFile ${11} " > $3
cd
echo -e "\e[1;33mAdded $3 details in the system\e[0m"
fi
fi

}

listing_server_name()
{
cd ~/.ssh/server
ls -l | grep "server" | awk '{print $NF}'
cd
}

Updation()
{

name_server_option=$2
name_server_name=$3
host_server_option_=$4
host_server_name=$5
user_name_option=$6
user_name=$7
port_option=$8
port_number=$9
pem_key_input=${10}
pem_key_path=${11}

cd ~/.ssh
Dir="server"
if [ ! -d "$Dir" ];
then
mkdir ~/.ssh/server
fi
cd


if [ -f ~/.ssh/server/$3 ]
then
if [ $2 == "-n"  ] && [ $4 == "-h" ] && [ $6 == "-u" ] ;
then
if [ $# -eq 7 ] ;
then
cd ~/.ssh/server
touch $3
echo "Host $3
        HostName $5
        User $7" > $3
cd
echo -e "\e[1;33mUpdated $3 details in the system\e[0m"
fi
fi

if [ "$2" == "-n" ] && [ "$4" == "-h" ] && [ "$6" == "-u" ] && [ "$8" == "-p" ] ;
then
if [ $# -eq 9 ];
then
cd ~/.ssh/server
touch $3
echo "Host $3
        HostName $5
        User $7
        Port $9" > $3
cd
echo -e "\e[1;33mUpdated $3 details in the system\e[0m"
fi
fi

if [ "$2" == "-n"  ] && [ "$4" == "-h" ] && [ "$6" == "-u" ] && [ "$8" == "-p" ] && [ "${10}" == "-i" ] ;
then
if [ $# -eq 11 ] ;
then
cd ~/.ssh/server
touch $3
echo "Host $3
        HostName $5
        User $7
        Port $9
        IdentityFile ${11} " > $3
cd
echo -e "\e[1;33mUpdated $3 details in the system\e[0m"
fi
fi
else
        echo -e "\e[1;33mFile Doesn't Exist\e[0m"
fi
}



removingdir()
{
servername=$1

if [ -f ~/.ssh/server/$1 ]
then
cd ~/.ssh/server
rm $1
cd
echo -e "\e[1;31mRemoved $1 details from the system\e[0m"
else
      echo -e "\e[1;33mFile Doesn't Exist\e[0m"
fi
}

listing_content()
{
cd ~/.ssh/server
server_name=`ls -l | grep "server" | awk '{print $NF}' | awk 'NR==1{print $1}'`
word_count=`cat $server_name | wc -l`

if [ $word_count == 3  ];
then
host=`cat $server_name | awk 'NR==1{print $2}'`
hostname=`cat $server_name | awk 'NR==2{print $2}'`
user=`cat $server_name | awk 'NR==3{print $2}'`
echo "$host : ssh $user@$hostname"
fi
cd

cd ~/.ssh/server
server_name1=`ls -l | grep "server" | awk '{print $NF}' | awk 'NR==2{print $1}'`
word_count1=`cat $server_name1 | wc -l`

if [ $word_count1 == 4  ];
then
host=`cat $server_name1 | awk 'NR==1{print $2}'`
hostname=`cat $server_name1 | awk 'NR==2{print $2}'`
user=`cat $server_name1 | awk 'NR==3{print $2}'`
port=`cat $server_name1 | awk 'NR==4{print $2}'`
echo "$host : ssh -p $port $user@$hostname"
fi
cd
cd ~/.ssh/server
server_name2=`ls -l | grep "server" | awk '{print $NF}' | awk 'NR==3{print $1}'`
word_count2=`cat $server_name2 | wc -l`

if [ $word_count2 == 5  ];
then
host=`cat $server_name2 | awk 'NR==1{print $2}'`
hostname=`cat $server_name2 | awk 'NR==2{print $2}'`
user=`cat $server_name2 | awk 'NR==3{print $2}'`
port=`cat $server_name2 | awk 'NR==4{print $2}'`
key=`cat $server_name2 | awk 'NR==5{print $2}'`
echo "$host : ssh -i $key -p $port $user@$hostname"
fi
cd

}

case $action in
-a ) addingcontent $@ ;;
ls ) if [ "$2" == "-d" ] ;
      then
         listing_content
     else
        listing_server_name
     fi
;;
-u ) Updation $@ ;;
rm ) removingdir $2 ;;
esac