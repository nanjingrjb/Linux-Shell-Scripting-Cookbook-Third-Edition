#########################################################################
# File Name: dashout.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Mon Jun 12 18:27:01 2023
#########################################################################
#!/bin/bash
#!/usr/bin/env bash
# 实例文件：dash
# dash - 输出一行连字符
# 参数：字符数量（默认72个）
# -c X用字符X代替连字符
#
function usagexit ( )
{
    printf "usage: %s [-c X] [#]\n" ${0##*/}
    exit 2
} >&2

LEN=72                                        
CHAR='-'
while (( $# > 0 ))                  
do
    case $1 in
    [0-9]*) LEN=$1;;                
    -c) shift                       
        CHAR=$1;;
    *) usagexit;;                   
    esac
    shift
done

if (( LEN > 4096 ))                 
then
    echo "too large" >&2
    exit 3
fi

# 构建指定长度的字符串
DASHES=""
for ((i=0; i<LEN; i++))
do
    DASHES="${DASHES}${CHAR}"
done
printf "%s\n" "$DASHES"

