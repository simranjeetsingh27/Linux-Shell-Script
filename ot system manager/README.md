# Assignment6

## Authors

- Simranjeet Singh
## TO DO:

### Create a system manager utility, with below features

Create a normal user
Add additional behavior to the utility such as:

Add a user to a group
-Update primary group
Enable/Disable password based login for user
Enable/Disable key-based based login for user
Restrict user to a specific directory i.e  user should not be able to move out from that directory
Define connection timeout
Restrict user to launch only 10 processes
Identify more such options




./otSystemManager addUser <username>
./otSystemManager addUserToGroup <username> <group name>
./otSystemManager updatePrimaryGroup <user name> <group name>
./otSystemManager enablePasswordBasedLogin <user name>
./otSystemManager disablePasswordBasedLogin <user name>
./otSystemManager enableKeyBasedLogin <user name>
./otSystemManager disableKeyBasedLogin <user name>
./otSystemManager restrictUserToDir <user name> <directory>
./otSystemManager disableRestrictUserToDir <user name>
./otSystemManager setConnectionTimeout <username> <timeout>



