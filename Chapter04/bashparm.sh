#########################################################################
# File Name: bashparm.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Thu Jun 15 06:18:39 2023
#########################################################################
#!/bin/bash
#!/usr/bin/env bash
# 实例文件：getopts_example
#
# getopts用

#
aflag=
bflag=
while getopts 'ab:' OPTION
do
    case $OPTION in
        a) aflag=1
           ;;
        b) bflag=1
           bval="$OPTARG"
           ;;
        ?) printf "Usage: %s: [-a] [-b value] args\n" ${0##*/} >&2
           exit 2
           ;;
    esac
done
echo $OPTIND 
shift $(($OPTIND - 1))
#shift $(($OPTIND - 1))

if [ "$aflag" ]
then
    printf "Option -a specified\n"
fi
if [ "$bflag" ]
then
    printf 'Option -b "%s" specified\n' "$bval"
fi
printf "Remaining arguments are: %s\n" "$*"

