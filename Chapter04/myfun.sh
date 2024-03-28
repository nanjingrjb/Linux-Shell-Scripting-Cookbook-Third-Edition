#!/bin/bash

# ***************************************************************************
# * 
# * @file:myfun.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-03-20 13:36 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



while read line
do
str=(${str[*]}  $line'\n')
done <"sshsj.sh"

echo "str val is:"

for i in ${str[*]}
	do
		echo -e  $i
	done
