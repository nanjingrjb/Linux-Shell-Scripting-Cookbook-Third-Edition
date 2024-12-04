#!/bin/bash

# ***************************************************************************
# * 
# * @file:ls_param_arr.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-12-05 06:43 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



if (($#!=1))
then
	echo "usage:$0 filename"
	exit 2
fi

fname=$1

declare -a myarr
myarr=($(ls -ld $fname))
for((i=0;i<${#myarr[@]};i++))
do
	printf "param %d:%s\n" "$i" "${myarr[$i]}"
done

echo "$1 size is:${myarr[4]}"

