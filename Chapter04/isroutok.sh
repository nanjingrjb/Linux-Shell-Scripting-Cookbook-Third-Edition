#!/bin/bash

# ***************************************************************************
# * 
# * @file:isroutok.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-08-18 10:18 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


isrouteok()
{
	set -x
   des="$1"
    if [ -z $des ];then
		echo "usage: $0 ip "
	else
   ping  -w 2 "$des" > /dev/null
   if [[ "$?" == 0 ]];then
	   echo 1
   else
	   echo 0
   fi
   set +x
	fi
}

res=$(isrouteok "$@")
if [[ $res == 1 ]];then
	echo "you can visit $1."
else
	echo "$1 no  found."
fi
