#!/bin/bash

# ***************************************************************************
# * 
# * @file:parse_varname_arr.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-12-12 06:12 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

function parse()
{
	local arr=($*)

local n=0
for i in "${arr[@]}"
do
	echo "$i=${!arr[$n]}"
	n=$((n+1))
done
}


for i  in ${!BASH*};
do
	eval 'var=${i}';
	echo "$var=${!var}";
done;

echo "parse arr_var_name"
arr=(v1 v2 v3)
v1=1
v2=2
v3=3
parse ${arr[*]}	
v1=11
v2=21
v3=31
parse ${arr[*]}	
