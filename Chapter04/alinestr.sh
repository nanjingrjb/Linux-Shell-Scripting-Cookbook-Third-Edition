#########################################################################
# File Name: alinestr.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Thu Jun 15 18:08:53 2023
#########################################################################
#!/bin/bash
#!/usr/bin/env bash
# 实例文件：onebyone
#
# 从输入中一次解析一个字符
splitstr()
{
	str=$(echo $1)
	if [ -z $str ];then
		echo "usage:${0##*/} string"
	else
	for ((i=0;i<${#str};i++));do  echo ${str:$i:1};done
	fi
}
readstr()
{

while read ALINE
do
    for ((i=0; i < ${#ALINE}; i++))
    do
        ACHAR=${ALINE:i:1}
        # 在这里执行某些操作，如echo $ACHAR
        echo $ACHAR
    done
done
}

splitstr $*	
