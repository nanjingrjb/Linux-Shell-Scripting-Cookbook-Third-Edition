#!/bin/bash

# ***************************************************************************
# * 
# * @file:str2char.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-12-24 08:09 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



function str2char()
{
	string=$*

	if [ $# -lt 1 ];then
		echo "usage:$0 string."
		exit

	fi

	for ((i=0;i<${#string};i++))
    do
		echo ${string:$i:1}
	done
}

str2char $*
