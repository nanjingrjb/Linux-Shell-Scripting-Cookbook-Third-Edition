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
cflag=
dflag=
while getopts 'ab:c:d' OPTION
do
    case $OPTION in
        a) aflag=1
echo $OPTIND 
           ;;
        d) dflag=1
echo $OPTIND 
           ;;
        b) bflag=1
echo $OPTIND 
           bval="$OPTARG"
           ;;
        c) cflag=1
echo $OPTIND 
           cval="$OPTARG"
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

if [ "$dflag" ]
then
    printf "Option -d specified\n"
fi
if [ "$bflag" ]
then
    printf 'Option -b "%s" specified\n' "$bval"
fi
if [ "$cflag" ]
then
    printf 'Option -c "%s" specified\n' "$cval"
fi
    printf 'Remain parm  "%s" \n' "$*"
