#########################################################################
# File Name: redes.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu Apr 27 06:48:45 2023
#########################################################################
#!/bin/bash
exec 0<array.sh
exec 2>err.txt
#exec 1>info.txt
count=1
while read line;
do 
	if ! [[ $line =~ ^# ]];
#    echo $line|grep -n '^#';
	#if [  $? ];
	then	
	echo "$count $line"
	count=$[count+1]
	fi
done
