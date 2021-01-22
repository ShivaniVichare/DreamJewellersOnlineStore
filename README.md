# DreamJewellersOnlineStore

Import database

steps:-

1)  In mysql command line create a database

-> create database jewellers;

2) open cmd and run as administrator

3) Go to Programfiles/mysql/bin/
 copy this path and paste in cmd 

4) Command for importing database

-> mysql -u root -p jewellers< "your location where you have saved the database\jewellers.sql"

eg ->mysql -u root -p jewellers < "C:\users\Desktop\project\jewellers.sql"

5) Will ask for password [ enter password as root]

6) Databse is imported 

 
