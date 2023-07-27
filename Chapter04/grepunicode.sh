#########################################################################
# File Name: grepunicode.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Thu Jul 27 19:00:04 2023
#########################################################################
#!/bin/bash


for i in $(ls *.txt);
do
	res=$(file $i)
	echo $res|grep "code"
    if [ $? -eq 0 ]
	then echo $i
	fi
done
