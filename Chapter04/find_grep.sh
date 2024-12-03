#!/bin/bash

# ***************************************************************************
# * 
# * @file:find_grep.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-12-02 08:11 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


dir="$1"
key="$2"
if [ $# -lt 2 ]
then
	echo "usage $0 :dir,key"
	exit
else
find "$dir" -type f -name '*.sh' -exec grep -cl "$key" '{}' \;
fi
