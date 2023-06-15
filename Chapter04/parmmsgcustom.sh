#########################################################################
# File Name: parmmsgcustom.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Thu Jun 15 07:53:01 2023
#########################################################################
#!/bin/bash
#!/usr/bin/env bash
# 实例文件：getopts_custom
#
# 解析参数时使用自定义错误消息
#
aflag=
bflag=
# 因为不想getopts生成错误消息，
# 而是希望该脚本输出自己的错误消息，
# 所以我们在选项列表前加上':'，使得getopts保持静默
while getopts :ab: FOUND
do
    case $FOUND in
        a) aflag=1
           ;;
        b) bflag=1
           bval="$OPTARG"
            ;;
        \:) printf "argument missing from -%s option\n" $OPTARG
            printf "Usage: %s: [-a] [-b value] args\n" ${0##*/}
            exit 2
            ;;
        \?) printf "unknown option: -%s\n" $OPTARG
            printf "Usage: %s: [-a] [-b value] args\n" ${0##*/}
            exit 2
            ;;
        esac >&2
    done
shift $(($OPTIND - 1))

if [ "$aflag" ]
then
    printf "Option -a specified\n"
fi
if [ "$bflag" ]
then
    printf 'Option -b "%s" specified\n' "$bval"
fi
printf "Remaining arguments are: %s\n" "$*"

