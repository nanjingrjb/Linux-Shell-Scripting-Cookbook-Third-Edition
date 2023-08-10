#########################################################################
# File Name: execdir.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Thu Aug 10 07:47:11 2023
#########################################################################
#!/bin/bash
newfile="newconfig.txt"
touch $newfile
exec 0< config.txt
exec 1> $newfile
exec &> $newfile

count=1
while read line
do
	echo "$count:$line"
	count=$((count+1))
done

ls mypwd
