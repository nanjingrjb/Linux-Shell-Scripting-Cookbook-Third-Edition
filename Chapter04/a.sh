#!/bin/bash

# ***************************************************************************
# * 
# * @file:a.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-03-28 15:59 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 
echo "this is a test for vim "

echo "input your name"
read name

echo "input your age"
read age

if [ $age -gt 40 ] 
then 
	echo "$name,old man."
else
	echo "$name,young man."
fi

echo "end of judge.this is an end if you find."





