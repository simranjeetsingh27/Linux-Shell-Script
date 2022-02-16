# Assignment2

Create userManager Uitiliy along with following condition:


## Authors

- Simranjeet Singh
## Documentation

UserManager utility

Add NinjaTeam (Simulate Group) ex: team1
Add a User (Simulate) under a team ex: kirti added to team1


Ensure below constraints are met:

A user should have read,write, execute access to home directory      chmod u=rwx
All the users of same team should have read and execute access to home directory of fellow team members.
In home directory of every user there should be 2 shared directories

team: Same team members will have full access
ninja: All ninja's will have full access






i.e
./UserManager.sh addTeam amigo       
./UserManager.sh addTeam unixkings    
./UserManager.sh addUser Kirti amigo     
./UserManager.sh addUser Sandeep unixkings   

Resultant Structure
/home
  - Kirti
    - team
    - ninja
  - Sandeep
    - team
    - ninja

