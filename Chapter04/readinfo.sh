#!/bin/bash

# ***************************************************************************
# * 
# * @file:readinfo.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-28 08:09 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 




while read name age addr
do
	echo "$name,$age,$addr"
done <info
