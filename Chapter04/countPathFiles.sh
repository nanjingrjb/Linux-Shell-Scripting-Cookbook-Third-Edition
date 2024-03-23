#!/bin/bash

# ***************************************************************************
# * 
# * @file:countPathFiles.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-27 15:29 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 
mypath=$(echo $PATH |sed 's/:/ /g')
echo "mypath=$mypath"
count=0
for dir in "$mypath"
do
	echo "dir=$dir"
	count=$(ls "$dir"|wc -l)
	echo "$dir---$count"
	count=0
done


