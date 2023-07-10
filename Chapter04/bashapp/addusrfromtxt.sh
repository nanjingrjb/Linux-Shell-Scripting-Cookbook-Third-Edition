#########################################################################
# File Name: addusrfromtxt.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Mon Jul 10 08:03:42 2023
#########################################################################
#!/bin/bash
echo "usage:$0  user.txt"
while read line
do #echo $line
	user=$(echo $line|cut -f1 )
	pass=$(echo $line|cut -f2 )
	#echo $usr  $pass
	useradd $user
#	echo $pass|passwd  $usr
	#echo $pass|passwd  
    echo $user:$pass|sudo chpasswd
	echo "user $user added."
done < $1
