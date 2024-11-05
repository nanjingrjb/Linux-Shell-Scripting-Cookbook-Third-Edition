#!/bin/bash

# ***************************************************************************
# * 
# * @file:ifinput.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-01 07:49 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



if [ $# -ge 3 ]
then
	echo "input number is ge 3"
elif [ $# -eq 2 ]
then
	echo "input num  is 2"
elif [ $# -eq 1 ] 
then
	echo "1"
else
	echo "no input"
fi

