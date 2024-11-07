#!/bin/bash

# ***************************************************************************
# * 
# * @file:showfileline.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-03-29 07:21 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



showfileline()
{
	filename=$1
	echo $1
	count=1
	if [ -z "$filename" -o -d "$filename" ]
	then
		echo "usage :$0 filename"
	else
		while read line
		do
			echo "line $count= $line"
			count=$[ $count +1 ]
		done< $filename
	fi
}
showfileline  "$@"

echo "$@"
