#########################################################################
# File Name: redes.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu Apr 27 06:48:45 2023
#########################################################################
#!/bin/bash
exec 0<array.sh
count=1
while read line;
do 
	if ! [[ $line =~ ^# ]]; 
	then	
	echo "$count $line"
	count=$[count+1]
	fi
done
