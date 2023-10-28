#!/bin/bash

# ***************************************************************************
# * 
# * @file:rmmiss.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-27 06:50 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



cp dir.txt dir_back.txt
while read miss
do
	echo "miss=$miss"
	var=${miss##*/}
	echo "var=$var"
	sed -i  "/$var/d" dir.txt
done< misspath.txt
