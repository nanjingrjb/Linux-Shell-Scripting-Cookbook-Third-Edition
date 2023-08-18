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
   ping -c 10 -w 2 "$des" > /dev/null
   if [[ "$?" == 0 ]];then
	   echo "$des route ok."
   else
	   echo "$des route failed."
   fi
   set +x
	fi
}

isrouteok "$@"
