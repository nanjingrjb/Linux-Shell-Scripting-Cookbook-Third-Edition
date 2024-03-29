#!/bin/bash

# ***************************************************************************
# * 
# * @file:arr_append.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-03-29 08:38 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



arr_append()
{
	old="$1"
	new="$2"

	for i in ${new[*]}
	do
		old=(${old[*]  $i})
	done
	echo ${old[*]}
}

arr_append "$*"
