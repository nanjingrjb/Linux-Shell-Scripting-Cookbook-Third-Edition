#!/bin/bash

# ***************************************************************************
# * 
# * @file:ifthen.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-12-08 13:06 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

if (($# < 1 || $# > 1));then
	echo "usage:$0 int "
	exit 2
fi 

a=$1
if (($a>10));then
	echo "over 10";
elif (($a>7));then
	echo "between 7 and 10";
elif (($a>5));then
	echo "between 5 and 7";
elif (($a>=0));then
	echo "between 0 and 5";
else
	echo "neg";
fi

