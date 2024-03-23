#!/bin/bash

# ***************************************************************************
# * 
# * @file:mailaddr.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-29 16:11 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


while read line
do
echo $line|gawk '/^([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/{print $0}'
done <"$1"

echo "using grep search"
cat $1|grep -E '^([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z0-9 _\-\.]+)\.([a-zA-Z]{2,5})$'|wc -l
