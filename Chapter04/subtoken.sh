#!/bin/bash

# ***************************************************************************
# * 
# * @file:subtoken.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-08-22 10:28 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



subtoken()
{
	info=$(echo "$1")
	st="$2"
    end="$3"

	echo "$st"
	now=${info#*${st}}
	now=${now%${end}*}
	echo $now
}

subtoken "$@"
