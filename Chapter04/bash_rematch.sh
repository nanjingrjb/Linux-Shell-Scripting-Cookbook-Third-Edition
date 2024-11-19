#!/bin/bash

# ***************************************************************************
# * 
# * @file:bash_rematch.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-19 07:59 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



#采用=~进行正则表达式的判断
#采用分组来解析属性和属性值
#

declare -A configs
while read line
do
    [[ -z $line || $line =~ ^#.* ]] && continue;
	if [[ $line =~ ^\[(.*)\] ]];then
		user=${BASH_REMATCH[1]}
	elif [[ $line =~ (.*)=(.*) ]];then
		key=${BASH_REMATCH[1]}
		val=${BASH_REMATCH[2]}
		configs[${user}_${key}]=$val
	fi
done <comcfg.cfg

# 打印所有键和值
echo "All configurations:"
for key in "${!configs[@]}"; do
    echo "$key=${configs[$key]}"
done

#得到输入的查询结果
user=$1
key=$2
echo "${user}_${key}=${configs[${user}_${key}]}"


