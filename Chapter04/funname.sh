#!/bin/bash

# ***************************************************************************
# * 
# * @file:funname.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-10-28 17:58 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 




echo "input name is :$0"
echo "parm len is :$#"
if [ $# -eq 2 ]
then
	echo "parm is $1,$2"
	elif [ $# -ge 3 ]
	then 
	echo "cnt over 3"
    else
	echo "cnt <2"
fi
