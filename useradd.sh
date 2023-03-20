#!/bin/bash
#This script for adding users
 
echo -e "This script for adding new user\n"

echo "Please Enter username: "
read username
echo "Please Enter password: "
read -s password

#seach if this user is exist or not 
grep -w "$username"  /etc/passwd > /dev/null

# if the user is exist he will return zero 
if [ $? -eq 0 ]; then
	echo "user already exist";
else 
	sudo useradd  $username -m -d /home/$username -p $password -s /bin/bash;
	echo "The user $username is created"
	echo "welcome $username";
fi;
