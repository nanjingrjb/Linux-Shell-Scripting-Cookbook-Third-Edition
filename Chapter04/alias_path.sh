#!/bin/bash

# ***************************************************************************
# * 
# * @file:alias_path.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-05-14 09:59 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



aliaspath()
{
	if [ !  $# -eq 1 ]
	then
		echo "not enough param"
		exit
	fi
	res=$(grep -Eo  "alias $1.*" ~/.bashrc |sed 's/.*cd//g'|sed "s/'//g")
	echo "$res"
}

aliaspath "$@"

