# Assignment7

Create Otssh Utility


## Authors

- Simranjeet Singh
## TO DO:

-Create a utility otssh, this utility will have below features
    - add ssh connect
    - list ssh connection
    - update ssh connection
    - delete ssh connection
    - Connect to server
```
example:
- Add ssh connection
$ otssh -a -n server1 -h 192.168.21.30 -u kirti (add user kirti to connect 192.168.21.30 with name server1 with default ssh setting)
$ otssh -a -n server2 -h 192.168.42.34 -u kirti -p 2022 (add user kirti to connect 192.168.42.34 with name server2 with port 2022 and default ssh setting)
$ otssh -a -n server3 -h 192.168.42.34 -u Sandeep -p 2022 -i ~/.ssh/server3.pem (add user Sandeep to connect 192.168.42.34 with name server3 with port 2022 and ssh key file ~/.ssh/server3.pem and default ssh setting)
```
```
- List ssh connection
i.e 
$ otssh ls (This should list the name of all connection added using utility)
server1
server2
server3
$ otssh ls -d (This should list the name of all connection with details added using utility)
server1: ssh user@server1
server2: ssh -p 2022 user@server2
server3: ssh -i ~/.ssh/server3.pem -p 2022 user3@server3
```
```
- Update ssh connection (This should update the settings for connection mentioned after name)
$ otssh -u -n server1 -h server1 -u user1
$ otssh -u -n server2 -h server2 -u user2 -p 2022
$ otssh ls -d
server1: ssh user1@server1
server2: ssh -p 2022 user2@server2
server3: ssh -i ~/.ssh/server3.pem -p 2022 user3@server3
```
```
- Delete ssh connection (This should Delete the mentioned connection)
$ otssh rm server1
$ otssh rm server2
$ otssh ls -d
server3: ssh -i ~/.ssh/server3.pem -p 2022 user3@server3
```
```
- Connect to server (This should connect to the server mentioned with details added using utility)
$ otssh server1
[ERROR]: Server information is not available, please add sever first
$ otssh server2
[ERROR]: Server information is not available, please add sever first
$ otssh server3
Connecting to server3 on 2022 port as user3 via ~/.ssh/server3.pem key
```

explanation:

otssh -a -n server1 -h 192.168.21.30 -u kirti 
Output: 
Added server1 details in the system

otssh -a -n server2 -h 192.168.42.34 -u kirti -p 2022
Output: 
Added server2 details in the system

otssh -a -n server3 -h 192.168.42.34 -u Sandeep -p 2022 -i ~/.ssh/server3.pem
Output: 
Added server3 details in the system 

otssh ls
Output:
server1
server2
server3

otssh ls -d
Output:
server1: ssh kirti@192.168.21.30
server2: ssh -p 2022 kirti@192.168.42.34
server3: ssh -i ~/.ssh/server3.pem -p 2022 Sandeep@192.168.42.34


otssh -u -n server1 -h 192.78.23.45 -u deepak
Updated server1 details in the system 

otssh ls -d
Output:
server1: ssh deepak@192.78.23.45
server2: ssh -p 2022 kirti@192.168.42.34
server3: ssh -i ~/.ssh/server3.pem -p 2022 Sandeep@192.168.42.34


otssh rm server2
Removed server2 details from the system 

otssh ls 
Output:
server1 
server3


otssh -c server1
Connecting to server1 on 22 port as deepak via ~/.ssh/id_rsa key

otssh -c server2
Unable to find server in the system




