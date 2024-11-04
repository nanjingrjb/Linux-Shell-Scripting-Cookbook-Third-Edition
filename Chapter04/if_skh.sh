#!/bin/bash

# ***************************************************************************
# * 
# * @file:if_skh.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-04 10:33 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



function addem()
{
	if ( (($# <= 0))||(($#>=3))) 
	then
		echo "usage $0 int1 int."
		exit
	else
		echo $(($1+$2))
	fi
}

addem $*

