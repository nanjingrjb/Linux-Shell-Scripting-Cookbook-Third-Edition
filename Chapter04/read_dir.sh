#!/bin/bash

# ***************************************************************************
# * 
# * @file:read_dir.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-26 13:56 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

cnt=0
while read line
do 
	echo "$cnt:  $line"
	cnt=$[cnt+1]
	echo "dir content :"
	ls "$line"|wc -l
done <"$1"
